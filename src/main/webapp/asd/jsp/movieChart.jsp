<%@page import="VO.MovieVO"%>
<%@page import="java.util.List"%>
<%@page import="user.DAO.MovieChartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=""%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="Expires" content="-1" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="No-Cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="viewport" content="width=1024" />
    <meta name="keywords" content="CGV, 시지브이, 영화관, 극장, 영화, 티켓, 박스오피스, 극장, Movie, Theater, Cinema, Cgv, cgv, 예매, 상영작" />
    <meta name="description" content="영화 그 이상의 다양하고 즐거운 몰입의 경험을 만듭니다. 라이프스타일 플랫폼 CGV" />
    <meta property="og:site_name" content="영화 그 이상의 감동. CGV" />
    <meta id="ctl00_og_title" property="og:title" content="무비차트 &lt; 무비차트 | 영화 그 이상의 감동. CGV">
    <meta id="ctl00_og_image" property="og:image" content="https://img.cgv.co.kr/WebApp/images/common/logo_new_kakao_prevw.png">
    <link rel="alternate" href="http://m.cgv.co.kr" />
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon" />
    <title id="ctl00_headerTitle">무비차트 &lt; 무비차트 | 영화 그 이상의 감동. CGV</title>
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/webfont.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/reset.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/layout.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/module.css?20211209" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/content.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/common.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/eggupdate.css" />
    <link rel="stylesheet" media="print" type="text/css" href="https://img.cgv.co.kr/R2014/css/print.css" />
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/jquery.ui/smoothness/jquery-ui-1.10.4.custom.min.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/phototicket/phototicket.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/slick-theme-custom.css" />
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/R2014/js/icheck/iCheck.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/preegg.css" />
    <link rel="stylesheet" media="all" type="text/css" href="https://img.cgv.co.kr/R2014/css/giftstore/giftstore.css" />
    <link rel="stylesheet" type="text/css" href="https://img.cgv.co.kr/resource_pc/css/cgv.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.tmpl.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.validate.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.paging.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.ui/jquery-ui-1.10.4.custom.min.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.utils.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.utils.pageing.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.init.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/jquery.plugin/jquery.dotdotdot.min.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/slick/slick.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="/common/js/extraTheaters.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/app.config.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/icheck/login.timer.js"></script>
    <script src="https://img.cgv.co.kr/R2014/js/icheck/icheck.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/silverlight_link.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/giftstore.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/R2014/js/giftstore/commonstore.js"></script>
    <script type="text/javascript" src="https://img.cgv.co.kr/resource_pc/js/cgvUi.js"></script>
</head>

<body>
<body class="">

<div class="skipnaiv">
		<a href="#contents" id="skipHeader">메인 컨텐츠 바로가기</a>
	</div>
	<div id="cgvwrap">
		<!-- header start -->
	 <jsp:include page="header.jsp" />
		<!-- header end -->
		
		<!-- Contaniner -->
		<div id="contaniner" class="">
			<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
			<!-- Contents Area -->
			<div id="contents" class="">
				<!-- Contents Start -->
				<!-- 실컨텐츠 시작 -->
				<div class="wrap-movie-chart">
					<!-- Heading Map Multi -->
					<div class="tit-heading-wrap">
						<h3>무비차트</h3>

						<div class="submenu">
							<ul>
								<li class="on"><a href="/movies/" title="선택" >무비차트</a></li>
							</ul>
						</div>
					</div>
					<!-- //Heading Map Multi -->
					<!-- Sorting -->
					<div class="sect-sorting">
						<div class="nowshow">
							<input type="checkbox" id="chk_nowshow" /> <label
								for="chk_nowshow">현재 상영작만 보기</label>
						</div>
						<label id="order_type" name="order-type">평점순</label>
					</div>
					<!-- //Sorting -->

					<div class="sect-movie-chart">
						<h4 class="hidden">무비차트 - 예매율순</h4>
						<ol>
							<%-- 4행 5열 반복문 시작 --%>
							<%
							//MovieChartDAO 객체 생성
							int rank = 1;
							MovieChartDAO mcDAO = MovieChartDAO.getInstance();
							List<MovieVO> mcVO = mcDAO.selectMovieList();
							for (MovieVO tempMovie : mcVO) {
							String code = tempMovie.getMovieCode();
							String title = tempMovie.getMovieTitle();
							String date = tempMovie.getMovieReleaseDate();
							String posterPath = tempMovie.getMoviePosterPath();
							String rating = tempMovie.getMovieRating();
							String score = tempMovie.getMovieScore();
							
							
							%>
						
							<li>
								<div class="box-image">
									<strong class="rank">No.<%=rank%></strong> <a
										href="/movies/detail-view/?midx=88104"> <span
										class="thumb-image"> <img
											 src="../images/<%=posterPath %>"
											/> <!-- 영상물 등급 노출 변경 2022.08.24 -->
											<i class="cgvIcon etc age15"><%=rating %></i> <!-- <span class="ico-grade 15">15</span> -->
									</span>
									</a> <span class="screentype"> <a class="imax" href="#"
										title="IMAX 상세정보 바로가기" data-regioncode="07">IMAX</a> <a
										class="forDX" href="#" title="4DX 상세정보 바로가기"
										data-regioncode="4D14">4DX</a>
									</span>
								</div>
								<div class="box-contents">
									<a href="/movies/detail-view/?midx=88104"> <strong
										class="title"><%=title %></strong>
									</a>
									<span class="txt-info"> <strong> <%=date %> <span>개봉</span>
											<em class="dday">D-5</em>
									</strong>
									</span> <span class="like"> <a class="link-reservation"
										href="/ticket/?MOVIE_CD=20035938&MOVIE_CD_GROUP=20035938">예매</a>
									</span>
								</div>
							</li>
							<%
							rank++;
							}
							%>
				
						</ol>
					</div>
				</div>
				<!-- .sect-moviechart -->
				

				<!--/ Contents End -->
			</div>
			<!-- /Contents Area -->
		</div>
		<!-- E Contaniner -->

<!-- S 예매하기 및 TOP Fixed 버튼 -->
<div class="fixedBtn_wrap">

<a href="/ticket/" class="btn_fixedTicketing">예매하기</a> <a
href="#none" class="btn_gotoTop"><img
src="https://img.cgv.co.kr/R2014/images/common/btn/gotoTop.png"
alt="최상단으로 이동" /></a>
</div>
<!-- E 예매하기 및 TOP Fixed 버튼 -->

<!-- S Footer -->
<jsp:include page="footer.jsp"/>
<!-- S Footer -->

</div>
</body>
</body>
</html>