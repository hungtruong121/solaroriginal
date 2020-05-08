<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="qna" value="자주하는 질문"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section qna-content-wrap">
        <div class="section-content qna-content">
            <div class="tabs-wrap">
                <div class="tabs">
                    <div class="tabs-content">
                        <div class="tabs-icon-wrap swiper-container">
                            <ul class="swiper-wrapper">
                                 <li class="tabs-icon swiper-slide"><a href="#tab1" class="on tab">#전체</a></li>
                                <li class="tabs-icon swiper-slide"><a href="#tab2"  class="tab">#원리와 구성</a></li>
                                <li class="tabs-icon swiper-slide"><a href="#tab3"  class="tab">#절감효과</a></li>
                                <li class="tabs-icon swiper-slide"><a href="#tab4"  class="tab">#설치방법</a></li>
                                <li class="tabs-icon swiper-slide"><a href="#tab5"  class="tab" >#사후관리</a></li>
                                <li class="tabs-icon swiper-slide"><a href="#tab6"  class="tab">#안전성</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                 <div class="qna-item-wrap">
                    <div class="panel qna-item on" id="tab1">
                        <ul>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 태양광 미니발전소란 무엇인가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 미니발전소란, 태양광 발전기를 가정의 베란다 (50W~1kW 미만), 주택옥상 (1kW~3kW 이하) 또는 일반 건물의 옥상(3kW 초과)에 설치할 수 있는 크기로 제작한 것입니다. 서울시는 이 미니태양광을 전국 최초로 제작하여 햇빛이 닿는 자투리 공간 어디든 태양광 발전이 가능하도록 하였습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 어떻게 구성되어 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 미니발전소는 태양광 모듈, 마이크로인버터, 전력량 계측기로 이루어져 있습니다. 
