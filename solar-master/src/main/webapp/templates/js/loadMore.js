/*****************************************
 * LOAD MORE
 * ***************************************
 * @author ThanhHP
 * ***************************************
/*****************************************/
$.fn.scrollStopped = function(callback) {
	var that = this, $this = $(that);
	$this.scroll(function(ev) {
		clearTimeout($this.data('scrollTimeout'));
		$this.data('scrollTimeout', setTimeout(callback.bind(that), 250, ev));
	});
};
$(".loadContent").slice(0, perPage).show();
if ($(window).scrollTop() + $(window).height() > $(document).height() - 100) {
	if ($(".loadContent:hidden").length != 0) {
		$(".loadContent:hidden").slice(0, perPage).slideDown();
	}
}
$(window).scrollStopped(function(ev) {
	if ($(window).scrollTop() + $(window).height() > $(document)
			.height() - 100) {
		if ($(".loadContent:hidden").length != 0) {
			$(".loadContent:hidden").slice(0, perPage).slideDown();
		}
	}

});