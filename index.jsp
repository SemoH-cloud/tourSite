<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Tour Web</title>
<meta name="description" content="tour tips of Korea" />
<meta name="author" content="H&L" />
<link rel="icon" type="image/png" href="/imgs/favicon.ico" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,700&display=swap"
	rel="stylesheet" />

<script src="js/textevent.js"></script>
<link rel="stylesheet" href="css/textevent.css">
<link rel="stylesheet" href="style.css" />
<script src="main.js" defer></script>
</head>
<body>
	<!-- Navbar -->
	<nav id="navbar">
		<div class="navbar_logo">
			<a href="index.jsp"><img src="imgs/heart.gif" alt="icon" /> </a>
		</div>
		<div class="navbar_menu">
			<ul class="navbar_menu">

				<%
					Object userID = session.getAttribute("userID");
				%>

				<li class="navbar_menu_item active"><a href="index.jsp">HOME</a>
				</li>
				<li class="navbar_menu_item"><a href="#about">ABOUT</a></li>
				<li class="navbar_menu_item"><a href="#recommend">RECOMMENDATION</a></li>
				<li class="navbar_menu_item"><a href="#travelTips">TRAVEL_TIPS</a></li>

				<%
					if (userID == null) {
				%>
				<li class="navbar_menu_item"><a href="login.jsp">LOGIN</a></li>
				<li class="navbar_menu_item"><a href="join.jsp">JOIN</a></li>
				<%
					} else {
				%>
				<li class="navbar_menu_item"><a href="logoutAction.jsp">LOGOUT</a></li>
				<li class="navbar_menu_item"><a href="mypage.jsp">MYPAGE</a></li>
				<%
					}
				%>
			</ul>
		</div>

		<!-- toggle btn -->
		<button class="navbar_togglebtn">
			<i class="fas fa-bars"></i>
		</button>
	</nav>

	<!-- Home -->
	<section id="home">
		<div class="video">
			<video muted autoplay loop>
				<source src="imgs/home.mp4" type="video/mp4" width:"1200px" />
				<strong>Your browser does not support the video tag.</strong>
			</video>
		</div>
	</section>

	<!-- About -->

	<section id="about" class="section">

		<h1>ABOUT US</h1>
		<h2 id="about_quote">
			I'M A DREAMER. <br /> AND YOU WILL JOIN US.
		</h2>
		<h3>JOHN LENNON</h3>
		<p id="about_description">
			TRAVEL BRINGS PEOPLE TOGETHER. IT HELPS PEOPLE UNDERSTAND OTHER
			CULTURES.<br /> WHAT WE THINK WE KNOW ABOUT OTHER PALCES IS THROWN
			OUT THE WINDOW, ONCE WE LAND ON THEIR SOIL.
		</p>
		<div class="about_authors">
			<div class="author">
				<img src="imgs\여행.png" alt="img_avatar" class="about_img1" />
				<div class="author_comment">
					<p>
						<span style="font-weight: bold;">Lee</span><br />Lorem ipsum
						dolor sit amet consectetur.
					</p>
				</div>
			</div>

			<div class="author">
				<img src="imgs/조개.png" alt="img_avatar" class="about_img2" />
				<div class="author_comment">
					<p>
						<span style="font-weight: bold;">Han</span><br /> Lorem ipsum
						dolor sit amet consectetur.
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- recommendation -->
	<section id="recommend" class="section">
		<h1>HOT PLACES</h1>
		<h3>we have some recommendations for you</h3>
		<div class="hot_place">
			<a href="" class="place_content"><img src="imgs/seoul.png"
				alt="seoul" class="card_img" />
				<p class="place_description">
					<strong>SEOUL</strong> <br /> the capital of South Korea
				</p></a> <a href="" class="place_content"><img src="imgs/경주.png"
				alt="seoul" class="card_img" />
				<p class="place_description">
					<strong>GYEONG-JU</strong> <br /> the museum without walls <br />
				</p></a> <a href="" class="place_content"><img src="imgs/부산.png"
				alt="seoul" class="card_img" />
				<p class="place_description">
					<strong>BUSAN</strong> <br /> amazing coastal city <br />
				</p></a> <a href="" class="place_content"><img src="imgs/제주.png"
				alt="seoul" class="card_img" />
				<p class="place_description">
					<strong>JEJU</strong> <br /> paradise island <br />
				</p></a>
		</div>
	</section>
	<!-- Travel Tips -->
	<section id="travelTips" class="section">

		<main class="container">
		<h2 data-splitting=""
			class="headline headline--fade words chars splitting"
			style="-word-total: 1; - -char-total: 9; font-size: 30px;">
			<span class="word" data-word="fading" style="-word-index: 0;">
				<span class="char" data-char="t" style="-char-index: 0;">T</span> 
				<span class="char" data-char="r" style="-char-index: 1;">R</span> 
				<span class="char" data-char="a" style="-char-index: 2;">A</span> 
				<span class="char" data-char="v" style="-char-index: 3;">V</span> 
				<span class="char" data-char="e" style="-char-index: 4;">E</span> 
				<span class="char" data-char="l" style="-char-index: 5;">L</span> 
				<span class="char" data-char="_" style="-char-index: 6;">_</span>
				<span class="char" data-char="t" style="-char-index: 7;">T</span> 
				<span class="char" data-char="i" style="-char-index: 8;">I</span> 
				<span class="char" data-char="p" style="-char-index: 9;">P</span>
				<span class="char" data-char="s" style="-char-index: 10;">S</span>
			</span>
		</h2>

		</main>


		<div class="tips_category">
			<button class="tips_btn active">TRANSPORTATION</button>
			<button class="tips_btn">LANGUAGES</button>
			<button class="tips_btn">FOOD</button>
		</div>
		<div class="tips_contents">
			<a href="" class="contents" target="blank"><img src="imgs/버스.png"
				alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Bus</h3>
				</div> </a> <a href="" class="contents" target="blank"><img
				src="imgs/지하철.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Subway</h3>
				</div></a> <a href="" class="contents" target="blank"><img
				src="imgs/택시.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Taxi</h3>
				</div></a> <a href="" class="contents" target="blank"><img
				src="imgs/승용차.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Ect</h3>
				</div></a>
		</div>
	</section>


	<div id="disqus_thread" style="margin: 50px"></div>
	<script>
		/**
		 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
		 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
		/*
		 var disqus_config = function () {
		 this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
		 this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
		 };
		 */
		(function() { // DON'T EDIT BELOW THIS LINE
			var d = document, s = d.createElement('script');
			s.src = 'https://koreatour.disqus.com/embed.js';
			s.setAttribute('data-timestamp', +new Date());
			(d.head || d.body).appendChild(s);
		})();
	</script>
	<noscript>
		Please enable JavaScript to view the <a
			href="https://disqus.com/?ref_noscript">comments powered by
			Disqus.</a>
	</noscript>

	<!-- Contact (Footer) -->
	<section id="contact" class="section">
		<h2 class="contact_title">Contact Us</h2>
		<h3 class="contact_email">tourtips@tips</h3>
		<p class="contact_rights">2020 TourTips Korea - All rights
			reserved</p>

	</section>

	<script id="dsq-count-scr" src="//koreatour.disqus.com/count.js" async></script>




</body>
</html>
</body>
</html>