- 태양광 모듈 : 태양광 셀에 햇빛을 쬐어주면 광전효과를 통해 직류전기(DC)를 만듭니다. 
- 마이크로인버터 : 생산된 직류전기(DC)를 가정에서 사용하는 220V 교류전기(AC)로 바꾸어줍니다. 
- 전력량 계측기 : 변환된 교류전기(AC)의 실시간 발전량과 누적 발전량을 보여줍니다</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 어디에 연결하나요? 사용하고 싶은 전기용품에 꽂아 사용하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형은 가정용 일반 콘센트에 꽂아 사용합니다. 태양광으로 발전된 전기는 콘센트를 통해 한국전력에서 공급받은 전기와 병행하여 쓰입니다. 태양광으로 발전된 전기로 인해 계량기가 천천히 도는 원리로 전기요금을 줄일 수 있습니다. <br><br> (주택․건물형) 주택형이나 건물형의 경우 전기배선작업을 진행하며, 상계처리가 가능하므로 한전으로 역전송되는 전기량을 계량하기 위해 별도의 계량기를 설치합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 쓰고 남은 전기는 판매할 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 한전에 판매되는 방식이 아니며, 전량 실시간으로 소비됩니다. 그렇기 때문에 낮에 집을 비우더라도 계속 가동되는 <br>냉장고나, 대기전력 소모에 대응이 가능합니다. <br>(주택․건물형) 주택형이나 건물형의 경우에도 실시간으로 소비되나, 쓰고 남은 전기에 대해서는 <br> 베란다형과 달리 상계처리가 가능합니다. <br>※ 상계처리 : 태양광을 설치한 수용가가 생산한 전력량만큼을 전기요금에서 내지 않도록 해주는 거래</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 저장했다가 밤에도 쓸 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">베란다형, 주택형, 건물형 모두 전기가 저장된 후 소비되는 방식이 아닌 태양광으로 발전된 전기가 우선적으로 사용되고 부족한 전기는 한전전기를 병행하여 사용하는 방식입니다. 즉, 밤에는 발전이 되지 않으므로 낮에만 사용 가능합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 날씨가 흐린날에는 어떡하죠?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">비가 오거나 날씨가 흐린 날에는 발전 효율이 저하됩니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 수명은 얼마나 되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 발전모듈의 수명(제조 시점에서 성능이 20% 하락하는 기간)은 15~20년 정도이며, 인버터의 경우 7~10년 정도입니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[절감효과]</b> 한달에 얼마나 생산되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형의 경우 260W 한 장 설치 시 월 평균 25kWh 가량의 전기를 생산합니다. 이는 900ℓ짜리 양문형 <br> 냉장고를 한 달가량, 또는 여름철 에어컨(벽걸이형)을 매일 1시간 가동 가능한 전기량입니다. <br> ※ 25kWh = 260W × 3.2시간(서울지역 하루 평균 일조시간) × 30일 <br><br> (주택․건물형) 주택형이나 건물형의 경우, 3kW 설치 시 월 평균 288kWh 가량의 전기를 생산합니다. <br> ※ 288kWh = 3kW × 3.2시간(서울지역 하루 평균 일조시간) × 30일</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[절감효과]</b> 전기요금 얼마나 절감되나요? 회수기간은 어떻게 되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형의 경우 260W 설치 시 현행(’18.3월) 전기요금 기준 5,350원 가량 절감되며, 회수기간은 약 2.6년입니다. <br> ※ 5,350원 = 45,250원(304kWh 사용시 전기료) – 39,900원(25kWh 절감시 전기료) <br> ※ 서울시 월평균 전기사용량(’17년 기준) = 304kWh. <br><br> (주택형) 주택형의 경우 월 500kWh 사용 가구에서 3kW 설치 시 현행 전기요금 기준 78,550원 가량 절감되며, 회수기간은 <br> 약 3.8년입니다. <br> ※ 78,550원 = 104,140원(500Wh 사용시 전기료) – 25,590원(288kWh 절감시 전기료)</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 저희집은 남향이 아닌데, 설치 가능할까요? 1층도 설치 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">물론 가능합니다. 다만, 남향과 비교하여 남동향, 남서향을 바라보는 태양광 미니발전소의 경우 발전량(kWh)이 다소 줄어듭니다. 최대출력이 발생하는 시간과 출력치 또한 다르게 나타납니다. 또한, 1~3층과 같이 저층부인 경우 발전량(kWh)이 떨어질 수 있습니다. <br>설치 사전상담 시 설치 가능여부를 진단할 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 베란다형을 설치하고 싶은데요. 어떤 형태의 베란다라도 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">업체에 따라 설치가 가능한 베란다의 길이, 구조가 다릅니다. 설치 전 업체와 구체적인 상담을 통하여 설치여부를 확인할 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 저희 집은 빌라인데요. 베란다형은 아파트에만 설치 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">빌라형태나 일반 건물인 경우도 거치가 가능한 난간이 있으면 가능합니다만, 1~2층같은 저층에는 발전효율이 떨어지기 때문에 추천해드리지 않습니다. 이런 경우 콘솔형으로 설치가 가능한데, 이때 공동사용부문에 대한 주민 사전협의가 필요할 것으로 보입니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 베란다형 설치하는데 오래 걸리나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">설치시간은 오래 걸리지 않습니다. 1시간~1시간 30분정도 소요되는 간단한 작업입니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 베란다형 설치 시 창호 일부에 손상이 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">에어컨 실외기가 기설치된 경우 확보된 통로를 이용하여 전선이 들어오게 됩니다. <br>극소수의 곳은 일부 절개가 있을 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 세입자인 경우에도 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">주택소유자뿐만 아니라 세입자인 경우에도 가능합니다. 다만, 벽체 구멍 뚫기 등이 필요한 경우에는 <br> 주택소유자와 세입자간 사전협의가 필요할 것으로 보입니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 아파트 관리사무소에서 반대할 경우에는 어떡하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">현 규정상 미니태양광은 외부 돌출물로 분류되어, 관리주체의 동의가 필요합니다. <br>※ 관련근거 : 공동주택관리법 시행령 제19조제2항제5호 <br> - 발코니 난간 또는 외벽에 에어컨 실외기 등 돌출물 설치 시 관리주체 동의 필요</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 설치비는 어느 정도 되나요? 제품은 어디서 볼 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 260W 한 장 설치 시 ’18년 기준 534,000원~670,000원 선입니다. 선정된 보급업체와 제품 정보는 www.sunnyseoul.com , 서울시 홈페이지(http://www.seoul.go.kr) 및 서울시 햇빛지도 홈페이지 (http://solarmap.seoul.go.kr)를 통해 열람 가능합니다. <br><br> (주택․건물형) 현재 보급업체 선정 및 지원 계획 수립 중에 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 설치 신청하려면 어디로 연락하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">PC나 모바일로 www.sunnyseoul.com에 접속하시면 설치 신청부터 A/S 신청까지 간편하고 쉽게 사용 가능합니다. <br> 홈페이지 사용이 어려우신 경우 서울에너지공사 태양광 콜센터에 전화 접수 (☎1566-0494, 월~금 09:00~21:00, 공휴일 제외) <br> 하실 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 설치비가 조금 부담되는데, 서울시에서 보조금은 얼마나 지원하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형의 경우 260W 한 장 설치 시 ’18년 기준 364,000원, 520W 설치 시 712,000원을 지원합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 저는 OO구인데요. 구에서도 따로 보조금을 지원하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">현재 서울시 25개 자치구에서도 추가 보조금을 5~10만원 선에서 지원하고 있습니다. <br>서울시와 마찬가지로 선착순으로 마감되기 때문에 구보조금을 받으시려는 경우 각 구청 환경과<br> 또는 에너지부서로 잔여 물량을 문의하셔야 합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 보조금 지급절차는 어떻게 되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">서울시 선정 보급업체를 통해 태양광 미니발전소를 설치하신 후, 업체에 자부담금만 납부하시면 됩니다. <br> 시민편의성 증대와 행정간소화를 위해 설치확인 이후, 보급업체에서 보조금 지급 절차를 대리 수행합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 한 가구에서 복수신청이 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 가능합니다. 하지만 보조금 지급은 누적으로 산정됩니다. <br><br>ex) (1차) 260W 설치 364,000원 = (260W × 1,400원/W)+ (2차) 260W 추가설치 348,000원 = (240W × 1,400원/W) <br> + (20W × 600원/W)계 : 520W 설치 712,000원※ ’18년 보조금 기준 <br><br>(주택․건물형) 현재 보조금 지원 계획 수립 중에 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 서울에너지공사에 태양광지원센터가 생겼다던데, 하는 일이 무엇인가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">서울에너지공사 태양광지원센터는 ‘태양광 생애주기 원스톱 서비스’를 제공하고 있는데요. <br>상담부터 설치 신청, 사후관리까지 미니태양광의 전 과정에 걸쳐 서비스를 제공합니다. <br>태양광 지원총괄센터를 중심으로 태양광 콜센터와 5개의 권역센터를 운영하고 있습니다. <br>※ 도심권센터(종로), 동북권센터(노원), 동남권센터(송파), 서북권센터(은평), 서남권센터(동작)</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 인터넷 신청도 가능한가요? 콜센터 전화번호가 어떻게 돼요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">홈페이지 주소는 www.sunnyseoul.com 입니다. 인터넷과 모바일로 접속하실 수 있으며, 설치신청부터 A/S신청까지 홈페이지를 통해 가능합니다. 태양광 콜센터 번호는 1566-0494입니다. 월~금(공휴일 제외), 09:00~21:00 운영합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 어떤 관리가 필요한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 모듈은 통상 15~20년동안 사용이 가능하며 특별한 관리가 필요없습니다만, 눈 또는 새 배설물이 쌓여있는 경우에는 <br> 더 나은 발전 효율을 위하여 부드러운 천으로 닦아주시면 좋습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 철거하고 싶은데 어떡하죠?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">PC나 모바일로 접속하여(www.sunnyseoul.com) 철거 신청하실 수 있으며, 해당 구청장의 승인이 필요한 사항으로 구청에 <br> 신고하셔야 합니다. 다만, 설치 확인일로부터 5년 이내에 임의 철거할 경우 보조금이 환수됩니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 이사를 가는데, 가지고 갈 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">가능합니다. 다만, 이전 설치 비용이 10만원 정도 소요되며, 설치 확인일로부터 5년 이내에 <br> 이전할 경우 해당 구청에 신고가 필요합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 고장이 났는데요. A/S 가능한가요? 어디로 신청하면 될까요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">설치확인일로부터 5년 이내 고장이 날 경우, 무상 A/S가 가능합니다. PC나 모바일로 접속하여(www.sunnyseoul.com) <br> A/S 신청하실 수 있으며, 설치하신 업체를 통해 A/S가 이루어집니다. 보증기간 이후에 발생되는 수리비용은 소유자가 부담하게 됩니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[안전성]</b> 바람에 안전한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">건축물에 대한 태풍의 영향을 고려했을 때의 현재 서울시 기본풍속은 26m/s, 울릉도 40m/s, 제주도 44m/s입니다. <br> 베란다형 미니태양광의 경우 내풍압(50m/s) 시험 성능 검사를 실시하도록 하고 있으며 이 시험에서 적합한 판정을 받은 제품만 <br> 보급됩니다.</li>
                                </ul>
                            </li>
                            <li class="last-item">
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[안전성]</b> 베란다형은 콘세트에 꽂는다고요? 감전위험은 없나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">콘센트에서 플러그를 제거할 경우 인버터에서 전기가 자동차단되므로 전기가 출력되지 않아 감전 위험은 없습니다. 다만, 젖은 손으로 콘센트에 플러그를 꽂지 말아주세요.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="panel qna-item" id="tab2">
                        <ul>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 태양광 미니발전소란 무엇인가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 미니발전소란, 태양광 발전기를 가정의 베란다 (50W~1kW 미만), 주택옥상 (1kW~3kW 이하) 또는 일반 건물의 옥상(3kW 초과)에 설치할 수 있는 크기로 제작한 것입니다. 서울시는 이 미니태양광을 전국 최초로 제작하여 햇빛이 닿는 자투리 공간 어디든 태양광 발전이 가능하도록 하였습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 어떻게 구성되어 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 미니발전소는 태양광 모듈, 마이크로인버터, 전력량 계측기로 이루어져 있습니다. 
