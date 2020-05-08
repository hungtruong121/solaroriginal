<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="installation" value="설치신청"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section process-content-wrap">
        <div class="section-content process-content">
           <div class="tabs-wrap">
                <ul class="tabs">
                    <li><a href="#tab1" class="on">설치 과정</a></li>
                    <li><a href="#tab2">설치 사례</a></li>
                </ul>
                <div class="panels">
                    <div class="panel" id="tab1">
                        <div class="mobile-title-wrap">
                            <h2 class="content-title">설치 과정 (거치형)</h2>
                            <span class="black-bar"></span>
                        </div>
                        <div class="process-inner mb-content">
                            <div class="item1">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case1-1.png" alt="설치 1단계">
                                <div>
                                    <div>
                                        <b>1</b>
                                        <p>태양광모듈에 추락방지로프를 연결한 후<br> 난간에 거치합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item2">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case1-2.png" alt="설치 2단계">
                                <div>
                                    <div>
                                        <b>2</b>
                                        <p>모듈거치대 상단과 난간을 결속한 후 안전성<br> 강화를 위해 추가로 STS Band를 체결합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item3">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case1-3.png" alt="설치 3단계">
                                <div>
                                    <div>
                                        <b>3</b>
                                        <p>모듈거치대 하단과 난간을 결속합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item4">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case1-4.png" alt="설치 4단계">
                                <div>
                                    <div>
                                        <b>4</b>
                                        <p>거치대에 인버터를 조립하고, 태양광모듈과<br> 연결합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item5">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case1-5.png" alt="설치 5단계">
                                <div>
                                    <div>
                                        <b>5</b>
                                        <p>인버터와 연결된 전기플러그를 가정용 콘센트에 꽂아 전력을 공급합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item5">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case1-6.png" alt="설치 6단계">
                                <div>
                                    <div>
                                        <b>6</b>
                                        <p>설치 완료 후 자가점검 방법 등 기본적인<br> 사항에 대해 설명 드립니다.</p>
                                    </div>
                                </div>
                            </div>
                            <p class="sources">※ 보급업체 별 제품에 따라서 설치과정이 상이할 수 있습니다.</p>
                        </div>
                        <div class="mobile-title-wrap">
                            <h2 class="content-title">설치 과정 (앵커형)</h2>
                            <span class="black-bar"></span>
                        </div>
                        <div class="process-inner">
                            <div class="item1">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case2-1.png" alt="설치 1단계">
                                <div>
                                    <div>
                                        <b>1</b>
                                        <p>태양광모듈, 인버터 등 설치에 필요한 자재를<br> 준비합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item2">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case2-2.png" alt="설치 2단계">
                                <div>
                                    <div>
                                        <b>2</b>
                                        <p>설치할 옥상 바닥면과 지지대 결합을 위한<br> 타공 작업을 실시합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item3">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case2-3.png" alt="설치 3단계">
                                <div>
                                    <div>
                                        <b>3</b>
                                        <p>지지대와 태양광 모듈을 옥상지면에 견고하게 결속합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item4">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case2-4.png" alt="설치 4단계">
                                <div>
                                    <div>
                                        <b>4</b>
                                        <p>지지대에 인버터를 조립하고, 태양광모듈과<br> 연결합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item5">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case2-5.png" alt="설치 5단계">
                                <div>
                                    <div>
                                        <b>5</b>
                                        <p>전기 배선정리 및 방수작업을 수행합니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="item5">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/case-2-6.png" alt="설치 6단계"> <!-- 2019-06-17 -->
                                <div>
                                    <div>
                                        <b>6</b>
                                        <p>설치가 완료된 모습입니다.</p>	
                                    </div>
                                </div>
                            </div>
                            <p class="sources">※ 보급업체 별 제품에 따라서 설치과정이 상이할 수 있습니다.</p>
                        </div>
                    </div>
                    <div class="panel" id="tab2">
                        <div class="mobile-title-wrap">
                            <h2 class="content-title">설치 사례</h2>
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
                                   <p>동대문구 홍릉동부아파트</p> <!-- 2019-06-17 -->
                                </div>
                            </div>
                            <p class="sources">자료: 서울시 기후 환경본부</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
