<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="https://static.doubleclick.net/instream/ad_status.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/reply.css">
<link rel="stylesheet" href="css/timeline.css">
<link rel="stylesheet" href="css/map.css">
<script src="js/reply.js"></script>
<script src="js/map.js"></script>
<script
	src=" https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.3/gsap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.3.1/MotionPathPlugin.min.js"></script>
<link rel="stylesheet" href="https://use.typekit.net/xlj8lcy.css">
<link rel="stylesheet" href="css/weather.css">
<link rel="stylesheet" href="css/toggleImage.css">
<script src="js/toggleImage.js"></script>
<script src="js/cardbutton.js"></script>
<script src="js/lodging.js"></script>
<link rel="stylesheet" href="css/lodging.css">


<link rel="stylesheet" href="css/comment.css">
<script src="js/comment.js"></script>

<style>
.topContent {
	display: flex;
	justify-content: space-around;
}

.seoul {
	font-size: 80px;
	margin-top: 200px;
}

.content {
	font-size: 28px;
}

.course {
	margin: 50px auto;
}

.course>.itemWrap {
	display: none;
}

h3 {
	margin: 100px;
}

iframe {
	margin: 0 auto;
}

.imgCard {
	display: flex;
	justify-content: space-around;
	padding: 20px;
	width: 1500px;
	background-color: rgb(248, 248, 248);
	border-radius: 20px;
	margin: 0 auto;
	margin-bottom: 30px;
	height: 300px;
}

.cardContent {
	width: 600px;
}

.cardTitle {
	width: 300px;
}

.cardButton {
	align-content: center;
}

.another_place {
	display: flex;
	justify-content: space-around;
}

.imgCardText {
	padding: 30px;
	margin: 30px 0px 30px 100px;
}

h2 {
	display: flex;
	justify-content: space-around;
}

@media all and (max-width:479px) {
	.play, .content {
		display: none;
	}
	.seoul {
		position: absolute;
		top: 60px;
		left: 100px;
		display: flex;
		font-size: 40px;
	}
}

body {
	position: absolute;
	top: 10px;
}
</style>

<script type="text/javascript">
	function toggleMap() {
		$('.mapWrap').toggle();
	}
</script>

</head>

