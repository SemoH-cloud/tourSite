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

.jeju {
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
	.jeju {
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
	<!-- jeju 설명-->


	<div class="topContent">
		<div>
			<h3 class="jeju">
				<B> JEJU </B>
			</h3>
		</div>

		<!-- player-->
		<div>
			<iframe class="play" width="550" height="415"
				src="https://www.youtube.com/embed/U1wWDHAt8J0" frameborder="0"
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
					<a href="seoul.jsp">Seoul</a> <img
						src="image/anotherSelect_seoul.png" />
				</div>
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
			<b>제주 인기 있는 숙소 Best4</b>
		</h2>
	</div>

	<ul class="card-list">

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/the-shilla-jeju/hotel/jeju-island-kr.html?finalPriceView=0&isShowMobileAppPrice=false&cid=1829971&tag=491d181e-5200-765b-ccc2-44923aab190f&numberOfBedrooms=&familyMode=false&isAgMse=false&ccallout=false&defdate=false&adults=2&children=0&rooms=1&maxRooms=9&checkIn=2020-09-9&childAges=&defaultChildAge=8&travellerType=1&los=9&searchrequestid=00cb7afc-eafd-409a-abc4-10dcf66bcac3
"
			target="_blank"
			style="background-image: url(https://pix6.agoda.net/hotelImages/62746/-1/caca87aa9782d05cda6bda4e0541ee46.jpg?s=1024x768);"
			data-image-full="https://pix6.agoda.net/hotelImages/62746/-1/caca87aa9782d05cda6bda4e0541ee46.jpg?s=1024x768">
				<img src="" alt="" />
		</a>
			<h2>신라 호텔</h2>
			<p>평점 9.5</p>
			<p>5,280,000/1박</p> </a></li>

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/jeju-shinhwa-world-marriott-resort_3/hotel/jeju-island-kr.html?finalPriceView=0&isShowMobileAppPrice=false&cid=1829971&tag=491d181e-5200-765b-ccc2-44923aab190f&numberOfBedrooms=&familyMode=false&isAgMse=false&ccallout=false&defdate=false&adults=2&children=0&rooms=1&maxRooms=9&checkIn=2020-09-9&childAges=&defaultChildAge=8&travellerType=1&los=9&searchrequestid=720a7a5a-b842-4f8e-8240-b0e191cd1b65"
			target="_blank"
			style="background-image: url(https://pix6.agoda.net/hotelImages/5059898/-1/6bcfa4bd28dbbbc5e5d93280ff8c0f99.jpg?s=1024x768);"
			data-image-full="https://pix6.agoda.net/hotelImages/5059898/-1/6bcfa4bd28dbbbc5e5d93280ff8c0f99.jpg?s=1024x768">
				<img src="" alt="" />
		</a>
			<h2>신화월드</h2>
			<p>평점 9</p>
			<p>248,889/1박</p></li>

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/hidden-cliff-hotel-nature/hotel/jeju-island-kr.html?finalPriceView=0&isShowMobileAppPrice=false&cid=1829971&tag=491d181e-5200-765b-ccc2-44923aab190f&numberOfBedrooms=&familyMode=false&isAgMse=false&ccallout=false&defdate=false&adults=2&children=0&rooms=1&maxRooms=9&checkIn=2020-09-9&childAges=&defaultChildAge=8&travellerType=1&los=9&searchrequestid=9ee40eab-468e-4de3-9b93-ca6da0e55cb6
"
			target="_blank"
			style="background-image: url(https://pix6.agoda.net/hotelImages/1199068/-1/09cb9a2780bf41ad1e8f8a3d2e074754.jpg?s=1024x768);"
			data-image-full="https://pix6.agoda.net/hotelImages/1199068/-1/09cb9a2780bf41ad1e8f8a3d2e074754.jpg?s=1024x768">
				<img src="" alt="" />
		</a>
			<h2>히든 클리프 호텔</h2>

			<p>평점 8.8</p>
			<p>244,445/1박</p></li>




		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/lotte-hotel-jeju/hotel/jeju-island-kr.html?finalPriceView=0&isShowMobileAppPrice=false&cid=1829971&tag=491d181e-5200-765b-ccc2-44923aab190f&numberOfBedrooms=&familyMode=false&isAgMse=false&ccallout=false&defdate=false&adults=2&children=0&rooms=1&maxRooms=9&checkIn=2020-09-9&childAges=&defaultChildAge=8&travellerType=1&los=9&searchrequestid=cd09fdbc-b1c3-4f40-a780-f9dd97cf5e9f
"
			target="_blank"
			style="background-image: url(https://pix6.agoda.net/hotelImages/42957/-1/5a6afa0c7ea086786e136427a0259473.jpg?s=1024x768);"
			data-image-full="https://pix6.agoda.net/hotelImages/42957/-1/5a6afa0c7ea086786e136427a0259473.jpg?s=1024x768">
				<img src="" alt="" />
		</a>
			<h2>롯데 호텔 제주</h2>
			<p>평점 9.2</p>
			<p>464,666/1박</p></li>

	</ul>


	<!--  추천 음식점 -->

	<div class="imgCardText">
		<h2>
			<b>맛집 Best4</b>
		</h2>
	</div>

	<ul class="card-list">

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://1.bp.blogspot.com/-pFVq55May80/XQGz5670qTI/AAAAAAAAQiw/Mw2nYs-Aagc_ZBIdCpcIJzkjhPW5Y3OzACLcBGAs/s1600/_DSC7137.jpg);"
			data-image-full="https://1.bp.blogspot.com/-pFVq55May80/XQGz5670qTI/AAAAAAAAQiw/Mw2nYs-Aagc_ZBIdCpcIJzkjhPW5Y3OzACLcBGAs/s1600/_DSC7137.jpg">
				<img src="" alt="" />
		</a>

			<h2>성산 고등어쌈밥</h2>
			<p>평점 5.0</p>
			<p>Best1:고등어쌈</p> </a></li>

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/626008_1594985170010755.jpg);"
			data-image-full="https://mp-seoul-image-production-s3.mangoplate.com/626008_1594985170010755.jpg">
				<img src="" alt="" />
		</a>

			<h2>상춘재</h2>
			<p>평점 4.2</p>
			<p>Best2:성게비빔밥</p></li>

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/27597_1557578662082386.jpg);"
			data-image-full="https://mp-seoul-image-production-s3.mangoplate.com/27597_1557578662082386.jpg">
				<img
				src="https://mp-seoul-image-production-s3.mangoplate.com/27597_1557578662082386.jpg"
				alt="" />
		</a>

			<h2>선흘곶</h2>

			<p>평점 4.3</p>
			<p>Best3:고등어구이 정식</p></li>



		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/1514074_1595943055353759.jpg);"
			data-image-full="https://mp-seoul-image-production-s3.mangoplate.com/1514074_1595943055353759.jpg">
				<img
				src="https://mp-seoul-image-production-s3.mangoplate.com/1514074_1595943055353759.jpg"
				alt="" />
		</a>

			<h2>숙성도</h2>
			<p>평점 4.3</p>
			<p>Best4:흑돼지</p></li>

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
				src="https://youimg1.c-ctrip.com/target/fd/tg/g1/M00/7C/5C/CghzfFWwwzaAY7HeACXeWblawIE225_C_750_500.jpg"
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
						<h2>Cheonjiyeon Waterfall</h2>
						<p>
							<img
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140730_82%2Fjejubomnal_1406697343454FSpeN_JPEG%2F%25C1%25A6%25C1%25D6%25B5%25B5%25BF%25A9%25C7%25E0%25C1%25F6_%25C3%25B5%25C1%25F6%25BF%25AC%25C6%25F8%25C6%25F724.jpg&type=sc960_832"
								width="400" height="250" alt="">
						</p>
						<P>Cheonjiyeon Waterfall is a waterfall on Jeju Island, South
							Korea.[1] Literally, the name Cheonjiyeon means sky (Ch'eon)
							connected with land (ji).[1] It is one of the main tourist
							attractions on Jeju-do.[2][3] It is 22 m (72 ft) high and 12 m
							(39 ft) wide.[4][5] Though water always falls in one particular
							area, depending on the amount of recent rain, the water may
							spread out.[2] At the bottom of the waterfall is an artificial
							pond that is 20 m (66 ft) deep.[5] Two small dams help keep the
							water at a specific level.[2] Large volcanic rocks form
							landbridges that allow tourists to pose for photographs in front
							of the falls.[6] These falls are characterized by its trachyte
							andesite rocks.[7] The source of Cheonjiyeon Waterfall is a
							spring that comes out of the floor of the Somban Stream.[8] The
							stream Yeonhee-chun is the source of the waterfall.[9] The
							waterfall is one of the three famous waterfalls of Jeju, the
							other two being Cheonjeyeon Waterfall and Jeongbang Waterfall.[2]


							Cheonjiyeon Waterfall during the day. In order to reach the
							waterfall, visitors must walk on a landscaped trail.[2] Near the
							beginning of the path is a traditional Korean raft called t'e-u
							(테우), symbolizing Korean culture.[2] It is the most popular at
							night, because the falls are illuminated.[5] At night, the
							"Hidden Face," a formation of rocks, may be visible with the
							night lights, and the falls are popular for lovers.[2][5] The
							Cheonjiyeon Waterfall is also known for its diverse plant and
							animal life, as the path to the waterfall goes through a garden
							of subtropical plants.[1][4][5] Migratory ducks,[2] Elaeocarpus
							sylvestris var. ellipticus (Natural Monument no. 163), Psilotum
							nudum, and Castanopsis cuspidata var. sieboldii, Xylosma
							congestum, and Camellia are some examples of the flora and fauna
							around the falls.[10] Just before reaching the falls on the path,
							one must cross a bridge from which a wide variety of koi fish can
							be seen below.[6] Along the way are three piles of stacked or
							balanced rocks that are a common sight throughout the whole of
							South Korea. In olden days, a person would place a small stone
							under a larger stone and pray for the health and prosperity of
							their family.[6] Its pond is known for being a habitat of the
							marbled eel (Anguilla marmorata), which is mainly active at
							night.[4] Known as the Mutae (무태) eel, it is classified in Korea
							as Natural Monument no. 27.</P>
					</div>

					<div class="item">
						<h2>Seongsan Ilchulbong</h2>
						<p>
							<img
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20110302_169%2Fqmffjrm9_1299027820721ACwc9_JPEG%2F%25BC%25BA%25BB%25EA%25C0%25CF%25C3%25E2%25BA%25C0.jpg&type=sc960_832"
								width="400" height="250" alt="">
						</p>
						<P>Seongsan Ilchulbong, also called ‘Sunrise Peak’, is an
							archetypal tuff cone formed by hydrovolcanic eruptions upon a
							shallow seabed about 5 thousand years ago. Situated on the
							eastern seaboard of Jeju Island and said to resemble a gigantic
							ancient castle, this tuff cone is 182 meters high, has a
							preserved bowl-like crater and also displays diverse inner
							structures resulting from the sea cliff. These features are
							considered to be of geologic worth, providing information on
							eruptive and depositional processes of hydromagmatic volcanoes
							worldwide as well as past volcanic activity of Seongsan
							Ilchulbong itself.</P>
					</div>

					<div class="item">
						<h2>Hallasan</h2>
						<p>
							<img
								src="https://img1.daumcdn.net/thumb/R720x0.q80/?scode=mtistory2&fname=http%3A%2F%2Fcfile29.uf.tistory.com%2Fimage%2F996F35375BDE7F20010971"
								alt="" width="400" height="250">
						</p>
						<p>Hallasan is a shield volcano on Jeju Island in South Korea;
							it is the highest mountain in South Korea. The area around the
							mountain is a designated national park, the Hallasan National
							Park (한라산국립공원, 漢拏山國立公園). Hallasan is commonly considered to be
							one of the three main mountains of South Korea, along with
							Jirisan and Seoraksan.</p>
					</div>

				</div>
			</div>
		</div>
	</div>


	<div class="imgCard">

		<div class="image">
			<img src="https://t1.daumcdn.net/cfile/blog/153BFC475017377E0F"
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
						<h2>Iho Tewoo Beach</h2>
						<p>
							<img src="https://t1.daumcdn.net/cfile/blog/153BFC475017377E0F"
								width="400" height="250" alt="">
						</p>
						<P>Iho Tewoo Beach is conveniently located close to downtown
							Jeju-si. The sandy, gently sloping beach and its mix of city
							amenities and natural beauty make it a popular destination for
							tourists during the summer.</P>
					</div>

					<div class="item">
						<h2>Hyeopjae Beach</h2>
						<p>
							<img
								src="https://lh3.googleusercontent.com/proxy/75x6LzTisgf_K_ebjs9dfgG-nv_Nn52xVCA32WCKqv47U2j6UbE77dxPjkub_-2Iu4nRej9_lihUQPXvupblwJy2gX-LdbFPlUKeoh8e8rbODGK0WKuLK4PFSCHmEyJjZAA18sc4KtBrZfrAadjnYWH5rst1uHVADUjxW0MxvrDM7QEM26C4O5_eHANt586Sr3Q94Ok9mtsbkEatSN3Eo2auOXxSwPJTODCfcbUKb8BhtfEsuIS6EJ4vju9XbUk8emp33sGRKeKx13Ko34hZ1kBrnj1BtgRzaD53IULH"
								width="400" height="250" alt="">
						</p>
						<P>Hyeopjae Beach is located about 32 kilometers west of
							downtown Jeju and is near Hallim Park. The white sandy beach
							mixed with crushed seashells, Biyangdo Island appearing to float
							on the cobalt seat, and the lush pine forest all combine to
							create an outsanding scene. The beach stretches roughly 200
							meters and is 60 meters wide with a shallow depth of 1.2 meters,
							making the beach perfect for family visitors. The beach also has
							many convenience facilities, including a campground in the pine
							forest, changing stalls, shower booths, restrooms, drinking
							fountains, and more. Restaurants offer delicious dishes using
							freshly caught seafood like jeonbok (abalone) and sora (horned
							turban). The nearby attractions include Hyeopjae Lava Tube within
							Hallim Park, Myeongwoldae Cliff, Hwangnyongsa Temple, and
							Yeonggaksa Temple.</P>
					</div>

					<div class="item">
						<h2>Camellia Hill</h2>
						<p>
							<img
								src="https://www.coupontree.co.kr/document/Product/3699/462X342_01.jpg"
								alt="" width="400" height="250">
						</p>
						<p>Camellia Hill is the largest camellia garden in the East
							with a history of 30 years. It’s one of the most popular sites on
							Jeju island, and one of the must-visit list recommended by local
							Koreans. You can enjoy the beauty of camellia from over 80
							countries here at one place. There are currently more than 6000
							plants of 500 varieties of camellias in the arboretum.</p>
					</div>

					<div class="item">
						<h2>Saryeoni Forest Trail</h2>
						<p>
							<img src="https://i.ytimg.com/vi/rPUDIIpHjR0/maxresdefault.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Saryeoni Forest Trail cuts through the dense Japanese cedar
							forest growing between Mulchat Oreum and Saryeoni Oreum, starting
							from the entrance on Regional Road 1112. While the vast majority
							of the trees growing here are Japanese cedar, visitors can also
							see Japanese oak, birch, snowbell trees, and cypress trees along
							this 550-meter-long trail. The forest trail is known as one of
							Jeju's top 31 hidden attractions, and is well-known as being very
							protected. It is very popular among tourists who enjoy hiking and
							the outdoors.</P>
					</div>



				</div>
			</div>
		</div>

	</div>

	<div class="imgCard">

		<div class="image">
			<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA4MDlfNjkg%2FMDAxNTk2OTAxMTU3NTg0.3rH6Jf6ax2lvEITaeoXOxlEFmpvO7P1RhCu8kaxD3EEg.gpBKnLM05PbcDDWbcFK7FoJwZfoUICFlvxNKyj0C3u8g.JPEG.flowershoesj%2Foutput_2144096321.jpg&type=sc960_832"
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
						<h2>Soingook Theme Park</h2>
						<p>
							<img
								src="https://fastly.4sqi.net/img/general/width960/11594002_I1gLshSp3UoWXXI6PdJRzrjC7C4sn3CnYgYDTK9WQ4o.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Jeju Soingook Theme Park is Jejudo’s major tourist
							attraction, covering about 20,000 square meters of land, holding
							various miniature models of famous architecture from all over the
							world including Korea’s Bulguksa Temple, Jeju International
							Airport, Jageumseong Castle, Tower Bridge, Basilique du
							Sacre-Coeur, Leaning Tower of Pisa, and much more from 30
							countries, totaling 100 miniature models. The theme park also
							provides a traditional cultural experience with Jejudo’s rock
							culture, folk religion, hands-on programs, an outdoor concert
							stage, a mini RC car stadium, and dinosaur fossils.</P>
					</div>

					<div class="item">
						<h2>Jeju Gimnyeong Maze Park</h2>
						<p>
							<img
								src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxODA2MDdfODEg%2FMDAxNTI4MzQzNTg4OTQ0.8NtOSrA3A2XqrhlaoOe_YE-IWGTTadTBF2O3R4RdmcAg.DKD98hZ9qNK06Syer14AEUIXOCUu02Zy2NgvUCyjRN0g.PNG.findjejulife%2F20180607_115711.png&type=sc960_832"
								width="400" height="250" alt="">
						</p>
						<P>Jeju Gimnyeong Maze Park</P>
					</div>

					<div class="item">
						<h2>Hanwha aqua planet jeju</h2>
						<p>
							<img src="https://i.ytimg.com/vi/UeegZw7BHCg/maxresdefault.jpg"
								alt="" width="400" height="250">
						</p>
						<p>Aqua Planet Jeju boasts the largest aquarium facility among
							East Asian countries. Housing over 5,000 marine creatures from
							domestic regions and abroad, the Jeju branch is a highly
							recommended place to visit for all, especially for family
							visitors.</p>
					</div>

					<div class="item">
						<h2>Shinhwa Water Park</h2>
						<p>
							<img
								src="https://pix10.agoda.net/hotelImages/5573468/-1/ac93b1b9cd33c507979a5db3d03fa379.jpg?s=1024x768"
								alt="" width="400" height="250">
						</p>
						<p>
					</div>
				</div>
			</div>

		</div>

		<div class="imgCard">

			<div class="image">
				<img
					src="https://4.bp.blogspot.com/-8mIpsFfhJaw/VVmv9g7hjTI/AAAAAAAASrQ/vxkywAnaZw4/s1600/IMG_6698.JPG"
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
							<h2>Udo</h2>
							<p>
								<img
									src="https://image.auction.co.kr/itemimage/1b/bc/63/1bbc6356f6.jpg"
									width="400" height="250" alt="">
							</p>
							<P>Udo, (also called U-island, since do means island) is
								located on the northeast of Seongsan-ri, 3.5 kilometres (2.2
								miles) off the coast of Jeju, South Korea. This is the largest
								of the islands included in Jeju City.[1] Udo, literally "Cow
								Island" in Hanja, has this name because it looks like a cow
								lying down. The whole of Udo is a lava plateau and a fertile
								flatland where major agricultural products such as sweet
								potatoes, garlic, and peanuts are produced. There is a parasitic
								cone, called soeui meori oreum in native Korean or udubong (牛頭峰)
								in Hanja (both mean "Cow's Head Peak"), in the southeast.</P>
						</div>

						<div class="item">
							<h2>Jeju Folklore & Natural History Museum</h2>
							<p>
								<img
									src="https://lh3.googleusercontent.com/proxy/pupPmvmJqLzyrVEMVdlEIrZoNZDDFSHa3zf0fAJliQifUdaHLEYxp7uB5M1KnqV8XslgvaECT0NcJCIYRlAqqEWENf6uJyLCNft4GpLywj51iHh3EaAuVG8zG329lgfnE2T3lU56fY6XAq1MvU81qhSvI5VEaOnYZnKXo5XVYfcWPLG0VtfTlyxXtnV2HG8OQOB3hEv8Yq6fMEuGue-O9D_BjGzEy1VA7OMawd5MvHpMdqgmDnC5QMxz7Q0rAVJ7E8EMAzGMNjhbvF_N6T_6Jfh8m6qcFB-CUXbhA4rmiqcUR27wVP-YjlXUk4U5PbVr8E8j25gTh8hSwfc7GlmMnNfsmJe61e9xaldMCKfN2wjcLNEi-6nioWRfSpKR7tNX5dX5Nyb88ZxXv4nPzVb1E5WbTVs_uCzTO0k6-zs"
									width="400" height="250" alt="">
							</p>
							<P>Jeju Folklore & Natural History Museum collects,
								researches, and exhibits folklore remains and natural historical
								materials of Jeju-do. Since opening on May 24, 1984, the museum
								has provided different methods of displays to further help
								visitors understand Jeju’s unique nature and culture. From the
								lobby, visitors can see a diorama of large fish and marine life
								as well as the formation of Jeju Island and various natural
								life. The museum also provides better understanding of the
								people of Jeju in the past.</P>
						</div>

						<
						<div class="item">
							<h2>Hanwha aqua planet jeju</h2>
							<p>
								<img src="https://i.ytimg.com/vi/UeegZw7BHCg/maxresdefault.jpg"
									alt="" width="400" height="250">
							</p>
							<p>Aqua Planet Jeju boasts the largest aquarium facility
								among East Asian countries. Housing over 5,000 marine creatures
								from domestic regions and abroad, the Jeju branch is a highly
								recommended place to visit for all, especially for family
								visitors.</p>
						</div>



						<div class="item">
							<h2>Handmade shop</h2>
							<p>
								<img
									src="https://lh3.googleusercontent.com/proxy/jcUlEjfw9aYV-wvAzm_hsdq3grXhsMxwtVtJrNKbUPwaEFCuTTj4r6ysPF-gvGs6URJMxn90wruwxbplc3hlL_3HPqxTjRBCdKHSiAHVa_68gn61ue9HdQ"
									width="400" height="250" alt="">
							</p>
							<p></p>

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
							</span><br> <span class="comment-content">제주 어디가 좋나요?</span>
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