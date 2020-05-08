<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content2">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            설치사례
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>태양광지원센터</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>설치사례</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-miniPower.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section process-content-wrap">
        <div class="section-content process-content">
           <button class="top-button">up</button>
            <div class="sub-title-wrap">
                <h2 class="content-title">베란다형 태양광 미니 발전소 설치 과정</h2>
                <span class="black-bar"></span>
            </div>
            <div class="process-inner">
                <div class="item1">
                    <div>
                        <b>1</b>
                        <p>모듈과 거치대를 조립합니다.</p>
                    </div>
                </div>
                <div class="item2">
                    <div>
                        <b>2</b>
                        <p>거치대를 장착한 모듈을 안전줄로<br>난간과 연결한 후 난간 상단에 걸칩니다.</p>
                    </div>
                </div>
                <div class="item3">
                    <div>
                        <b>3</b>
                        <p>상단에 걸쳐진 모듈판과 난간을<br>U볼트로 결합합니다.</p>
                    </div>
                </div>
                <div class="item4">
                    <div>
                        <b>4</b>
                        <p>모듈과 인버터를 연결합니다.</p>
                    </div>
                </div>
                <div class="item5">
                    <div>
                        <b>5</b>
                        <p>설치가 모습입니다.</p>
                    </div>
                </div>
                <p class="sources">자료: 서울시민 햇빛발전 협동조합</p>
            </div>
        </div>
    </div>
    <div class="section case-content-wrap">
        <div class="section-content case-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">베란다형 태양광 미니 발전소 설치 사례</h2>
                <span class="black-bar"></span>
            </div>
            <div class="case-inner">
                <div class="item1">
                    <div>
                       <b>0</b>
                        <p>강남구 대치동 대치 1단지</p>
                    </div>
                </div>
                <div class="item2">
                    <div>
                       <b>0</b>
                        <p>동대문구 제기동 제기이수브라운스톤</p>
                    </div>
                </div>
                <div class="item3">
                    <div>
                       <b>0</b>
                        <p>종로구 창신동 두산아파트</p>
                    </div>
                </div>
                <div class="item4">
                    <div>
                       <b>0</b>
                        <p>서대문구 수색로 신일해피트리 아파트</p>
                    </div>
                </div>
                <div class="item5">
                    <div>
                       <b>0</b>
                        <p>종로구 창신동 두산아파트</p>
                    </div>
                </div>
                <div class="item6">
                    <div>
                       <b>0</b>
                        <p>성동구 아차산로 신한드림빌</p>
                    </div>
                </div>
                <p class="sources">자료: 서울시 기후 환경본부</p>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>