<body>

	<script>
		AOS.init();
	</script>



	<p style="padding: 50px"></p>

	<%@ include file="top.html"%>
	<!-- seoul 설명-->


	<div class="topContent">
		<div>
			<h3 class="seoul">
				<B> SEOUL </B>
			</h3>
		</div>

		<!-- player-->
		<div>
			<iframe class="play" width="550" height="415"
				src="https://www.youtube.com/embed/Oen8od2atpI" frameborder="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen></iframe>
		</div>
	</div>

	<!--weather-->
	<section class="top-banner" style="margin: 0 auto;">
		<div class="container">

			<form>
				<input type="text" placeholder="Weather　:　Search for a city"
					autofocus="">
				<button type="submit" class="btn btn-dark weatherBtn">Search</button>



				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-success btn-lg"
					style="margin-top: 100px; margin-left: -50px;" data-toggle="modal"
					data-target="#myModal">Map Search</button>
				<span class="msg"></span>
			</form>
		</div>
	</section>
	<section class="ajax-section">
		<div class="container">
			<ul class="cities"></ul>
		</div>
	</section>

	<!--weather js-->
	<script
		src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
	<script src="js/weather.js"></script>

	<!--Map Search Modal-->


	<div class="container">

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog modal-lg">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title" style="text-align: left;">Map Search</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<input id="pac-input" class="controls" type="text"
							placeholder="Search Box">
						<div id="map"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<!--map search js-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDUJfIu3uSSh5QOT5nRZ0gEbeGONrY3pgQ&libraries=places&callback=initAutocomplete"
		async defer></script>



	<!-- another place select -->
	<div class="another_place">
		<div class="button-images">
			<div style="padding: 30px">
				<h2>
					<b>여행 추천 Best3</b>
				</h2>
			</div>
			<div class="one_fourth">
				<div class="button-container">
					<a href="gyeongju.jsp">Gyeongju</a> <img
						src="image/anotherSelect_gyeongju.png" />
				</div>
			</div>
			<div class="one_fourth">
				<div class="button-container">
					<a href="busan.jsp">Busan</a> <img
						src="image/anotherSelect_Busan.png" />
				</div>
			</div>
			<div class="one_fourth">
				<div class="button-container">
					<a href="jeju.jsp">Jeju</a>
					<div class="button-image">
						<img src="image/anotherSelect_jeju.png" />
					</div>
				</div>
			</div>
			<div class="one_fourth last">
				<div class="button-container">
					<a href="#">ALL</a> <img src="image/anotherSelect_all.png" />
				</div>
			</div>
		</div>
	</div>





	<!-- 숙소  -->



	<div class="imgCardText">
		<h2>
			<b>서울 인기 있는 숙소 Best4</b>
		</h2>
	</div>

	<ul class="card-list">

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/the-shilla-seoul/hotel/seoul-kr.html?cid=1844104"
			target="_blank"
			style="background-image: url(https://pix10.agoda.net/hotelImages/4888960/0/aaac10eb29be0b1cc7e228fd105cbb9b.jpg?s=1024x768);"
			data-image-full="https://pix10.agoda.net/hotelImages/4888960/0/aaac10eb29be0b1cc7e228fd105cbb9b.jpg?s=1024x768">
				<img
				src="https://pix10.agoda.net/hotelImages/4888960/0/aaac10eb29be0b1cc7e228fd105cbb9b.jpg?s=1024x768"
				alt="" />
		</a>
			<h2>서울 신라 호텔</h2>
			<p>평점 9.1</p>
			<p>389,087/1박</p> </a></li>

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/vista-walkerhill-seoul/hotel/seoul-kr.html?checkIn=2020-09-15&los=1&adults=2&rooms=1&cid=1731425&searchrequestid=f5c1abb4-6d49-4642-88d2-53f649dc8a07&travellerType=-1"
			target="_blank"
			style="background-image: url(https://media.timeout.com/images/103839875/630/472/image.jpg);"
			data-image-full="https://media.timeout.com/images/103839875/630/472/image.jpg">
				<img
				src="https://media.timeout.com/images/103839875/630/472/image.jpg"
				alt="" />
		</a>
			<h2>비스타 워커힐 서울</h2>
			<p>평점 8</p>
			<p>678,208/1박</p></li>

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/millennium-seoul-hilton-hotel/hotel/seoul-kr.html?checkIn=2020-08-21&los=1&adults=1&rooms=1&cid=1829970&tag=0e1665e0-c030-bcfb-1c9c-17ba4cd46133&searchrequestid=304814c5-0bb5-405d-8b21-11a1a369524e&travellerType=-1&tspTypes=16&tabbed=true"
			target="_blank"
			style="background-image: url(https://contents.hiltonhotels.jp/ko/h/selhi/hotel_main_20190909104811_lg_sp.jpg);"
			data-image-full="https://contents.hiltonhotels.jp/ko/h/selhi/hotel_main_20190909104811_lg_sp.jpg">
				<img
				src="https://contents.hiltonhotels.jp/ko/h/selhi/hotel_main_20190909104811_lg_sp.jpg"
				alt="" />
		</a>
			<h2>서울 힐튼 호텔</h2>

			<p>평점 9.8</p>
			<p>153,750/1박</p></li>



		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/the-westin-chosun-seoul/hotel/seoul-kr.html?checkIn=2020-08-21&los=1&adults=1&rooms=1&cid=1829970&tag=0e1665e0-c030-bcfb-1c9c-17ba4cd46133&searchrequestid=519882bd-8531-4b95-8a93-d8f713c180c4&travellerType=-1&tspTypes=16&tabbed=true"
			target="_blank"
			style="background-image: url(https://pix6.agoda.net/hotelImages/4875421/0/fcc93ac1c4650e45d3dcbaa5e215fc5c.jpg?s=1024x768);"
			data-image-full="https://pix6.agoda.net/hotelImages/4875421/0/fcc93ac1c4650e45d3dcbaa5e215fc5c.jpg?s=1024x768">
				<img
				src="https://pix6.agoda.net/hotelImages/4875421/0/fcc93ac1c4650e45d3dcbaa5e215fc5c.jpg?s=1024x768"
				alt="" />
		</a>
			<h2>웨스틴 조선 호텔</h2>
			<p>평점 9.9</p>
			<p>234,900/1박</p></li>

	</ul>


	<!--  추천 음식점 -->

	<div class="imgCardText">
		<h2>
			<b>맛집 Best4</b>
		</h2>
	</div>

	<ul class="card-list">

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://lh3.googleusercontent.com/proxy/0IW_MtI5ALUspAyk5OKnKKea_YFUYvW9ID6ISOSdzO54tpDlVh5VY1WGY0l0odJG_OhM_jcN6rdUPkYvgiRDD3q3iNK_w9sP38-43S-mjRLGDxjjYtZWqXnUz_YrXQ8hzp1VBZVMPX-YVeyXZqJeFm9IjGcSewV3XHoA8sKQ6-GdYbKa8loSIVXHAhpivMKXa4RQ2i8FyE7EZE7axIAUMIEFzYmXU7jfDiIRMYAexn62z99IckrysBlVU_UVb0KrotLRRpOVveTxgIGskH8mush5QwFLv_k7gpipmSPDg6VPQQ);"
			data-image-full="https://pix10.agoda.net/hotelImages/4888960/0/aaac10eb29be0b1cc7e228fd105cbb9b.jpg?s=1024x768">
				<img
				src="https://lh3.googleusercontent.com/proxy/0IW_MtI5ALUspAyk5OKnKKea_YFUYvW9ID6ISOSdzO54tpDlVh5VY1WGY0l0odJG_OhM_jcN6rdUPkYvgiRDD3q3iNK_w9sP38-43S-mjRLGDxjjYtZWqXnUz_YrXQ8hzp1VBZVMPX-YVeyXZqJeFm9IjGcSewV3XHoA8sKQ6-GdYbKa8loSIVXHAhpivMKXa4RQ2i8FyE7EZE7axIAUMIEFzYmXU7jfDiIRMYAexn62z99IckrysBlVU_UVb0KrotLRRpOVveTxgIGskH8mush5QwFLv_k7gpipmSPDg6VPQQ"
				alt="" />
		</a>
			<h2>당산 육갑식당</h2>
			<p>평점 4.5</p>
			<p>Best1:꽃돼지, 쇠고기</p> </a></li>

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile5.uf.tistory.com%2Fimage%2F9909743359F132BC0BD104);"
			data-image-full="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile5.uf.tistory.com%2Fimage%2F9909743359F132BC0BD104">
				<img
				src="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile5.uf.tistory.com%2Fimage%2F9909743359F132BC0BD104"
				alt="" />
		</a>
			<h2>서울대입구 고명집</h2>
			<p>평점 4.5</p>
			<p>Best2:닭갈비</p></li>

		<li class="card"><a class="card-image" href="#"
			style="background-image: url(https://pbs.twimg.com/media/Drr-2grVAAAS89q.jpg);"
			data-image-full="https://pbs.twimg.com/media/Drr-2grVAAAS89q.jpg">
				<img src="https://pbs.twimg.com/media/Drr-2grVAAAS89q.jpg" alt="" />
		</a>
			<h2>광장시장 육회</h2>

			<p>평점 4.0</p>
			<p>Best3:육회, 전, 꼬마 김밥</p></li>



		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/20180122115035_photo1_paKxCDR6qPhw.jpg);"
			data-image-full="https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/20180122115035_photo1_paKxCDR6qPhw.jpg">
				<img
				src="https://s3-ap-northeast-1.amazonaws.com/dcreviewsresized/20180122115035_photo1_paKxCDR6qPhw.jpg"
				alt="" />
		</a>
			<h2>성신여대 옛날 불고기</h2>
			<p>평점 3.9</p>
			<p>Best4:불고기</p></li>

	</ul>



	<div class="imgCardText">
		<h2>
			<b>테마 별 추천 여행 코스 Best4</b>
		</h2>
	</div>
	<!--image card-->

	<div class="imgCard">

		<div class="image">
			<img
				src="https://korean.visitseoul.net/comm/getImage?srvcId=POST&parentSn=26629&fileTy=POSTTHUMB&fileNo=1"
				width="400" height="250" alt="">
		</div>
		<div class="cardTitle">
			<h3>Discovery</h3>
		</div>
		<div class="cardContent">
			<p>The Cathedral of Vasily the Blessed (Russian: Собор Василия
				Блаженного, Sobor Vasiliya Blazhennogo), commonly known as Saint
				Basil's Cathedral, is a church in Red Square in Moscow, Russia. The
				building, now a museum, is officially known as the Cathedral of the
				Intercession of the Most Holy Theotokos on the Moat (Russian: Собор
				Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy
				Bogoroditsy, chto na Rvu) or Pokrovsky Cathedral (Russian:
				Покровский собор).[5] It was built from 1555–1561 on orders from
				Ivan the Terrible and commemorates the capture of Kazan and
				Astrakhan.</p>
		</div>
		<div class="cardBotton">
			<a href="javascript:;"></a>
			<button type="button" id="discovery" class="btn btn-light">
				바로가기</a>
			</button>
		</div>

	</div>

	<div class="course">

		<!--course1-->
		<div class="itemWrap discovery-item">
			<h1 style="text-align: center;">course1: Discovery</h1>
			<div class="fullwidth">

				<div class="timeline group">
					<div class="item">
						<h2>Bukchon Hanok Village</h2>
						<p>
							<img
								src="https://img.insight.co.kr/static/2018/06/14/700/4ag9g9vbsaxr3atx5vdo.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Bukchon Hanok Village is a Korean traditional village in
							Seoul with a long history located on the top of a hill between
							Gyeongbok Palace, Changdeok Palace and Jongmyo Royal Shrine. The
							traditional village is composed of many alleys, hanok and is
							preserved to show a 600-year-old urban environment.</P>
					</div>

					<div class="item">
						<h2>Namdaemun Market</h2>
						<p>
							<img
								src="https://scontent-ssn1-1.xx.fbcdn.net/v/t1.0-9/67650556_102312251126866_6837148860725329920_o.jpg?_nc_cat=106&_nc_sid=dd9801&_nc_ohc=88qOXU8laggAX-0nQc2&_nc_ht=scontent-ssn1-1.xx&oh=d8758e69a302c698e4e535c82ebb318a&oe=5F554649"
								width="400" height="250" alt="">
						</p>
						<P>Namdaemun Market is a large traditional market in Seoul,
							South Korea. The market is located next to Namdaemun, the "Great
							South Gate," which was the main southern gate to the old city. It
							is the oldest and largest market in Korea</P>
					</div>

					<div class="item">
						<h2>Gyeongbokgung Palace</h2>
						<p>
							<img
								src="https://www.artinsight.co.kr/data/tmp/1804/79026ca47a77c48e37c1afb425b80566_RtxaVP4jOakhYzo6m2edDPv.jpg"
								alt="" width="400" height="250">
						</p>
						<p>Gyeongbokgung (Korean: 경복궁; Hanja: 景福宮), also known as
							Gyeongbokgung Palace or Gyeongbok Palace, was the main royal
							palace of the Joseon dynasty. Built in 1395, it is located in
							northern Seoul, South Korea. The largest of the Five Grand
							Palaces built by the Joseon dynasty, Gyeongbokgung served as the
							home of Kings of the Joseon dynasty, the Kings' households, as
							well as the government of Joseon. Gyeongbokgung continued to
							serve as the main palace of the Joseon dynasty until the premises
							were destroyed by fire during the Imjin War (1592–1598) and
							abandoned for two centuries. However, in the 19th century, all of
							the palace's 7,700 rooms were later restored under the leadership
							of Prince Regent Heungseon during the reign of King Gojong. Some
							500 buildings were restored on a site of over 40 hectares. The
							architectural principles of ancient Korea were incorporated into
							the tradition and appearance of the Joseon royal court. In the
							early 20th century, much of the palace was systematically
							destroyed by Imperial Japan. Since then, the walled palace
							complex is gradually being restored to its original form. Today,
							the palace is arguably regarded as being the most beautiful and
							grandest of all five palaces. It also houses the National Palace
							Museum and the National Folk Museum within the premises of the
							complex.</p>
					</div>

					<div class="item">
						<h2>Dangsan Yooggap</h2>
						<p>
							<img
								src="https://pds.joins.com//news/component/htmlphoto_mmdata/201806/02/b575750f-0365-401e-a43c-b918333d1aa0.jpg"
								width="400" height="250" alt="">
						</p>
						<P></P>
					</div>

					<div class="item">
						<h2>N Seoul Tower</h2>
						<p>
							<img
								src="http://pds.skyedaily.com/news_data/2udYrICZJP7cFkNbwIttaN"
								width="400" height="250" alt="">
						</p>
						<p>The N Seoul Tower (Korean: N서울타워), officially the YTN Seoul
							Tower and commonly known as the Namsan Tower or Seoul Tower, is a
							communication and observation tower located on Namsan Mountain in
							central Seoul, South Korea. At 236 metres (774 ft), it marks the
							second highest point in Seoul. Built in 1971, the N Seoul Tower
							is South Korea's first general radio wave tower, providing TV and
							radio broadcasting in Seoul.Currently, the tower broadcasts
							signals for Korean media outlets, such as KBS, MBC and SBS.</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="imgCard">

		<div class="image">
			<img
				src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=a0863160-1038-4cda-8fa7-ca0330a61cd2"
				width="400" height="250" alt="">
		</div>
		<div class="cardTitle">
			<h3>Relax</h3>
		</div>
		<div class="cardContent">
			<p>The Cathedral of Vasily the Blessed (Russian: Собор Василия
				Блаженного, Sobor Vasiliya Blazhennogo), commonly known as Saint
				Basil's Cathedral, is a church in Red Square in Moscow, Russia. The
				building, now a museum, is officially known as the Cathedral of the
				Intercession of the Most Holy Theotokos on the Moat (Russian: Собор
				Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy
				Bogoroditsy, chto na Rvu) or Pokrovsky Cathedral (Russian:
				Покровский собор).[5] It was built from 1555–1561 on orders from
				Ivan the Terrible and commemorates the capture of Kazan and
				Astrakhan.</p>
		</div>
		<div class="cardBotton">
			<a href="javascript:;"></a>
			<button type="button" id="relax" class="btn btn-light">
				바로가기</a>
			</button>
		</div>


	</div>

	<div class="course">

		<!--course2-->
		<div class="itemWrap relax-item">
			<h1 style="text-align: center;" id="course2">course2: Relax</h1>
			<div class="fullwidth2">

				<div class="timeline group">

					<div class="item">
						<h2>Seolleung Royal Tomb, Seoul (宣陵)</h2>
						<p>
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=a0863160-1038-4cda-8fa7-ca0330a61cd2"
								width="400" height="250" alt="">
						</p>
						<P>Seollleung, the tomb of King Seongjong(成宗, 1457~1494, r.
							1469~1494), the 9th ruler of Joseon Dynasty, and his consort
							Queen Jeonghyeon(貞顯王后, 1462~1530)</P>
					</div>



					<div class="item">
						<h2>BongEunSa</h2>
						<p>
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=33bfc8dc-cb96-47dd-845c-56027d48ef93"
								alt="" width="400" height="250">
						</p>
						<p>
							Bongeunsa (Korean: 봉은사; Hanja: 奉恩寺) is a Buddhist temple located
							in Samseong-dong, Gangnam-gu in Seoul, South Korea. It was
							founded in 794 during the reign of King Wonseong by the monk
							Yeon-hoe (Korean: 연희), then the highest ranking monk of Silla,
							and originally named Gyeonseongsa (Korean: 견성사; Hanja: 見性寺). It
							is located on the slope of Sudo Mountain, across the street from
							the COEX Mall.<br> <br>
						</p>
					</div>

					<div class="item">
						<h2>Sinuiju Budaejjigae</h2>
						<p>
							<img
								src="https://lh3.googleusercontent.com/proxy/X_2QXPpzehISMXd24A8cc2rFUg5xFkzVHwvW0x6XE5y2RSfPrzKtgvNCKQHIsC-_L98B4iJcv-QH4d3PohgN5_xdRBsYcq3rVclyZgHc6IyHB3Nvaw0mkDVp_ZVj1vuEC7qzTs_L6T4gzlYoKtWEyiUnowe-VxAXi4xgfTDJNNYSPirAyyLevyk0ONDf4viL-bcrY7E7D_KEMAUPPQQiX-lMH9xvXMvU6g"
								width="400" height="250" alt="">
						</p>
						<P></P>
					</div>

					<div class="item">
						<h2>Sinsa Garosu gil</h2>
						<p>
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=fff6237d-15c6-4859-9c00-ac17d49bb5b4"
								width="400" height="250" alt="">
						</p>
						<P>Garosu-gil (Hangeul: 가로수길) is an area in Sinsa-dong,
							Gangnam-gu, Seoul, South Korea. The name Garosu-gil, meaning
							"tree-lined street", refers to the ginkgo trees planted along the
							streets in the area. Garosu-gil is known for upscale boutiques,
							galleries, restaurants, and cafes, among others. Garosu-gil,
							along with 'Cheongdam’s Fashion Street' in Cheongdam-dong and
							Apgujeong Rodeo Street in Apgujeong-dong, connected by the main
							Apgujeong-ro, are together seen as the main fashionable and
							trendsetting areas in Seoul</P>
					</div>

					<div class="item">
						<h2>Club K jjimjilbang</h2>
						<p>
							<img
								src="http://blogfiles.naver.net/MjAxOTEyMjlfNzgg/MDAxNTc3NjAwMDYwODI5.eJFtd2m7Kd0X4rK5mNhcLaeV_xOyQcKCfiZnzy4780Ig.w3JcxJIXDzQtS_u3UP62RKKE9oVLJaAftay3_hE3-Qkg.JPEG.rami_0826/1577600054817.jpg"
								width="400" height="250" alt="">
						</p>
						<p>A jjimjilbang (Korean pronunciation: [t͈ɕimdʑilbaŋ];
							Korean: 찜질방; Hanja: 찜질房; MR: tchimjilbang, lit. 'Steamed-quality
							room') is a large, sex-segregated public bathhouse in South
							Korea, furnished with hot tubs, showers, Korean traditional kiln
							saunas and massage tables. Jjimjil is derived from the words
							meaning heating. In other areas of the building or on other
							floors there are unisex areas, usually with a snack bar,
							ondol-heated floor for lounging and sleeping, wide-screen TVs,
							exercise rooms, ice rooms, heated salt rooms, PC bang, noraebang,
							and sleeping quarters with bunk beds or sleeping mats</p>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="imgCard">

		<div class="image">
			<img
				src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=25f5083f-3d6f-4154-905f-0383b5de8c47"
				width="400" height="250" alt="">
		</div>
		<div class="cardTitle">
			<h3>Activity</h3>
		</div>
		<div class="cardContent">
			<p>The Cathedral of Vasily the Blessed (Russian: Собор Василия
				Блаженного, Sobor Vasiliya Blazhennogo), commonly known as Saint
				Basil's Cathedral, is a church in Red Square in Moscow, Russia. The
				building, now a museum, is officially known as the Cathedral of the
				Intercession of the Most Holy Theotokos on the Moat (Russian: Собор
				Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy
				Bogoroditsy, chto na Rvu) or Pokrovsky Cathedral (Russian:
				Покровский собор).[5] It was built from 1555–1561 on orders from
				Ivan the Terrible and commemorates the capture of Kazan and
				Astrakhan.</p>
		</div>
		<div class="cardBotton">
			<a href="javascript:;"></a>
			<button type="button" id="activity" class="btn btn-light">
				바로가기</a>
			</button>
		</div>

	</div>

	<div class="course">
		<!--course3-->
		<div class="itemWrap activity-item">
			<h1 style="text-align: center;" id="course3">course3: Activity</h1>
			<div class="fullwidth3">

				<div class="timeline group">
					<div class="item">
						<h2>LotteWorld</h2>
						<p>
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=25f5083f-3d6f-4154-905f-0383b5de8c47"
								width="400" height="250" alt="">
						</p>
						<P>Lotte World is a major recreation complex in Seoul, South
							Korea. It consists of the world's largest indoor theme park,[3]
							an outdoor amusement park called "Magic Island", an artificial
							island inside a lake linked by monorail, shopping malls, a luxury
							hotel, a Korean folk museum, sports facilities, and movie
							theaters. Opened on July 12, 1989, Lotte World receives 7.3
							million visitors each year.</P>
					</div>

					<div class="item">
						<h2>JAMSIL Cube escape</h2>
						<p>
							<img
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjEwMzBfMjYw%2FMDAxNDc3NzU1OTQ2MTYw.XCk4TQOyOtgHROrWY5iqkhWGxFTnsTXvHGPx3xUaFVog.2yKy1xyUkoCpcyyCtGgraGWfmwK-V6lSa3ZP1q0HRNog.JPEG.rinto0916%2F9.JPG&type=b400"
								width="400" height="250" alt="">
						</p>
						<P>당신의 상상력, 판단력, 추리 능력은? CUBE Esape Game은 참가자가 실제 상황을 방불케 하는
							특별한 테마 룸에 갇힌 채 60분 이내에 주어진 미션을 해결하여 탈출해야하는 신개념 문화/여가 시설입니다. 테마 룸
							입장 후 주어진 시나리오에 따라 출입구는 봉쇄되며, 여러분의 명석한 두뇌로 주어진 퀴즈를 해결해 탈출.</P>
					</div>

					<div class="item">
						<h2>JAMSIL CART</h2>
						<p>
							<img
								src="https://lh3.googleusercontent.com/proxy/YoUSm7kQxJTgDyqtJtkdkPO_QnM5aTtSsNkj6VIynyVYXEYlpTW7CjiJIY_lNCHx7_juwjn8QJdtiU4ybufh2V8-a0feIkaCJrzBd89s7n5Q7h8EKPt0Ay7us03zxM7UoyeUB7zq7QQ_qg"
								alt="" width="400" height="250">
						</p>
						<p>이보다 액티비티한 것은 없다. 스피드를 온몸으로 느낄 수 있는 것은 물론, 몇 번의 연습으로 간편하게
							조작이 가능</p>
					</div>

					<div class="item">
						<h2>Han river Park chimaek</h2>
						<p>
							<img
								src="https://korean.visitseoul.net/comm/getImage?srvcId=MEDIA&parentSn=23729&fileTy=MEDIA&fileNo=1"
								width="400" height="250" alt="">
						</p>
						<P>Chimaek (치맥; from Korean chikin, meaning 'fried chicken',
							and maekju, meaning 'beer'[1][2]) is a pairing of fried chicken
							(either plain huraideu or spicy yangnyeom) and beer, served as
							anju (English: food with alcohol) in the evening in many South
							Korean restaurants,[2] including a number of specialized chains</P>
					</div>

					<div class="item">
						<h2>Itaeon</h2>
						<p>
							<img
								src="https://mblogthumb-phinf.pstatic.net/MjAxODA2MDdfMTQy/MDAxNTI4MzMyNTQ4NjMz.H7rqFYjjj3lHLTOSzaoi0K1jYJUkh2V9pNnnJl_0-fgg.Ne4n6g30WSx6ANJDb7vBXaCtZUsl1XjiVzM4XLd_jywg.JPEG.dlrkdms_/IMG_9808.jpg?type=w800"
								width="400" height="250" alt="">
						</p>
						<p></p>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="imgCard">

		<div class="image">
			<img
				src="https://previews.123rf.com/images/epicstockmedia/epicstockmedia1512/epicstockmedia151200036/49643698-%ED%95%B4%EB%B3%80%EC%97%90%EC%84%9C-%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4-%EC%9D%BC%EB%AA%B0-%EC%82%B0%EC%B1%85%EC%9D%84-%EC%A6%90%EA%B8%B0%EB%8A%94-%ED%96%89%EB%B3%B5-%EB%A1%9C%EB%A7%A8%ED%8B%B1-%ED%95%9C-%EA%B0%80%EC%9A%B4%EB%8D%B0-%EC%84%B8-%EC%BB%A4%ED%94%8C-%EC%97%AC%ED%96%89-%ED%9C%B4%EA%B0%80-%ED%87%B4%EC%A7%81-%EB%9D%BC%EC%9D%B4%ED%94%84-%EC%8A%A4%ED%83%80%EC%9D%BC-%EA%B0%9C%EB%85%90.jpg"
				width="400" height="250" alt="">
		</div>
		<div class="cardTitle">
			<h3>Couple & Friends</h3>
		</div>
		<div class="cardContent">
			<p>The Cathedral of Vasily the Blessed (Russian: Собор Василия
				Блаженного, Sobor Vasiliya Blazhennogo), commonly known as Saint
				Basil's Cathedral, is a church in Red Square in Moscow, Russia. The
				building, now a museum, is officially known as the Cathedral of the
				Intercession of the Most Holy Theotokos on the Moat (Russian: Собор
				Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy
				Bogoroditsy, chto na Rvu) or Pokrovsky Cathedral (Russian:
				Покровский собор).[5] It was built from 1555–1561 on orders from
				Ivan the Terrible and commemorates the capture of Kazan and
				Astrakhan.</p>
		</div>
		<div class="cardBotton">
			<a href="javascript:;"></a>
			<button type="button" id="couple" class="btn btn-light">
				바로가기</a>
			</button>
		</div>

	</div>

	<div class="course">

		<!--course4-->
		<div class="itemWrap couple-item">
			<h1 style="text-align: center;" id="course4">course4: Couple &
				Friends</h1>
			<div class="fullwidth4">

				<div class="timeline group">

					<div class="item">
						<h2>Munraedong</h2>
						<p>
							<img
								src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=4af3e9ef-c9cb-4a36-a153-26ed9927eb55"
								width="400" height="250" alt="">
						</p>
						<P>새로 이주한 예술가와 터줏대감인 철공소가 어우러지면서 독특한 분위기를 만든 점이 흥미롭다. 여전히
							1000여 개 철공소가 있는 이곳에는 100여 개 작업실에서 300명이 넘는 예술가들이 활동한다. '문래창작촌
							인포메이션' 부스 옆에는 거대한 망치와 못, 커다란 용접 가면이 방문객을 반긴다. 예술가들이 입주한 낡은 공장 건물
							옥상마다 텃밭 겸 꽃밭이 들어서고, 그 옆으로 벽화와 철제 조형물이 자리 잡았다. 덕분에 주말이면 카메라를 들고
							문래동을 찾는 젊은이의 발길이 이어졌고, 이들의 취향에 맞는 카페와 레스토랑이 생겼다. 서울문화재단이 운영하는
							문래예술공장을 비롯해 문래창작촌 곳곳에 들어선 갤러리와 극장에서 1년 내내 다양한 전시와 공연이 펼쳐진다.</P>
					</div>

					<div class="item">
						<h2>Ikseon-dong</h2>
						<p>
							<img
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxOTA0MjNfMTM2%2FMDAxNTU2MDMxNTU1NTc2.OAwkVQFRFxLvoZqf-Yb2bKv-lUQgIMfW4Mm4K0RWWwkg.7w1JT1pxTiJiVW89uC36i7-7toQNWAC6ERbZxvF127kg.JPEG.shamielia%2FSE-f5159ac1-0e5d-49eb-a161-547b86ca09c0.jpg&type=b400"
								width="400" height="250" alt="">
						</p>
						<P>익선동은 골목과 한옥이 어우러져 아름다운 매력을 풍기는 곳으로, 남녀노소 많은 관광객들이 찾는 핫플레이스로
							떠오르고 있다. 또한 젊은세대와 어르신 간 세대를 이어주는 장소이기도 하다.</P>
					</div>

					<div class="item">
						<h2>K.Y pork(경양카츠)</h2>
						<p>
							<img
								src="https://postfiles.pstatic.net/MjAxOTExMThfOTYg/MDAxNTc0MDQ2MTA4MjYw.SdDmbG-wS2BdhAjyoMPLkFJx8nRqxBkEHQ9CpcSdW6Ig.coysycLGPZBoJlo2H__C_ufwQQ75gFr9lYQuYBO6JXUg.JPEG.msj2877/%EC%88%98%EC%A0%95%EB%90%A8_IMG_1808.jpg?type=w966"
								alt="" width="400" height="250">
						</p>
						<p>대박 맛집. 줄서서 먹는 곳. 이 식당에 따라 붙는 이름들 다른 말은 필요 없다...</p>
					</div>

					<div class="item">
						<h2>Insadong Ssamzigil</h2>
						<p>
							<img
								src="http://blogfiles.naver.net/MjAxNzAyMTVfMTU2/MDAxNDg3MTUxMzM3NzQy.cwME9Gfd6Z9pc_jdTZxxwcx0-TbYeRY85yAtDfSWne4g.z6JU1XhmclBs5_ddJjzFupsbWCEknk4FUM3OD73m0fEg.JPEG.bogouno2000/%C0%CE%BB%E7%B5%BF_%BD%D3%C1%F6%B1%E64.JPG"
								width="400" height="250" alt="">
						</p>
						<P>먹거리, 즐길 거리, 볼거리가 다 모여있다.</P>
					</div>

					<div class="item">
						<h2>aquarium</h2>
						<p>
							<img
								src="http://blogfiles.naver.net/MjAyMDA3MTlfMjYw/MDAxNTk1MTIyMjM3MDM5.0Z8C_Hl9Weao_cR6tP1FhK0_3P5BaQ5yUW9mxq_sBiAg.b9GmRLUY2p8hVsPhWt4Y3aToS_zzEl_hBsovUZnliw4g.JPEG.wkwmd81/%C4%DA%BF%A2%BD%BA_%BE%C6%C4%ED%BE%C6%B8%AE%BF%F2_%C7%D2%C0%CE_%C6%AF%B0%A1_%B2%DC%C6%C1_01.jpg"
								width="400" height="250" alt="">
						</p>
						<p>볼거리의 끝판왕 아쿠아리움. 귀여운 상어와 돌고래, 펭귄까지 사진을 부르는 장소</p>

					</div>

					<div class="item">
						<h2>Seochon먹자골목</h2>
						<p>
							<img
								src="https://mblogthumb-phinf.pstatic.net/MjAxODA3MjNfMjUw/MDAxNTMyMzQ0NjA4Njky.v-RfEdRmkmqz94eWpEZH0XRBxQ3Uw1OpcpJN0M092kQg.mt7rSmKPkWPjD1z1I_a-a7whLXbbVcaSJcuRHVgeSnEg.JPEG.yoyonala/image_2853146751532344381548.jpg?type=w800"
								width="400" height="250" alt="">
						</p>
						<p>아기자기한 동네들이 모여있는 곳. 그 옆에는 화려한 조명이 비치는 먹자골목!</p>

					</div>


				</div>
			</div>
		</div>
	</div>


	<!--  댓글 -->
	<div id="main" class="container">
		<div data-reactroot="" class="col-md-12 col-centered comment-thread"
			style="width: 1200px">
			<div class="col-md-12 col-centered header">
				<span>Comments</span>
			</div>
			<ul class="col-md-12 col-centered">
				<div class="row">
					<div class="comment col-md-12 col-centered">
						<span class="comment-author"> <!-- react-text: 8 -->이은찬<!-- /react-text -->
							<!-- react-text: 9 -->: <!-- /react-text -->
						</span><br> <span class="comment-content">서울 어디가 좋나요?</span>
					</div>
				</div>
				<div class="row">
					<div class="comment col-md-12 col-centered">
						<span class="comment-author"> <!-- react-text: 15 -->한지수<!-- /react-text -->
							<!-- react-text: 16 -->: <!-- /react-text -->
						</span><br> <span class="comment-content">외국인 친구들이 가기 좋은 곳
							추천이요</span>
					</div>
				</div>
			</ul>
			<div>
				<form class="new-comment-form col-md-12 col-centered">
					<div>
						<textarea rows="4" placeholder="Join the discussion..."
							class="form-control large-input"></textarea>
					</div>
					<div class="form-group">
						<label></label><input type="text" placeholder="Name"
							id="authorInput" class="form-control">
					</div>
					<button class="btn btn-primary submit-comment">Submit</button>
				</form>
			</div>
		</div>
	</div>
	<script src="https://fb.me/react-15.1.0.min.js"></script>
	<script src="https://fb.me/react-dom-15.1.0.min.js"></script>
	<script src="js/comment.js"></script>



</body>

</html>