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

.Gyeong-ju {
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
	.Gyeong-ju {
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
	<!-- Gyeong-ju 설명-->


	<div class="topContent">
		<div>
			<h3 class="Gyeong-ju">
				<B> GYEONG-JU </B>
			</h3>
		</div>

		<!-- player-->
		<div>
			<iframe class="play" width="550" height="415"
				src="https://www.youtube.com/embed/TLnmGI1juFA" frameborder="0"
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
			<b>경주 인기 있는 숙소 Best4</b>
		</h2>
	</div>

	<ul class="card-list">

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/ramada-hotel-resort-gyeongju/hotel/gyeongju-si-kr.html?checkIn=2020-09-02&los=1&adults=2&rooms=1&cid=1731425&searchrequestid=7e130368-3be6-4715-b508-11f2cca8fa93&travellerType=-1"
			arget="_blank"
			style="background-image: url(https://exp.cdn-hotels.com/hotels/34000000/33240000/33238400/33238377/94f05738_z.jpg?impolicy=fcrop&w=773&h=530&q=high);"
			data-image-full="https://exp.cdn-hotels.com/hotels/34000000/33240000/33238400/33238377/94f05738_z.jpg?impolicy=fcrop&w=773&h=530&q=high">
				<img
				src="https://exp.cdn-hotels.com/hotels/34000000/33240000/33238400/33238377/94f05738_z.jpg?impolicy=fcrop&w=773&h=530&q=high"
				alt="" />
		</a>
			<h2>라마다 호텔 &리조트</h2>
			<p>평점 9.0</p>
			<p>99.279/1박</p> </a></li>

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/hilton-gyeongju/hotel/gyeongju-si-kr.html?asq=T3BF75JXrvF8T8SjA6zqoJufa9Vwpz6XltTHq4n%2B9gONYTzaIW4PosXY0SUg9qU99ZF2S28z6ZiHATmCRvgk7tkUb%2FTg%2FPIy2Cku6YEn0zqutkU7M%2BzBlz7Xdp4Y0%2Bt6%2FQX57nQ7g6%2BWCTkwFX5wv%2F4f3uInZOuzqBMuinR8FDbpvt0GnK0DA1BOyZCQH87taP%2F7khgzcUYQSVVX8rLxCO1WQEd%2BM2fqiLnUTxf5TICU3AYCJij584gIcH1RqIkg&hotel=65486&cid=1731425&tick=637329045598&txtuuid=129e0fe6-6913-4c7c-88b6-21bfaedf48fc&languageId=9&userId=77ed8788-6e23-4bdf-8f7f-8812f3969120&sessionId=zbvvyy1llylch5cdvvvtt5op&pageTypeId=103&origin=KR&locale=ko-KR&aid=102968&currencyCode=KRW&htmlLanguage=ko-kr&cultureInfoName=ko-KR&ckuid=77ed8788-6e23-4bdf-8f7f-8812f3969120&prid=0&checkIn=2020-09-02&checkOut=2020-09-03&rooms=1&adults=2&childs=0&priceCur=KRW&los=1&textToSearch=%EA%B2%BD%EC%A3%BC%20%ED%9E%90%ED%8A%BC&productType=-1&travellerType=1&familyMode=off"
			target="_blank"
			style="background-image: url(https://exp.cdn-hotels.com/hotels/1000000/10000/500/469/6d489f2a_z.jpg?impolicy=fcrop&w=773&h=530&q=high);"
			data-image-full="https://exp.cdn-hotels.com/hotels/1000000/10000/500/469/6d489f2a_z.jpg?impolicy=fcrop&w=773&h=530&q=high">
				<img
				src="https://exp.cdn-hotels.com/hotels/1000000/10000/500/469/6d489f2a_z.jpg?impolicy=fcrop&w=773&h=530&q=high"
				alt="" />
		</a>
			<h2>힐튼경주</h2>
			<p>평점 8.5</p>
			<p>219,793/1박</p></li>

		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/daemyung-resort-gyeongju/hotel/gyeongju-si-kr.html?checkIn=2020-09-02&los=1&adults=2&rooms=1&cid=1731425&searchrequestid=1cb636e5-58db-43ac-ad93-dd6132d2bbd5&travellerType=1"
			target="_blank"
			style="background-image: url(https://contents.hiltonhotels.jp/ko/h/selhi/hotel_main_20190909104811_lg_sp.jpg);"
			data-image-full="https://pix6.agoda.net/hotelImages/408/408401/408401_14111212010023302958.jpg?s=1024x768">
				<img
				src="https://pix6.agoda.net/hotelImages/408/408401/408401_14111212010023302958.jpg?s=1024x768"
				alt="" />
		</a>
			<h2>소노벨 경주(구 대명)</h2>

			<p>평점 8.0</p>
			<p>100.277/1박</p></li>



		<li class="card"><a class="card-image"
			href="https://www.agoda.com/ko-kr/kensington-resort-gyeongju/hotel/gyeongju-si-kr.html?checkIn=2020-08-14&los=2&adults=2&rooms=1&cid=1829970&tag=0e1665e0-c030-bcfb-1c9c-17ba4cd46133&searchrequestid=d831cdf2-fd38-4b46-97fe-9e4a37aea3d2&travellerType=-1&tspTypes=8,4"
			target="_blank"
			style="background-image: url(https://pix6.agoda.net/hotelImages/247973/-1/d3d11782e93e8c7555455d00089fbd8b.jpg?s=1024x768);"
			data-image-full="https://pix6.agoda.net/hotelImages/247973/-1/d3d11782e93e8c7555455d00089fbd8b.jpg?s=1024x768">
				<img
				src="https://pix6.agoda.net/hotelImages/4875421/0/fcc93ac1c4650e45d3dcbaa5e215fc5c.jpg?s=1024x768"
				alt="" />
		</a>
			<h2>켄싱턴 리조트</h2>
			<p>평점 9.0</p>
			<p>61,364/1박</p></li>

	</ul>


	<!--  추천 음식점 -->

	<div class="imgCardText">
		<h2>
			<b>맛집 Best4</b>
		</h2>
	</div>

	<ul class="card-list">

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MjRfMjE2%2FMDAxNTg3NzE4MzYwNDQ2.B3VVAZXkVkLJgP8UD88x5u9twnLX0X7o-PNHmANIQXgg.QHGbk2wWSgkQM1kizFW-xXn_CV0IWfW6dyeceZlcbAcg.JPEG.snsmento%2FKakaoTalk_20200423_233602877_07.jpg&type=sc960_832);"
			data-image-full="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MjRfMjE2%2FMDAxNTg3NzE4MzYwNDQ2.B3VVAZXkVkLJgP8UD88x5u9twnLX0X7o-PNHmANIQXgg.QHGbk2wWSgkQM1kizFW-xXn_CV0IWfW6dyeceZlcbAcg.JPEG.snsmento%2FKakaoTalk_20200423_233602877_07.jpg&type=sc960_832">
				<img
				src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDA0MjRfMjE2%2FMDAxNTg3NzE4MzYwNDQ2.B3VVAZXkVkLJgP8UD88x5u9twnLX0X7o-PNHmANIQXgg.QHGbk2wWSgkQM1kizFW-xXn_CV0IWfW6dyeceZlcbAcg.JPEG.snsmento%2FKakaoTalk_20200423_233602877_07.jpg&type=sc960_832"
				alt="" />
		</a>
			<h2>용산 회 식당</h2>
			<p>평점 4.7</p>
			<p>Best1:회덮밥</p> </a></li>

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://i.pinimg.com/originals/78/d8/ed/78d8ed97804a3a979cb0dcd04d439ef4.jpg);"
			data-image-full="https://i.pinimg.com/originals/78/d8/ed/78d8ed97804a3a979cb0dcd04d439ef4.jpg">
				<img src=""
				alt="https://i.pinimg.com/originals/78/d8/ed/78d8ed97804a3a979cb0dcd04d439ef4.jpg" />
		</a>
			<h2>흥부 막창</h2>
			<p>평점 4.2</p>
			<p>Best2:막창</p></li>

		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/188078/9239_1571578352869_288?fit=around|512:512&crop=512:512;*,*&output-format=jpg&output-quality=80);"
			data-image-full="https://mp-seoul-image-production-s3.mangoplate.com/188078/9239_1571578352869_288?fit=around|512:512&crop=512:512;*,*&output-format=jpg&output-quality=80">
				<img
				src="https://mp-seoul-image-production-s3.mangoplate.com/188078/9239_1571578352869_288?fit=around|512:512&crop=512:512;*,*&output-format=jpg&output-quality=80"
				alt="" />
		</a>
			<h2>벤자마스</h2>

			<p>평점 4.2</p>
			<p>Best3:분위기, 오므라이스</p></li>



		<li class="card"><a class="card-image" href="#" target="_blank"
			style="background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/407477/1493609_1573430703594_3484?fit=around|512:512&crop=512:512;*,*&output-format=jpg&output-quality=80);"
			data-image-full="https://mp-seoul-image-production-s3.mangoplate.com/407477/1493609_1573430703594_3484?fit=around|512:512&crop=512:512;*,*&output-format=jpg&output-quality=80">
				<img
				src="https://mp-seoul-image-production-s3.mangoplate.com/407477/1493609_1573430703594_3484?fit=around|512:512&crop=512:512;*,*&output-format=jpg&output-quality=80"
				alt="" />
		</a>
			<h2>경주 우마왕</h2>
			<p>평점 4.3</p>
			<p>Best4:한우물회</p></li>

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
				src="https://lh6.googleusercontent.com/proxy/bfrkSRBgPDlO82gYtiwwr-nReGjkwMGk2o6M_sbViAJshOln-pzCMpBEQeI7Z3xCbfKoy1E-nZKmr0kKemuaY9rjZWqBnUmPwPbZ-lD8BlEpbi6d2JsDbmnBXIAg0hIZYCfym8XLkqI_b60OY0BAhpNrGabvTYvCIuBQ4YbtyCPb=w296-h202-n-k-no"
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
				Покровский собор). It was built from 1555–1561 on orders from Ivan
				the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
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
						<h2>Donggung Palace and Wolji Pond</h2>
						<p>
							<img
								src="https://lh6.googleusercontent.com/proxy/bfrkSRBgPDlO82gYtiwwr-nReGjkwMGk2o6M_sbViAJshOln-pzCMpBEQeI7Z3xCbfKoy1E-nZKmr0kKemuaY9rjZWqBnUmPwPbZ-lD8BlEpbi6d2JsDbmnBXIAg0hIZYCfym8XLkqI_b60OY0BAhpNrGabvTYvCIuBQ4YbtyCPb=w296-h202-n-k-no"
								width="400" height="250" alt="">
						</p>
						<P>Anapji was originally located near the palace of Silla
							called Banwolseong. It is written in Samguk Sagi: "During the era
							of King Munmu, a new pond was made in the palace and flowers and
							birds flourished in this pond". There is also mention of a royal
							reception held by King Gyeongsun in 931, when Silla was already
							crumbling. After the fall of Silla, the pond fell into disrepair
							for many centuries. The name Anapji appears in the 16th century
							Joseon era document Augmented Survey of the Geography of Korea
							(hangul:동국여지승람, hanja:東國輿地勝覽) with the explanation that King
							Munmu made the pond with Taoist aesthetics.[</P>
					</div>

					<div class="item">
						<h2>Cheomseongdae</h2>
						<p>
							<img
								src="https://tourimage.interpark.com/BBS/Tour/FckUpload/201207/6347676428273824140.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Cheomseongdae (Hangul: 첨성대) is an astronomical observatory
							in Gyeongju, South Korea. Cheomseongdae means star-gazing tower
							in Korean. Cheomseongdae is the oldest surviving astronomical
							observatory in Asia, and possibly even the world.It was
							constructed in the 7th century in the kingdom of Silla, whose
							capital was Seorabeol, or present-day Gyeongju (Hangul: 경주).
							Cheomseongdae was designated as the country's 31st national
							treasure on December 20, 1962. Modeled on Baekje's Jeomseongdae,
							which now exists only in historical records, the Cheomseongdae
							influenced the construction of a Japanese observatory in 675, and
							Duke Zhou's observatory in China in 723</P>
					</div>

					<div class="item">
						<h2>Seokguram</h2>
						<p>
							<img
								src="https://image.ytn.co.kr/general/jpg/2014/0912/201409121646437396_t.jpg"
								alt="" width="400" height="250">
						</p>
						<p>The Seokguram Grotto is a hermitage and part of the
							Bulguksa temple complex. It lies four kilometers east of the
							temple on Mt. Tohamsan, in Gyeongju, South Korea. It is
							classified as National Treasure No. 24 by the South Korean
							government and is located at 994, Jinhyeon-dong, Gyeongju-si,
							Gyeongsanbuk-do. The grotto overlooks the Sea of Japan and rests
							750 meters above sea level. In 1962, it was designated the 24th
							national treasure of Korea. In 1995, Seokguram was added to the
							UNESCO World Heritage List together with the Bulguksa Temple. It
							exemplifies some of the best Buddhist sculptures in the world.

							The Seokguram grotto is said to have been built by Kim Daeseong
							and originally called Seokbulsa (석불사, Stone Buddha Temple).
							Construction began in 742 when Kim Daeseong resigned his position
							in the king's court or in 751, the 10th year of the reign of King
							Gyeongdeok of Silla. This time period was the cultural peak of
							Unified Silla. The grotto was completed by the Silla court in
							774, shortly after Kim's death. An old legend stated that Kim was
							reincarnated for his filial acts in his previous life. The legend
							relates that the Bulguksa Temple was dedicated to Kim’s parents
							in his present life while the Seokguram Grotto was dedicated to
							Kim's parents from a previous life. The grotto is currently one
							of the best known cultural destinations in South Korea. A viewing
							of the sunrise over the sea, which is visible from near the
							seated Buddha's perch, is especially popular.</p>
					</div>

					<div class="item">
						<h2>Bunhwangsa</h2>
						<p>
							<img
								src="https://upload.wikimedia.org/wikipedia/commons/8/87/Korea-Gyeongju-Bunhwangsa_seoktap-04.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Bunhwangsa ("Fragrant Imperial Temple") is a temple complex
							from the Old Silla era of Korea. It is located in Gyeongju. The
							temple is recorded to have been built in 634 under the auspices
							of Queen Seondeok. Today the temple is still used by a small
							group of worshipers but in its heyday, the temple covered several
							acres and was one of the four main temples of the Silla Kingdom
							used by the state to ask the Buddha to bless the kingdom. The
							ruins of Hwangnyongsa Temple lay nearby. It is part of the UNESCO
							world heritage site Gyeongju Historic Areas.</P>
					</div>


				</div>
			</div>
		</div>
	</div>


	<div class="imgCard">

		<div class="image">
			<img
				src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Korea-Gyeongju-Bomun_Lake-Swan_shaped_pleasure_cruise-01.jpg/1280px-Korea-Gyeongju-Bomun_Lake-Swan_shaped_pleasure_cruise-01.jpg"
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
				Покровский собор). It was built from 1555–1561 on orders from Ivan
				the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
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
						<h2>Bomun Lake Resort</h2>
						<p>
							<img
								src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Korea-Gyeongju-Bomun_Lake-Swan_shaped_pleasure_cruise-01.jpg/1280px-Korea-Gyeongju-Bomun_Lake-Swan_shaped_pleasure_cruise-01.jpg"
								width="400" height="250" alt="">
						</p>
						<P>The Bomun Lake Resort (or Bomun Tourist Complex) is a large
							tourist complex around Bomun Lake in the city of Gyeongju, South
							Korea. The resort covers the districts of Bomun-dong,
							Sinpyeong-dong, Amgok-dong and Cheongun-dong. It is situated
							under the ruin of the old fortress on Myeonghwal mountain, 6.5 km
							east of the central Gyeongju and faces Toham mountain. It
							provides lodging, eatery, recreation and sports facilities in the
							city. Although the resort was originally established to attract
							foreign visitors, as the domestic income and desire for tourism
							were increased since the late 1980s, it gained a tremendous
							popularity from domestic visitors. As a result, from onward,
							various facilities have been built for domestic visitors</P>
					</div>



					<div class="item">
						<h2>Gyeongju National Museum</h2>
						<p>
							<img
								src="https://upload.wikimedia.org/wikipedia/commons/1/12/BellofKingSeongdeok.jpg"
								alt="" width="400" height="250">
						</p>
						<p>The Gyeongju National Museum is a museum in Gyeongju, North
							Gyeongsang Province, South Korea. Its holdings are largely
							devoted to relics of the Silla kingdom, of which Gyeongju was the
							capital. The museum is located immediately adjacent to the royal
							tomb complex, in an area which also includes the Gyerim forest,
							Cheomseongdae observatory, Banwolseong palace, and Anapji Pond.</p>
					</div>

					<div class="item">
						<h2>Hwangseong Park</h2>
						<p>
							<img
								src="https://t1.daumcdn.net/cfile/tistory/9939403359AD687607"
								width="400" height="250" alt="">
						</p>
						<P>The Hwangseong Park is a park located in the neighborhood
							of Hwangseong-dong, Gyeongju, North Gyeongsang province, South
							Korea. Many of public sport facilities are located in the park
							with an area of 1,022,350㎡ including a luxuriant pine trees
							forest. The site is originally where Doksan was situated, an
							artificial forest established in regards to feng shui during the
							Silla period. The Doksan forest was used as a training place for
							hwarang warriors, and a recreation venue as well as a hunting
							place for the Silla Kings, especially the 26th ruler, King
							Jinpyeong's favorite place. Since 1975, Hwangseong Park has been
							designated as "city neighborhood park" and currently consists of
							multi-purposed Gyeongju Public Stadium, Football Park with 7
							football fields and one futsal field, and one gymnasium, as well
							as Horimjang field for gukgung or Korean traditional archery and
							a ssireum wrestling ring. In addition, it contains a gateball
							field, an inline skating rink, jogging courses, and cycling
							roads. Among them, the construction of Gyeongju Public Stadium
							was completed in 1982. and can accommodate 20,000 audience.</P>
					</div>

					<div class="item">
						<h2>Gyerim</h2>
						<p>
							<img
								src="https://popco.net/zboard/data/photo_gallery/2015/10/25/1769979898562ce3b09e0b9.JPG"
								width="400" height="250" alt="">
						</p>
						<P>The Gyerim is a small woodland in Gyeongju National Park,
							Gyeongju, South Korea. The name literally means "rooster forest."
							The grove lies near the old site of the Silla kingdom palace in
							central Gyeongju. Nearby landmarks include the Banwolseong
							fortress, Cheomseongdae, the Gyeongju National Museum, and the
							Royal Tombs Complex</P>
					</div>

				</div>
			</div>
		</div>

	</div>

	<div class="imgCard">

		<div class="image">
			<img
				src="https://www.gyeongju.go.kr/upload/content/thumb/20200625/D2B1B07FDDAE42639D179009999E5017.jpg"
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
				Покровский собор). It was built from 1555–1561 on orders from Ivan
				the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
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
						<h2>Daldongnae of Olden Times</h2>
						<p>
							<img
								src="https://www.gyeongju.go.kr/design/tour2019/img/sub/bustago1-13.jpg"
								width="400" height="250" alt="">
						</p>
						<P></P>
					</div>


					<div class="item">
						<h2>Gyeongju World</h2>
						<p>
							<img
								src="https://www.gyeongju.go.kr/upload/content/thumb/20200625/D2B1B07FDDAE42639D179009999E5017.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Gyeongju World is a theme park in Gyeongju,
							Gyeongsangbuk-do, South Korea. Gyeongju World is composed of
							'X-zone', 'Snow sled garden', and 'Wizard Garden'. The 'X-zone'
							is composed of the Paethon, the Megadrop, the Tornado, and the
							Exploration of Grand Canyon. There are ski sleds, adult sleds,
							and children's sleighs in Snow sled garden. Wizard Garden is a
							children's termament with a wide variety of children's rides.</P>
					</div>

					<div class="item">
						<h2>California Beach</h2>
						<p>
							<img
								src="https://gdimg.gmarket.co.kr/1433305484/still/600?ver=1528683653"
								alt="" width="400" height="250">
						</p>
						<p>Wave Canyon-The largest tsunami wave running pool in Korea
							with a length of 320m! It is an exhilarating extreme river as if
							you enjoy rafting in a valley with strong waves coming in a row.
							Summer condition splash-Korea's first, Asia's highest 32m water
							roller coaster Feel the speed and thrill of falling high in a
							super-large water storm in one room...</p>
					</div>
					<div class="item">
						<h2>CM ROLLER</h2>
						<p>
							<img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbWf5M7lbHC683ajOwxVRH_BcQ28kcOO2Tgg&usqp=CAU"
								width="400" height="250" alt="">
						</p>
						<P>ROOLER SKATES</P>
					</div>





				</div>
			</div>
		</div>
	</div>

	</div>

	<div class="imgCard">

		<div class="image">
			<img
				src="https://www.gyeongju.go.kr/design/tour2019/img/sub/course01_img7-1.jpg"
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
				Покровский собор). It was built from 1555–1561 on orders from Ivan
				the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
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
						<h2>Hwangridan-gil</h2>
						<p>
							<img
								src="https://www.gyeongju.go.kr/design/tour2019/img/sub/course01_img7-1.jpg"
								width="400" height="250" alt="">
						</p>
						<P>In recent years, the quiet Hanok houses near Daereungwon
							have been transformed into Hanok hotels and brunch cafés. The
							real name of this place is Poseok Road, but it came to be called
							Hwangridan-gil after people gave the road a nickname inspired by
							the pattern of the Gyeongnidan-gil in Itaewon, Seoul.</P>
					</div>

					<div class="item">
						<h2>Daldongnae of Olden Times</h2>
						<p>
							<img
								src="https://www.gyeongju.go.kr/design/tour2019/img/sub/bustago1-13.jpg"
								width="400" height="250" alt="">
						</p>
						<P></P>
					</div>

					<div class="item">
						<h2>Woljeonggyo Bridge, a picturesque feat of engineering on
							the Namcheon Stream</h2>
						<p>
							<img
								src="https://www.gyeongju.go.kr/design/tour2019/img/sub/moonCourse11.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Woljeonggyo Bridge is a picturesque bridge built over the
							Namcheon Stream (Muncheon Stream). During Silla, it served as a
							passage to Wolseong in the south. Woljeonggyo Bridge became
							particularly famous because it served as the backdrop of a love
							affair between a Buddhist monk named Wonhyo and Princes Yoseok.
							Records of the name Woljeonggyo Bridge was first discovered in a
							passage written by Kim Bu-Sik in his book Samguk Sagi (History of
							the Three Kingdoms) from the 19th year of King Gyeongdeok’s reign
							(Unified Silla). He stated that, “On the Muncheon stream, there
							are two bridges, the Woljeonggyo Bridge and the Chunyanggyo
							bridge.” Since the bridge was lost during the Joseon Dynasty,
							modern archaeologists spent more than ten years to find and
							verify the location of the bridge, and to fully restore its
							features (restoration completed in April 2018). The actual
							construction of the bridge was completed in 2013, but further
							work was required to complete the gatehouses (Munlo門樓) on both
							ends of the bridge. On the second floor of the gatehouse,
							visitors can enjoy a video documentary about the reconstruction
							and view the various exhibited artifacts that were excavated on
							site. Woljeonggyo Bridge looks beautiful in the day, but it looks
							even more stunning at night. You’ll feel yourself welling up with
							emotions when you see the soft lights illuminating the bridge,
							the stream flowing underneath, and the moon shining in the sky.</P>
					</div>

					<div class="item">
						<h2>Donggung Palace and Wolji Pond</h2>
						<p>
							<img
								src="https://www.gyeongju.go.kr/design/tour2019/img/sub/moonCourse13.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Anapji was originally located near the palace of Silla
							called Banwolseong. It is written in Samguk Sagi: "During the era
							of King Munmu, a new pond was made in the palace and flowers and
							birds flourished in this pond". There is also mention of a royal
							reception held by King Gyeongsun in 931, when Silla was already
							crumbling. After the fall of Silla, the pond fell into disrepair
							for many centuries. The name Anapji appears in the 16th century
							Joseon era document Augmented Survey of the Geography of Korea
							(hangul:동국여지승람, hanja:東國輿地勝覽) with the explanation that King
							Munmu made the pond with Taoist aesthetics.[</P>
					</div>

					<div class="item">
						<h2>Cheomseongdae</h2>
						<p>
							<img
								src="https://www.gyeongju.go.kr/design/tour2019/img/sub/moonCourse9.jpg"
								width="400" height="250" alt="">
						</p>
						<P>Cheomseongdae (Hangul: 첨성대) is an astronomical observatory
							in Gyeongju, South Korea. Cheomseongdae means star-gazing tower
							in Korean. Cheomseongdae is the oldest surviving astronomical
							observatory in Asia, and possibly even the world.It was
							constructed in the 7th century in the kingdom of Silla, whose
							capital was Seorabeol, or present-day Gyeongju (Hangul: 경주).
							Cheomseongdae was designated as the country's 31st national
							treasure on December 20, 1962. Modeled on Baekje's Jeomseongdae,
							which now exists only in historical records, the Cheomseongdae
							influenced the construction of a Japanese observatory in 675, and
							Duke Zhou's observatory in China in 723</P>
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
						<span class="comment-author">
							<!-- react-text: 8 -->이은찬<!-- /react-text -->
							<!-- react-text: 9 -->: <!-- /react-text -->
						</span><br>
						<span class="comment-content">경주 어디가 좋나요?</span>
					</div>
				</div>
				<div class="row">
					<div class="comment col-md-12 col-centered">
						<span class="comment-author">
							<!-- react-text: 15 -->한지수<!-- /react-text -->
							<!-- react-text: 16 -->: <!-- /react-text -->
						</span><br>
						<span class="comment-content">외국인 친구들이 가기 좋은 곳 추천이요</span>
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