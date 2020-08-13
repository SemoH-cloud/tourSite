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

.BUSAN {
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
	.BUSAN {
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
	<!-- BUSAN 설명-->


	<div class="topContent">
		<div>
			<h3 class="BUSAN">
				<B> BUSAN </B>
			</h3>
		</div>

		<!-- player-->
		<div>
			<iframe class="play" width="550" height="415"
				src="https://www.youtube.com/embed/wNbqnkhm28s" frameborder="0"
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
			<b>부산 인기 있는 숙소 Best4</b>
		</h2>
	</div>

	
   <ul class="card-list">
<li class="card">
        <a class="card-image" href="https://www.agoda.com/ko-kr/hilton-busan_2/hotel/busan-kr.html?finalPriceView=0&isShowMobileAppPrice=false&cid=1829971&tag=747e9723-83df-6f99-853a-8505c70753f7&numberOfBedrooms=&familyMode=false&isAgMse=false&ccallout=false&defdate=false&adults=2&children=0&rooms=1&maxRooms=9&checkIn=2020-08-14&childAges=&defaultChildAge=8&travellerType=1&los=2&searchrequestid=f681bc41-72dc-4111-8ed3-3f3c6de4de06" target="_blank" style="background-image: url(https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAxMTNfMTM5%2FMDAxNTc4OTI2Mzc4NTg5._p03a3WtoaTJwLUkcpWmCOYH03Nu25CTYsjNoxhDnUwg.L5NeaMhXmz5tlTst-sEjUl1g29fL2ioPBGpMnKCIOvUg.JPEG.dlwltn1344%2Fbeauty_1578730756270.jpeg&type=sc960_832);" data-image-full="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAxMTNfMTM5%2FMDAxNTc4OTI2Mzc4NTg5._p03a3WtoaTJwLUkcpWmCOYH03Nu25CTYsjNoxhDnUwg.L5NeaMhXmz5tlTst-sEjUl1g29fL2ioPBGpMnKCIOvUg.JPEG.dlwltn1344%2Fbeauty_1578730756270.jpeg&type=sc960_832">
        <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAxMTNfMTM5%2FMDAxNTc4OTI2Mzc4NTg5._p03a3WtoaTJwLUkcpWmCOYH03Nu25CTYsjNoxhDnUwg.L5NeaMhXmz5tlTst-sEjUl1g29fL2ioPBGpMnKCIOvUg.JPEG.dlwltn1344%2Fbeauty_1578730756270.jpeg&type=sc960_832" alt="" />
      </a>
      <h2>힐튼 부산</h2>
          <p>평점 9.5</p>
        <p>393,630/1박</p>
      </a>
    </li>
      
    
    
    
        <li class="card">
        <a class="card-image" href="https://www.agoda.com/ko-kr/shilla-stay-haeundae/hotel/busan-kr.html?checkIn=2020-08-14&los=2&adults=2&rooms=1&cid=1829971&tag=747e9723-83df-6f99-853a-8505c70753f7&searchrequestid=37f2d9e2-17e3-4db9-9323-d922ddca78a4&travellerType=1" target="_blank" style="background-image: url(https://pix6.agoda.net/hotelImages/411/411082/411082_17100407500057080288.jpg?s=1024x768);" data-image-full="https://pix6.agoda.net/hotelImages/411/411082/411082_17100407500057080288.jpg?s=1024x768">
        <img src="https://pix6.agoda.net/hotelImages/411/411082/411082_17100407500057080288.jpg?s=1024x768" alt="" />
      </a><h2>파크하얏트 부산</h2>
        <p>평점 9.6</p>
        <p>272,784/1박</p>
    </li>
    
    
    
        <li class="card">
        <a class="card-image" href="https://www.agoda.com/ko-kr/shilla-stay-haeundae/hotel/busan-kr.html?checkIn=2020-08-14&los=2&adults=2&rooms=1&cid=1829971&tag=747e9723-83df-6f99-853a-8505c70753f7&searchrequestid=37f2d9e2-17e3-4db9-9323-d922ddca78a4&travellerType=1" target="_blank" style="background-image: url(https://pix6.agoda.net/hotelImages/197/1974844/1974844_17070407450054231805.jpg?s=1024x768);" data-image-full="https://pix6.agoda.net/hotelImages/197/1974844/1974844_17070407450054231805.jpg?s=1024x768">
        <img src="" alt="https://pix6.agoda.net/hotelImages/197/1974844/1974844_17070407450054231805.jpg?s=1024x768" />
      </a><h2>신라스테이 해운대</h2>
      
        <p>평점 9.1</p>
        <p>114,928/1박</p>
      </li>



    
    
        <li class="card">
        <a class="card-image" href="#" target="_blank" style="background-image: url(https://pix6.agoda.net/hotelImages/478/478872/478872_16061608150043627788.jpg?s=1024x768);" data-image-full="https://pix6.agoda.net/hotelImages/478/478872/478872_16061608150043627788.jpg?s=1024x768">
        <img src="https://www.agoda.com/ko-kr/hanwha-resort-haeundae_7/hotel/busan-kr.html?asq=LSjvWUk4lFLqWhweZfqir5ufa9Vwpz6XltTHq4n%2B9gM6vuDTghavJ%2F6Df0XuSRYLHLbHN2STaoygK5OpVCswuBg7gci6d%2Ff48Tlu%2FIv29QU4bejN3LxEDm4tCHHdwvUysjL829Tgr8n2OhQuL9kARdjQb7OOe5Tsadnq48WlMz1eLJfz%2FwcneNION8eho7JVnUdgTMQ6rK92jH7BLrLEdw4bQgsp3%2FGqKvdNYfHJICVto9352dmhO7KvjFJ8mvfgYjFAtTLYa9%2F7xNZhJyNklg%3D%3D&hotel=478872&cid=1829971&tag=747e9723-83df-6f99-853a-8505c70753f7&tick=637329172304&txtuuid=1b9b0b26-307d-47ed-babc-4ff59f5f3199&languageId=9&userId=37f7ba6f-3b1e-49fe-b17f-2862064ddaaf&sessionId=flfkpthbxbtv0m45y0utwsfs&pageTypeId=7&origin=KR&locale=ko-KR&aid=82361&currencyCode=KRW&htmlLanguage=ko-kr&cultureInfoName=ko-KR&ckuid=37f7ba6f-3b1e-49fe-b17f-2862064ddaaf&prid=0&checkIn=2020-09-09&checkOut=2020-09-18&rooms=1&adults=2&childs=0&priceCur=KRW&los=9&textToSearch=%ED%95%9C%ED%99%94%EB%A6%AC%EC%A1%B0%ED%8A%B8%20%ED%95%B4%EC%9A%B4%EB%8C%80&productType=-1&travellerType=1&familyMode=off
        " alt="" />
      </a><h2>한화리조트 해운대</h2>
            <p>평점 9.2</p>
        <p>118,422/1박</p>
    </li>
  
  </ul>


<!--  추천 음식점 -->

 <div class="imgCardText"><h2><b>맛집 Best4</b></h2></div>

<ul class="card-list">
     
    
    <li class="card">
        <a class="card-image" href="#" target="_blank" style="background-image: url(https://t1.daumcdn.net/liveboard/dailylife/407fad79baff4ee48f9e0f6057fc75ff.jpg);" data-image-full="https://t1.daumcdn.net/liveboard/dailylife/407fad79baff4ee48f9e0f6057fc75ff.jpg">
        <img src="https://t1.daumcdn.net/liveboard/dailylife/407fad79baff4ee48f9e0f6057fc75ff.jpg" alt="" />
      </a>

        <h2>부산밀면뚝배기</h2>
          <p>평점 4.6</p>
        <p>Best1:밀면, 국수</p>
      </a>
    </li>
    
    
    <li class="card">
        <a class="card-image" href="#" target="_blank" style="background-image: url(https://lh3.googleusercontent.com/proxy/o3s11ag3PifbRqQaIGy4Utr8Hr-hp4VhSJMlpRT5Q80p8_7FLRniC1FjhjFCOX0nAVF_yHLJDkE3snt0z9ies0vCmI5OsCqoGi4-8CZa37teLZAxgIH4pasuAlV46ESQrCl6sDxFC_poH_Q2WtTii5OFH6ruL0skCC0IADpXSVygc0s0NszkLDa2ddFQvrkLvQGdg_Pcfypivp5HKV9Jx8a17XwHLF4SEriWsld-vocry1aKg9etp-B2D0xmoZsbRltp4KHi3_JNzYdqHUuuMpq_8EH4SArH-HQC9OGdfyKi9KT71ckU);" data-image-full="https://lh3.googleusercontent.com/proxy/o3s11ag3PifbRqQaIGy4Utr8Hr-hp4VhSJMlpRT5Q80p8_7FLRniC1FjhjFCOX0nAVF_yHLJDkE3snt0z9ies0vCmI5OsCqoGi4-8CZa37teLZAxgIH4pasuAlV46ESQrCl6sDxFC_poH_Q2WtTii5OFH6ruL0skCC0IADpXSVygc0s0NszkLDa2ddFQvrkLvQGdg_Pcfypivp5HKV9Jx8a17XwHLF4SEriWsld-vocry1aKg9etp-B2D0xmoZsbRltp4KHi3_JNzYdqHUuuMpq_8EH4SArH-HQC9OGdfyKi9KT71ckU">
        <img src="https://lh3.googleusercontent.com/proxy/o3s11ag3PifbRqQaIGy4Utr8Hr-hp4VhSJMlpRT5Q80p8_7FLRniC1FjhjFCOX0nAVF_yHLJDkE3snt0z9ies0vCmI5OsCqoGi4-8CZa37teLZAxgIH4pasuAlV46ESQrCl6sDxFC_poH_Q2WtTii5OFH6ruL0skCC0IADpXSVygc0s0NszkLDa2ddFQvrkLvQGdg_Pcfypivp5HKV9Jx8a17XwHLF4SEriWsld-vocry1aKg9etp-B2D0xmoZsbRltp4KHi3_JNzYdqHUuuMpq_8EH4SArH-HQC9OGdfyKi9KT71ckU" alt="" />
      </a>

        <h2>부산 고옥</h2>
        <p>평점 5.0</p>
        <p>Best2:장어 덮밥</p>
    </li>
    
    
    <li class="card">
        <a class="card-image" href="#" target="_blank" style="background-image: url(https://file3.instiz.net/data/file3/2018/03/11/5/a/8/5a802fabf3d6fbf865934b98b253754b.jpg);" data-image-full="https://file3.instiz.net/data/file3/2018/03/11/5/a/8/5a802fabf3d6fbf865934b98b253754b.jpg">
        <img src="https://file3.instiz.net/data/file3/2018/03/11/5/a/8/5a802fabf3d6fbf865934b98b253754b.jpg" alt="" />
      </a>

        <h2>늘해랑 돼지국밥</h2>
      
        <p>평점 4.2</p>
        <p>Best3:돼지국밥</p>
      </li>



    
    <li class="card">
        <a class="card-image" href="#" target="_blank" style="background-image: url(https://instagram.ffra2-1.fna.fbcdn.net/v/t51.2885-15/e35/66165465_156331082172300_196606035679401973_n.jpg?_nc_ht=instagram.ffra2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=dEyTVYuhu94AX9ox_fx&se=7&oh=d480802b32f6949320ec8f1b9da89a5e&oe=5F424040&ig_cache_key=MjA5MjU2NTc0MjYwNDkyNDI1Nw%3D%3D.2);" data-image-full="https://instagram.ffra2-1.fna.fbcdn.net/v/t51.2885-15/e35/66165465_156331082172300_196606035679401973_n.jpg?_nc_ht=instagram.ffra2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=dEyTVYuhu94AX9ox_fx&se=7&oh=d480802b32f6949320ec8f1b9da89a5e&oe=5F424040&ig_cache_key=MjA5MjU2NTc0MjYwNDkyNDI1Nw%3D%3D.2">
        <img src="https://instagram.ffra2-1.fna.fbcdn.net/v/t51.2885-15/e35/66165465_156331082172300_196606035679401973_n.jpg?_nc_ht=instagram.ffra2-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=dEyTVYuhu94AX9ox_fx&se=7&oh=d480802b32f6949320ec8f1b9da89a5e&oe=5F424040&ig_cache_key=MjA5MjU2NTc0MjYwNDkyNDI1Nw%3D%3D.2" alt="" />
      </a>

        <h2>부산 외식 1번가</h2>
            <p>평점 4.1</p>
        <p>Best4:돼지갈비, 소고기</p>
    </li>
  
  </ul>



 <div class="imgCardText"><h2><b>테마 별 추천 여행 코스 Best4</b></h2></div>
    <!--image card-->

    <div class="imgCard">

        <div class="image"><img
                src="https://upload.wikimedia.org/wikipedia/commons/8/81/Korea-Busan-Beomeosa_Iljumun_6410-07.JPG"
                width="400" height="250" alt=""></div>
        <div class="cardTitle">
            <h3>Discovery</h3>
        </div>
        <div class="cardContent">
            <p>The Cathedral of Vasily the Blessed (Russian: Собор Василия Блаженного, Sobor Vasiliya Blazhennogo),
                commonly known as Saint Basil's Cathedral, is a church in Red Square in Moscow, Russia. The building,
                now a museum, is officially known as the Cathedral of the Intercession of the Most Holy Theotokos on the
                Moat (Russian: Собор Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy Bogoroditsy,
                chto na Rvu) or Pokrovsky Cathedral (Russian: Покровский собор).[5] It was built from 1555–1561 on
                orders from Ivan the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
        </div>
        <div class="cardBotton"><a href="javascript:;"></a><button type="button" id="discovery"
                class="btn btn-light">바로가기</a></button></div>

    </div>

    <div class="course">

        <!--course1-->
        <div class="itemWrap discovery-item">
            <h1 style="text-align: center;">course1: Discovery </h1>
            <div class="fullwidth">

                <div class="timeline group">
                    <div class="item">
                        <h2>
                            Beomeosa</h2>
                        <p><img src="https://upload.wikimedia.org/wikipedia/commons/8/81/Korea-Busan-Beomeosa_Iljumun_6410-07.JPG"
                                width="400" height="250" alt=""></p>
                        <P>Beomeosa (Temple of the Nirvana Fish) is a head temple of the Jogye Order of Korean Buddhism in Cheongnyong-dong, Geumjeong-gu, Busan, South Korea. Built on the slopes of Geumjeongsan, it is one of the country's best known urban temples.</P>
                    </div>

                    <div class="item">
                        <h2>
                            Yongdusan Park</h2>
                        <p><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Yongdusan_Park_at_night.jpg/800px-Yongdusan_Park_at_night.jpg"
                                width="400" height="250" alt=""> </p>
                        <P>Yongdusan Park is a park located in Jung-gu, Busan, South Korea. The 120-meter-high Busan Tower is located here.

Yongdu means “dragon’s head” and “san” means “mountain”. The name is an allusion to the similarity of the mountain park, which is said to resemble a dragon’s head. The park occupies an area of 69,000 square meters. It has 70 different species of trees growing in it.</P>
                    </div>

                    <div class="item">
                        <h2>Gukje Market</h2>
                        <p><img src="https://img6.yna.co.kr/photo/yna/YH/2014/12/28/PYH2014122804300005100_P2.jpg"
                                alt="" width="400" height="250"></p>
                        <p>Gukje Market or Nampodong International Market is a market in Sinchang-dong, Jung District, Busan, South Korea.</p>
                    </div>

                    <div class="item">
                        <h2>Geumjeongsanseong</h2>
                        <p><img src="https://t1.daumcdn.net/cfile/tistory/2743DF37524A278D2F" width="400" height="250" alt=""></p>
                        <P>Geumjeongsanseong (literally Geungjeong Mountain Fortress or Geumjeong Fortress) is the largest mountain fortress in the Republic of Korea today. It is located on Geumjeongsan in the Busan Metropolitan City.

Following the Japanese invasion of 1592 and the Manchu invasion in 1627 and again in 1637, awareness of the necessity of national defence was heightened, especially against attacks from the sea. As a result of this awareness, this fortress was built in the 29th year (1703) of the reign of King Sukjong. The inner and the outer walls were mainly built of natural stones, but weak portions were reinforced with artificially worked square stone blocks. The walls are about 17 kilometers in length and from 1.5 meters to 3 meters in height. The area surrounded by the fortress is about 8.2 square kilometers.

It is clear that fortresses had been already built on this site before 1700. Yi Chi-hong, a naval commander, left a record in 1667 in which he mentions traces of an old fortress on the site. The construction of the fortress began in 1701 at the recommendation of Jo Tae-dong, the Governor of Gyeongsang-do, and was completed in 1702. In 1707 the walls were built around the main structure of the fortress. This fortress fell to disuse because it was too large to maintain. After lying empty for a century, it was repaired in 1807, the seventh year of the reign of King Sunjo. Oh Han-won, the Dongnae Magistrate, took the responsibility for building the west gate in 1807, and the other gates the following year. There is a stele recording the building of the gates.

The fortress was destroyed during the Japanese occupation (1910-1945), but began to be restored in 1972. The East, West and South gates were restored by 1974 and the north gate was rebuilt in 1989. Today, thanks to the restoration efforts, much of the walls and the four gates still stand. Of the 4 existing observation towers, the tower number 1 (제1망루) located on the south-west side was destroyed by the typhoon Rusa on the morning of September 1, 2002.[1] The area around the South Gate is a popular resting place. The West Gate, even though it is the most impressive of the four, is the less frequented one due to its lack of accessibility.</P>
                    </div>

               
                </div>
            </div>
        </div>
    </div>


    <div class="imgCard">

        <div class="image"><img
                src="https://t1.daumcdn.net/cfile/tistory/9935CE335D7E1AE004"
                width="400" height="250" alt=""></div>
        <div class="cardTitle">
            <h3>Relax</h3>
        </div>
        <div class="cardContent">
            <p>The Cathedral of Vasily the Blessed (Russian: Собор Василия Блаженного, Sobor Vasiliya Blazhennogo),
                commonly known as Saint Basil's Cathedral, is a church in Red Square in Moscow, Russia. The building,
                now a museum, is officially known as the Cathedral of the Intercession of the Most Holy Theotokos on the
                Moat (Russian: Собор Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy Bogoroditsy,
                chto na Rvu) or Pokrovsky Cathedral (Russian: Покровский собор).[5] It was built from 1555–1561 on
                orders from Ivan the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
        </div>
        <div class="cardBotton"><a href="javascript:;"></a><button type="button" id="relax"
                class="btn btn-light">바로가기</a></button></div>


    </div>

    <div class="course">

        <!--course2-->
        <div class="itemWrap relax-item">
            <h1 style="text-align: center;" id="course2">course2: Relax </h1>
            <div class="fullwidth2">

                <div class="timeline group">

                    <div class="item">
                        <h2>
                            Oryukdo</h2>
                        <p><img src="https://t1.daumcdn.net/cfile/tistory/9935CE335D7E1AE004"
                                width="400" height="250" alt=""></p>
                        <P>Oryukdo (literally meaning Five–Six island) is group of islands located in Yongho-dong, Nam-gu, Busan. The name reflects the fact that the island group can consist of either five or six islands, depending on the current tides.

The islands are uninhabited except for Deungdaedo, which has a lighthouse. The other islands are Usakdo, Surido, Gonggotdo, and Guldo. Depending on water level, Usakdo can also be separated into two islands, which are then named Bangpaedo and Sol.[3]

The Oryukdo Skywalk is a glass viewing platform positioned on a cliff overlooking the islands which opened in 2013</P>
                    </div>



                    <div class="item">
                        <h2>Oryukdo SkyWalk</h2>
                        <p><img src="https://lh3.googleusercontent.com/proxy/b9FGHIbY2z40KdXHP9kbHUS_CBSAjy99ORus1Cw5HykZa5xec1Y7cjCF40Kvu818ZQdB_fLVzvrjmRKlsi4lbeRoXvTvmXlfEFJcLNxq3Wr986d2w7lqpPdQjIE8OA"
                                alt="" width="400" height="250"></p>
                        <p>The old regional name for the area of Oryukdo Skywalk was Seungdumal, as the shape resembles a saddle, and it was originally called Seungduma as well as Jallokgae by residents and women divers.

The construction of Oryukdo Skywalk finished on September 12, 2012 at the Seungdumal area, which is regarded as the dividing point between the East Sea and the South Sea, and started operating on October 18, 2013, with the theme of "Walking over the sky.”

Iron columns were set up over a 35-meter-high coastal cliff, and a 15-meter glass bridge comprised of 24 glass plates and shaped like a horse’s hoof connect the iron columns. The bottom of the glass was specially produced with four attached 12-millimeter glass pieces coated with a bulletproof film that has a thickness of 55.49 millimeters, making the structure quite safe.

Visitors will be thrilled with the view of the waves while looking down through the transparent floor. The sea stretches out ahead of the skywalk, perfect for a photo op, as well as the best spot to see Daemado Island on sunny days.</p>
                    </div>

                    <div class="item">
                        <h2>Busan Air Cruise</h2>
                        <p><img src="https://www.busaninnews.co.kr/news/photo/201706/2621_6514_2554.jpg"
                                width="400" height="250" alt=""></p>
                        <P>Busan Air Cruise was built to revive the reputation of Songdo Beach, the first public beach in Korea opened nearly 30 years ago.</P>
                    </div>

                    <div class="item">
                        <h2>Busan Citizens Park</h2>
                        <p><img src="https://lh3.googleusercontent.com/proxy/5a0SWkFUA6zhyYDoOH1wWCgL8Z5njm3K--KcJrm4JmoSD3LGsHswRiEE1l5TxRyrk5r2AAIIxpJGKHdVlxelPxnvGhPCl6YBZc7QkFOjuuJqweytwashZYrTmjT582uXQlIY"
                                width="400" height="250" alt=""></p>
                        <P>Busan Citizens Park (formerly Camp Hialeah) is a former Imperial Japanese Army base and United States Army camp located in the Busanjin District of the city of Busan, South Korea. The Camp occupying 133-acre (540,000 m2) of prime real estate was closed on 10 August 2006 and handed back to the Busan city government. It was redeveloped as the Busan Citizens Park (Korean: 부산시민공원) and opened on 1 May 2014</P>
                    </div>

                    <div class="item">
                        <h2>Taejongdae</h2>
                        <p><img src="https://lh3.googleusercontent.com/proxy/Z2Xh5za8bkFHy9B7qwEV8s9ZmCx6nUi8ss0bxD1CTBAfFFqZei_mH1WkTjNHKsvj2ZDB82EULzHy-HgvFxhqZNpNPU-VbwiJVPlpu-x2MmJJ_3qDv6JzDfee6-PyXp75mEA9TIltoy2QhS7SSFmHTq4ErWRFnIXaBBLt5rbDjuVJlKi5iD-mTqISap7f2emE-JUU33E5G_F-sSsxASZe3eNWiGhXg1i8U1qqu1ZziTjVU7Tutiy1T-ZH9bSyce6mZC3IgGdT35ouX5WfBmJ0U53H17UrNj2O3A"
                                width="400" height="250" alt=""></p>
                        <p>Taejongdae is a natural park of Busan, South Korea with magnificent cliffs facing the open sea on the southernmost tip of island of Yeongdo-gu.[1] It is a representative visitor attraction of Busan where has dense evergreen trees and several facilities for tourists such as an observatory, an amusement park, a light house, a cruise ship terminal. It is said that its name to have taken from King Taejong Muyeol (604 - 661), the 29th king of Silla Kingdom who liked to practice archery the place after the unification of the Three Kingdoms of Korea. Taejongdae is designated as the 28 Busan monument, along with Oryukdo Island.</p>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="imgCard">

        <div class="image"><img src="https://img6.yna.co.kr/etc/inner/KR/2015/07/23/AKR20150723168100051_01_i_P2.jpg" width="400"
                height="250" alt=""></div>
        <div class="cardTitle">
            <h3>Activity</h3>
        </div>
        <div class="cardContent">
            <p>The Cathedral of Vasily the Blessed (Russian: Собор Василия Блаженного, Sobor Vasiliya Blazhennogo),
                commonly known as Saint Basil's Cathedral, is a church in Red Square in Moscow, Russia. The building,
                now a museum, is officially known as the Cathedral of the Intercession of the Most Holy Theotokos on the
                Moat (Russian: Собор Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy Bogoroditsy,
                chto na Rvu) or Pokrovsky Cathedral (Russian: Покровский собор).[5] It was built from 1555–1561 on
                orders from Ivan the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
        </div>
        <div class="cardBotton"><a href="javascript:;"></a><button type="button" id="activity"
                class="btn btn-light">바로가기</a></button></div>

    </div>

    <div class="course">
        <!--course3-->
        <div class="itemWrap activity-item">
            <h1 style="text-align: center;" id="course3">course3: Activity </h1>
            <div class="fullwidth3">

                <div class="timeline group">
                    <div class="item">
                        <h2>
                            Jagalchi Market</h2>
                        <p><img src="https://upload.wikimedia.org/wikipedia/commons/7/70/Korea-Busan-Jagalchi_Market-04.jpg"
                                width="400" height="250" alt=""></p>
                        <P>Jagalchi Fish Market is a fish market in the neighborhood of Nampo-dong in Jung-gu, and Chungmu-dong, Seo-gu, Busan, South Korea.[1] The market is located on the edge of Nampo Port (남포항), Busan. It is considered to be the largest fish market in South Korea.[2]

The name is said to have originated from jagal (자갈 gravel in Korean) because the market used to be surrounded by gravel.[3] This is one of the ten landmarks of Busan, so many tourists visit there to shop.</P>
                    </div>

                    <div class="item">
                        <h2>
                            Sea Life Busan Aquarium</h2>
                        <p><img src="https://www.week-n.com/upload/master/shop_1af14ea88f7ae446a022fa815cfd7991.PNG"
                                width="400" height="250" alt=""> </p>
                        <P>Sea Life Busan Aquarium is an aquarium located in Haeundae Beach, South Korea</P>
                    </div>

                    <div class="item">
                        <h2>Trick Eye Museum</h2>
                        <p><img src="https://trickeye.com/images/sub/whatsinside/main_img02.png"
                                alt="" width="400" height="250"></p>
                        <p>Trick Eye is shortened from ‘Trick of the eye’ and refers to a traditional art technique Trompe-l’oeil that turns two-dimensional paintings into three-dimensional images through the use of optical illusions. Paintings on museum walls, floors and ceilings come alive! Visitors are invited to step inside Trickeye paintings and installations and create their own original stories.</p>
                    </div>

                    <div class="item">
                        <h2>Haeundae Beach</h2>
                        <p><img src="https://www.busan.go.kr/resource/img/geopark/sub/busantour/busantour1.jpg"
                                width="400" height="250" alt=""></p>
                        <P>Haeundae Beach is an urban beach in Busan, South Korea. Often dubbed one of the country's most famous and popular beaches, it is located in the eponymous Haeundae District.[1]

The beach is busy year-round, and various festivals are held there throughout the year. A popular beach event, "Polar Bear Club", during which participants bath in near freezing water, has been held annually since 1988 in January.[2]

Haeundae is closely associated with cinema, as it partly hosts the Busan International Film Festival, and was featured prominently in the 2009 disaster film Tidal Wave.[3]

Popular sights near the beach include Dongbaekseom, at its west end, which is a popular fishing area. Oryukdo, a group of small islets east of the beach, which are considered a symbol of Busan. The neighborhood surrounding Haeundae is home to most of Busan's expatriate population.[1]

Due to its fame, Haeundae is one of the most expensive areas in South Korea, and the most expensive outside of the Seoul Capital Area. This has led to numerous urban development projects near the beach and the nearby Marine City, including skyscrapers such as Haeundae Doosan We've the Zenith and Haeundae LCT The Sharp.</P>
                    </div>

                    <div class="item">
                        <h2>Seven Luck Casino, Busan Lotte
                        </h2>
                        <p><img src="https://www.busanparadisehotel.co.kr/resource/images/pc/casino/img_casino1_1.jpg"
                                width="400" height="250" alt=""></p>
                        <p>casino</p>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="imgCard">

        <div class="image"><img
                src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191227195621319_erhte"
                width="400" height="250" alt=""></div>
        <div class="cardTitle">
            <h3>Couple & Friends</h3>
        </div>
        <div class="cardContent">
            <p>The Cathedral of Vasily the Blessed (Russian: Собор Василия Блаженного, Sobor Vasiliya Blazhennogo),
                commonly known as Saint Basil's Cathedral, is a church in Red Square in Moscow, Russia. The building,
                now a museum, is officially known as the Cathedral of the Intercession of the Most Holy Theotokos on the
                Moat (Russian: Собор Покрова Пресвятой Богородицы, что на Рву, Sobor Pokrova Presvyatoy Bogoroditsy,
                chto na Rvu) or Pokrovsky Cathedral (Russian: Покровский собор).[5] It was built from 1555–1561 on
                orders from Ivan the Terrible and commemorates the capture of Kazan and Astrakhan.</p>
        </div>
        <div class="cardBotton"><a href="javascript:;"></a><button type="button" id="couple"
                class="btn btn-light">바로가기</a></button></div>

    </div>

    <div class="course">

        <!--course4-->
        <div class="itemWrap couple-item">
            <h1 style="text-align: center;" id="course4">course4: Couple & Friends </h1>
            <div class="fullwidth4">

                <div class="timeline group">

                   <div class="item">
                        <h2>Haeundae Beach</h2>
                        <p><img src="https://www.busan.go.kr/resource/img/geopark/sub/busantour/busantour1.jpg"
                                width="400" height="250" alt=""></p>
                        <P>Haeundae Beach is an urban beach in Busan, South Korea. Often dubbed one of the country's most famous and popular beaches, it is located in the eponymous Haeundae District.[1]

The beach is busy year-round, and various festivals are held there throughout the year. A popular beach event, "Polar Bear Club", during which participants bath in near freezing water, has been held annually since 1988 in January.[2]

Haeundae is closely associated with cinema, as it partly hosts the Busan International Film Festival, and was featured prominently in the 2009 disaster film Tidal Wave.[3]

Popular sights near the beach include Dongbaekseom, at its west end, which is a popular fishing area. Oryukdo, a group of small islets east of the beach, which are considered a symbol of Busan. The neighborhood surrounding Haeundae is home to most of Busan's expatriate population.[1]

Due to its fame, Haeundae is one of the most expensive areas in South Korea, and the most expensive outside of the Seoul Capital Area. This has led to numerous urban development projects near the beach and the nearby Marine City, including skyscrapers such as Haeundae Doosan We've the Zenith and Haeundae LCT The Sharp.</P>
                    </div>

                   <div class="item">
                        <h2>Oryukdo SkyWalk</h2>
                        <p><img src="https://lh3.googleusercontent.com/proxy/b9FGHIbY2z40KdXHP9kbHUS_CBSAjy99ORus1Cw5HykZa5xec1Y7cjCF40Kvu818ZQdB_fLVzvrjmRKlsi4lbeRoXvTvmXlfEFJcLNxq3Wr986d2w7lqpPdQjIE8OA"
                                alt="" width="400" height="250"></p>
                        <p>The old regional name for the area of Oryukdo Skywalk was Seungdumal, as the shape resembles a saddle, and it was originally called Seungduma as well as Jallokgae by residents and women divers.

The construction of Oryukdo Skywalk finished on September 12, 2012 at the Seungdumal area, which is regarded as the dividing point between the East Sea and the South Sea, and started operating on October 18, 2013, with the theme of "Walking over the sky.”

Iron columns were set up over a 35-meter-high coastal cliff, and a 15-meter glass bridge comprised of 24 glass plates and shaped like a horse’s hoof connect the iron columns. The bottom of the glass was specially produced with four attached 12-millimeter glass pieces coated with a bulletproof film that has a thickness of 55.49 millimeters, making the structure quite safe.

Visitors will be thrilled with the view of the waves while looking down through the transparent floor. The sea stretches out ahead of the skywalk, perfect for a photo op, as well as the best spot to see Daemado Island on sunny days.</p>
                    </div>

                   <div class="item">
                        <h2>Busan Air Cruise</h2>
                        <p><img src="https://www.busaninnews.co.kr/news/photo/201706/2621_6514_2554.jpg"
                                width="400" height="250" alt=""></p>
                        <P>Busan Air Cruise was built to revive the reputation of Songdo Beach, the first public beach in Korea opened nearly 30 years ago.</P>
                    </div>

                    <div class="item">
                        <h2>Busan Jeonpo-dong Cafe Alley</h2>
                        <p><img src="https://www.visitbusan.net/uploadImgs/files/cntnts/20191227195621319_erhte"
                                width="400" height="250" alt=""></p>
                        <P>The Seomyeon area is easily one of Busan's busiest hubs. Filled with restaurants, bars, stores and lots of people, it can be a little overwhelming, at times.

But, there is respite not far from the heart of down-town. Just a short walk away lies Jeonpo-dong (neighborhood). It's where Jeonpo Cafe Street provides numerous calmer opportunities for a lovely cup of coffee, a tasty dessert and unique atmosphere. </P>
                    </div>

                    <div class="item">
                        <h2>Gamcheon Culture Village</h2>
                        <p><img src="https://upload.wikimedia.org/wikipedia/commons/4/49/Gamcheon_Colored_Houses%2C_Busan%2C_Korea.jpg"
                                width="400" height="250" alt=""></p>
                        <p>Gamcheon Culture Village (Korean: 감천문화마을; Hanja: 甘川文化마을) is a town within Gamcheon-dong, Saha District, Busan, South Korea. The area is known for its layered streets, twisted labyrinth-like alleys, and brightly painted houses, which have been restored and enhanced in recent years to attract tourism.[1] Built on a steep mountain-side slope, the village has been nicknamed "Korea's Santorini," as well as the "Machu Picchu of Busan". </p>

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
						<span class="comment-content">부산 어디가 좋나요?</span>
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