- 태양광 모듈 : 태양광 셀에 햇빛을 쬐어주면 광전효과를 통해 직류전기(DC)를 만듭니다. 
- 마이크로인버터 : 생산된 직류전기(DC)를 가정에서 사용하는 220V 교류전기(AC)로 바꾸어줍니다. 
- 전력량 계측기 : 변환된 교류전기(AC)의 실시간 발전량과 누적 발전량을 보여줍니다</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 어디에 연결하나요? 사용하고 싶은 전기용품에 꽂아 사용하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형은 가정용 일반 콘센트에 꽂아 사용합니다. 태양광으로 발전된 전기는 콘센트를 통해 한국전력에서 공급받은 전기와 병행하여 쓰입니다. 태양광으로 발전된 전기로 인해 계량기가 천천히 도는 원리로 전기요금을 줄일 수 있습니다. <br><br> (주택․건물형) 주택형이나 건물형의 경우 전기배선작업을 진행하며, 상계처리가 가능하므로 한전으로 역전송되는 전기량을 계량하기 위해 별도의 계량기를 설치합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 쓰고 남은 전기는 판매할 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 한전에 판매되는 방식이 아니며, 전량 실시간으로 소비됩니다. 그렇기 때문에 낮에 집을 비우더라도 계속 가동되는 <br>냉장고나, 대기전력 소모에 대응이 가능합니다. <br>(주택․건물형) 주택형이나 건물형의 경우에도 실시간으로 소비되나, 쓰고 남은 전기에 대해서는 <br> 베란다형과 달리 상계처리가 가능합니다. <br>※ 상계처리 : 태양광을 설치한 수용가가 생산한 전력량만큼을 전기요금에서 내지 않도록 해주는 거래</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 저장했다가 밤에도 쓸 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">베란다형, 주택형, 건물형 모두 전기가 저장된 후 소비되는 방식이 아닌 태양광으로 발전된 전기가 우선적으로 사용되고 부족한 전기는 한전전기를 병행하여 사용하는 방식입니다. 즉, 밤에는 발전이 되지 않으므로 낮에만 사용 가능합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 날씨가 흐린날에는 어떡하죠?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">비가 오거나 날씨가 흐린 날에는 발전 효율이 저하됩니다.</li>
                                </ul>
                            </li>
                            <li class="last-item">
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[원리와 구성]</b> 수명은 얼마나 되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 발전모듈의 수명(제조 시점에서 성능이 20% 하락하는 기간)은 15~20년 정도이며, 인버터의 경우 7~10년 정도입니다.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="panel qna-item" id="tab3">
                        <ul>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[절감효과]</b> 한달에 얼마나 생산되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형의 경우 260W 한 장 설치 시 월 평균 25kWh 가량의 전기를 생산합니다. 이는 900ℓ짜리 양문형 <br> 냉장고를 한 달가량, 또는 여름철 에어컨(벽걸이형)을 매일 1시간 가동 가능한 전기량입니다. <br> ※ 25kWh = 260W × 3.2시간(서울지역 하루 평균 일조시간) × 30일 <br><br> (주택․건물형) 주택형이나 건물형의 경우, 3kW 설치 시 월 평균 288kWh 가량의 전기를 생산합니다. <br> ※ 288kWh = 3kW × 3.2시간(서울지역 하루 평균 일조시간) × 30일</li>
                                </ul>
                            </li>
                            <li class="last-item">
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[절감효과]</b> 전기요금 얼마나 절감되나요? 회수기간은 어떻게 되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형의 경우 260W 설치 시 현행(’18.3월) 전기요금 기준 5,350원 가량 절감되며, 회수기간은 약 2.6년입니다. <br> ※ 5,350원 = 45,250원(304kWh 사용시 전기료) – 39,900원(25kWh 절감시 전기료) <br> ※ 서울시 월평균 전기사용량(’17년 기준) = 304kWh. <br><br> (주택형) 주택형의 경우 월 500kWh 사용 가구에서 3kW 설치 시 현행 전기요금 기준 78,550원 가량 절감되며, 회수기간은 <br> 약 3.8년입니다. <br> ※ 78,550원 = 104,140원(500Wh 사용시 전기료) – 25,590원(288kWh 절감시 전기료)</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="panel qna-item" id="tab4">
                        <ul>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 저희집은 남향이 아닌데, 설치 가능할까요? 1층도 설치 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">물론 가능합니다. 다만, 남향과 비교하여 남동향, 남서향을 바라보는 태양광 미니발전소의 경우 발전량(kWh)이 다소 줄어듭니다. 최대출력이 발생하는 시간과 출력치 또한 다르게 나타납니다. 또한, 1~3층과 같이 저층부인 경우 발전량(kWh)이 떨어질 수 있습니다. <br>설치 사전상담 시 설치 가능여부를 진단할 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 베란다형을 설치하고 싶은데요. 어떤 형태의 베란다라도 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">업체에 따라 설치가 가능한 베란다의 길이, 구조가 다릅니다. 설치 전 업체와 구체적인 상담을 통하여 설치여부를 확인할 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 저희 집은 빌라인데요. 베란다형은 아파트에만 설치 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">빌라형태나 일반 건물인 경우도 거치가 가능한 난간이 있으면 가능합니다만, 1~2층같은 저층에는 발전효율이 떨어지기 때문에 추천해드리지 않습니다. 이런 경우 콘솔형으로 설치가 가능한데, 이때 공동사용부문에 대한 주민 사전협의가 필요할 것으로 보입니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 베란다형 설치하는데 오래 걸리나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">설치시간은 오래 걸리지 않습니다. 1시간~1시간 30분정도 소요되는 간단한 작업입니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 베란다형 설치 시 창호 일부에 손상이 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">에어컨 실외기가 기설치된 경우 확보된 통로를 이용하여 전선이 들어오게 됩니다. <br>극소수의 곳은 일부 절개가 있을 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 세입자인 경우에도 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">주택소유자뿐만 아니라 세입자인 경우에도 가능합니다. 다만, 벽체 구멍 뚫기 등이 필요한 경우에는 <br> 주택소유자와 세입자간 사전협의가 필요할 것으로 보입니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 아파트 관리사무소에서 반대할 경우에는 어떡하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">현 규정상 미니태양광은 외부 돌출물로 분류되어, 관리주체의 동의가 필요합니다. <br>※ 관련근거 : 공동주택관리법 시행령 제19조제2항제5호 <br> - 발코니 난간 또는 외벽에 에어컨 실외기 등 돌출물 설치 시 관리주체 동의 필요</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 설치비는 어느 정도 되나요? 제품은 어디서 볼 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 260W 한 장 설치 시 ’18년 기준 534,000원~670,000원 선입니다. 선정된 보급업체와 제품 정보는 www.sunnyseoul.com , 서울시 홈페이지(http://www.seoul.go.kr) 및 서울시 햇빛지도 홈페이지 (http://solarmap.seoul.go.kr)를 통해 열람 가능합니다. <br><br> (주택․건물형) 현재 보급업체 선정 및 지원 계획 수립 중에 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 설치 신청하려면 어디로 연락하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">PC나 모바일로 www.sunnyseoul.com에 접속하시면 설치 신청부터 A/S 신청까지 간편하고 쉽게 사용 가능합니다. <br> 홈페이지 사용이 어려우신 경우 서울에너지공사 태양광 콜센터에 전화 접수 (☎1566-0494, 월~금 09:00~21:00, 공휴일 제외) <br> 하실 수 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 설치비가 조금 부담되는데, 서울시에서 보조금은 얼마나 지원하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 베란다형의 경우 260W 한 장 설치 시 ’18년 기준 364,000원, 520W 설치 시 712,000원을 지원합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 저는 OO구인데요. 구에서도 따로 보조금을 지원하나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">현재 서울시 25개 자치구에서도 추가 보조금을 5~10만원 선에서 지원하고 있습니다. <br>서울시와 마찬가지로 선착순으로 마감되기 때문에 구보조금을 받으시려는 경우 각 구청 환경과<br> 또는 에너지부서로 잔여 물량을 문의하셔야 합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 보조금 지급절차는 어떻게 되나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">서울시 선정 보급업체를 통해 태양광 미니발전소를 설치하신 후, 업체에 자부담금만 납부하시면 됩니다. <br> 시민편의성 증대와 행정간소화를 위해 설치확인 이후, 보급업체에서 보조금 지급 절차를 대리 수행합니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 한 가구에서 복수신청이 가능한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">(베란다형) 가능합니다. 하지만 보조금 지급은 누적으로 산정됩니다. <br><br>ex) (1차) 260W 설치 364,000원 = (260W × 1,400원/W)+ (2차) 260W 추가설치 348,000원 = (240W × 1,400원/W) <br> + (20W × 600원/W)계 : 520W 설치 712,000원※ ’18년 보조금 기준 <br><br>(주택․건물형) 현재 보조금 지원 계획 수립 중에 있습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 서울에너지공사에 태양광지원센터가 생겼다던데, 하는 일이 무엇인가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">서울에너지공사 태양광지원센터는 ‘태양광 생애주기 원스톱 서비스’를 제공하고 있는데요. <br>상담부터 설치 신청, 사후관리까지 미니태양광의 전 과정에 걸쳐 서비스를 제공합니다. <br>태양광 지원총괄센터를 중심으로 태양광 콜센터와 5개의 권역센터를 운영하고 있습니다. <br>※ 도심권센터(종로), 동북권센터(노원), 동남권센터(송파), 서북권센터(은평), 서남권센터(동작)</li>
                                </ul>
                            </li>
                            <li class="last-item">
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[설치방법]</b> 인터넷 신청도 가능한가요? 콜센터 전화번호가 어떻게 돼요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">홈페이지 주소는 www.sunnyseoul.com 입니다. 인터넷과 모바일로 접속하실 수 있으며, 설치신청부터 A/S신청까지 홈페이지를 통해 가능합니다. 태양광 콜센터 번호는 1566-0494입니다. 월~금(공휴일 제외), 09:00~21:00 운영합니다.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="panel qna-item" id="tab5">
                        <ul>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 어떤 관리가 필요한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">태양광 모듈은 통상 15~20년동안 사용이 가능하며 특별한 관리가 필요없습니다만, 눈 또는 새 배설물이 쌓여있는 경우에는 <br> 더 나은 발전 효율을 위하여 부드러운 천으로 닦아주시면 좋습니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 철거하고 싶은데 어떡하죠?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">PC나 모바일로 접속하여(www.sunnyseoul.com) 철거 신청하실 수 있으며, 해당 구청장의 승인이 필요한 사항으로 구청에 <br> 신고하셔야 합니다. 다만, 설치 확인일로부터 5년 이내에 임의 철거할 경우 보조금이 환수됩니다.</li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 이사를 가는데, 가지고 갈 수 있나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">가능합니다. 다만, 이전 설치 비용이 10만원 정도 소요되며, 설치 확인일로부터 5년 이내에 <br> 이전할 경우 해당 구청에 신고가 필요합니다.</li>
                                </ul>
                            </li>
                            <li class="last-item">
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[사후관리]</b> 고장이 났는데요. A/S 가능한가요? 어디로 신청하면 될까요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">설치확인일로부터 5년 이내 고장이 날 경우, 무상 A/S가 가능합니다. PC나 모바일로 접속하여(www.sunnyseoul.com) <br> A/S 신청하실 수 있으며, 설치하신 업체를 통해 A/S가 이루어집니다. 보증기간 이후에 발생되는 수리비용은 소유자가 부담하게 됩니다.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="panel qna-item" id="tab6">
                        <ul>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[안전성]</b> 바람에 안전한가요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">건축물에 대한 태풍의 영향을 고려했을 때의 현재 서울시 기본풍속은 26m/s, 울릉도 40m/s, 제주도 44m/s입니다. <br> 베란다형 미니태양광의 경우 내풍압(50m/s) 시험 성능 검사를 실시하도록 하고 있으며 이 시험에서 적합한 판정을 받은 제품만 <br> 보급됩니다.</li>
                                </ul>
                            </li>
                            <li class="last-item">
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=contextPath%>/img/q-blue-big.png" alt="질문"><p><b>[안전성]</b> 베란다형은 콘세트에 꽂는다고요? 감전위험은 없나요?</p><img src="<%=contextPath%>/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content"><img src="<%=contextPath%>/img/a-answer.png" alt="질문">콘센트에서 플러그를 제거할 경우 인버터에서 전기가 자동차단되므로 전기가 출력되지 않아 감전 위험은 없습니다. 다만, 젖은 손으로 콘센트에 플러그를 꽂지 말아주세요.</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 'auto',
      spaceBetween: 10,
      slidesPerGroup: 3,
      loop: false,
      loopFillGroupWithBlank: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
</script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>

  