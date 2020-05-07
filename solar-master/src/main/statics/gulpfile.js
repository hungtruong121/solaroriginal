var gulp = require('gulp'),
    sass = require('gulp-sass'),
    common = require('gulp-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    fileinclude = require('gulp-file-include'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglify'),
    jshint = require('gulp-jshint'),
    cssnano = require('gulp-cssnano'),
    rename = require('gulp-rename'),
    babel = require('gulp-babel'),
    wait = require('gulp-wait'),
    browserSync = require('browser-sync').create();

var paths = {
    src: './src',
    dist: './dist',
    Mobiledist: './dist/mobile',

    bundlesCss: './dist/css',
    bundlesJs: './dist/js',
    MobilebundlesCss: './dist/mobile/css',
    MobilebundlesJs: './dist/mobile/js',
    fonts: './dist/fonts',
    img: './dist/img',
    vendor: './dist/lib',
    js: './src/js',
    scss: './src/scss',
    Mobilejs: './src/mobile/js',
    Mobilescss: './src/mobile/scss',
    srcimg: './src/img',

    views: './src/views',
    Mobileviews: './src/mobile/views',
    temp: './src/temp',
    Mobiletemp: './src/mobile/temp',

    node: './node_modules'
};

gulp.task('copy_assets', function () {

    gulp.src(paths.node + '/jquery/**/*')
        .pipe(gulp.dest(paths.vendor + '/jquery'));

    return gulp.src(paths.node + '/font-awesome/fonts/*.{ttf,woff,woff2,eot,svg}')
        .pipe(gulp.dest(paths.fonts));
});

gulp.task('sass', function () {
    return gulp.src([
        paths.scss + '/modules/*.scss'
    ])
        .pipe(wait(1000))
        .pipe(sass({
            outputStyle: 'expanded',
            indentType: 'space',
            indentWidth: 2
        }))
        .pipe(autoprefixer({
            browsers: ['last 10 versions']
        }))
        .pipe(concat('style.css'))
        .pipe(gulp.dest(paths.bundlesCss))
});

gulp.task('common', function () {
    return gulp.src([
        paths.scss + '/partials/*.scss'
    ])
        .pipe(wait(1000))
        .pipe(sass({
            outputStyle: 'expanded',
            indentType: 'space',
            indentWidth: 2
        }))
        .pipe(autoprefixer({
            browsers: ['last 10 versions']
        }))
        .pipe(concat('common.css'))
        .pipe(gulp.dest(paths.bundlesCss))
});

gulp.task('Mobilesass', function () {
    return gulp.src([
        paths.Mobilescss + '/modules/*.scss'
    ])
        .pipe(wait(1000))
        .pipe(sass({
            outputStyle: 'expanded',
            indentType: 'space',
            indentWidth: 2
        }))
        .pipe(autoprefixer({
            browsers: ['last 10 versions']
        }))
        .pipe(concat('style.css'))
        .pipe(gulp.dest(paths.MobilebundlesCss))
});

gulp.task('Mobilecommon', function () {
    return gulp.src([
        paths.Mobilescss + '/partials/*.scss'
    ])
        .pipe(wait(1000))
        .pipe(sass({
            outputStyle: 'expanded',
            indentType: 'space',
            indentWidth: 2
        }))
        .pipe(autoprefixer({
            browsers: ['last 10 versions']
        }))
        .pipe(concat('common.css'))
        .pipe(gulp.dest(paths.MobilebundlesCss))
});

gulp.task('jshint', function () {
    return gulp.src(paths.js + '/*.js')
        .pipe(jshint({
            esversion: 6
        }))
        .pipe(jshint.reporter('default'));
});

/*
gulp.task('babeljs', ['jshint'], function () {
    return gulp.src(paths.js + '/*.js')
        .pipe(babel())
        .pipe(gulp.dest(paths.temp + '/babeljs'));
});
*/

gulp.task('js', function () {
    return gulp.src([
        paths.js + '/*.js'
    ])
        .pipe(gulp.dest(paths.bundlesJs))
});

gulp.task('Mobilecommonjs', function () {
    return gulp.src([
        paths.Mobilejs + '/*.js'
    ])
        .pipe(gulp.dest(paths.MobilebundlesJs))
});

gulp.task('htmlinclude', function () {
    gulp.src([paths.views + '/*.html'])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: '@file'
        }))
        .pipe(gulp.dest(paths.dist));
});

gulp.task('Mobilehtmlinclude', function () {
    gulp.src([paths.Mobileviews + '/*.html'])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: '@file'
        }))
        .pipe(gulp.dest(paths.Mobiledist));
});


/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

var tasks = ['copy_assets', 'htmlinclude', 'jshint', 'js', 'sass', 'common', 'Mobilehtmlinclude', 'Mobilesass', 'Mobilecommon', 'Mobilecommonjs'];

var main = function () {

    // Run server
    browserSync.init({
        server: "./dist"
    });

    // Run registerd tasks
    gulp.watch([
        paths.views + '/*.html',
        paths.views + '/*/*.html',
        paths.views + '/*/*/*.html'
    ], {
        cwd: './'
    }, ['htmlinclude']);

    gulp.watch([
        paths.Mobileviews + '/*.html',
        paths.Mobileviews + '/*/*.html',
        paths.Mobileviews + '/*/*/*.html'
    ], {
        cwd: './'
    }, ['Mobilehtmlinclude']);

    gulp.watch([paths.js + '/*.js'], {
        cwd: './'
    }, ['js']);

    gulp.watch([paths.Mobilejs + '/*.js'], {
        cwd: './'
    }, ['Mobilecommonjs']);

    gulp.watch([
        paths.scss + '/modules/*.scss',
        paths.scss + '/modules/*/*.scss',
        paths.scss + '/modules/*/*/*.scss'
    ], {
        cwd: './'
    }, ['sass']);

    gulp.watch([
        paths.scss + '/partials/*.scss',
        paths.scss + '/partials/*/*.scss',
        paths.scss + '/partials/*/*/*.scss'
    ], {
        cwd: './'
    }, ['common']);

    gulp.watch([
        paths.Mobilescss + '/modules/*.scss',
        paths.Mobilescss + '/modules/*/*.scss',
        paths.Mobilescss + '/modules/*/*/*.scss'
    ], {
        cwd: './'
    }, ['Mobilesass']);

    gulp.watch([
        paths.Mobilescss + '/partials/*.scss',
        paths.Mobilescss + '/partials/*/*.scss',
        paths.Mobilescss + '/partials/*/*/*.scss'
    ], {
        cwd: './'
    }, ['Mobilecommon']);

    // Hot reload
    gulp.watch([
        paths.dist + '/*.html',
        paths.bundlesCss + '/*.css',
        paths.bundlesJs + '/*.js'
    ]).on('change', browserSync.reload);

};

gulp.task('default', tasks, main);
gulp.task('watch', tasks, main);