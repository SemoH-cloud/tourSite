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
<link rel="icon" type="image/png" href="imgs/favicon.ico" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
	integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;1,700&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" href="css/textevent.css">
<link rel="stylesheet" href="style.css" />
<script src="js/main.js" defer></script>
</head>
<body>
	<!-- Navbar -->
	<nav id="navbar">
		<div class="navbar_logo">
			<a href="index.jsp"><img src="imgs/heart.gif" alt="icon" /> </a>
		</div>
		
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
  
          <h1 >TRAVEL TIPS</h1>

			<div class="tips_categories">
			<button class="tips_btn selected" data-filter="*">ALL</button>
			<button class="tips_btn" data-filter="trans">TRANSPORTATION</button>
			<button class="tips_btn" data-filter="lan">LANGUAGES</button>
			<button class="tips_btn" data-filter="theme">THEME</button>
		</div>
		<div class="tips_contents">
				<a href="" class="content" target="blank" data-type="trans"><img src="imgs/버스.png"
				alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Bus</h3>
				</div> </a> <a href="" class="content" target="blank" data-type="trans"><img
				src="imgs/지하철.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Subway</h3>
				</div></a> <a href="" class="content" target="blank" data-type="trans"><img
				src="imgs/택시.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Taxi</h3>
				</div></a> <a href="" class="content" target="blank" data-type="trans"><img
				src="imgs/승용차.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Ect</h3>
				
				
				</div></a> <a href="" class="content" target="blank" data-type="lan"><img
				src="imgs/airport.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Airport</h3>
					</div></a> <a href="" class="content" target="blank" data-type="lan"><img
				src="imgs/airport.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Airport</h3>
					</div></a> <a href="" class="content" target="blank" data-type="lan"><img
				src="imgs/airport.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Airport</h3>
					</div></a> <a href="" class="content" target="blank" data-type="lan"><img
				src="imgs/airport.png" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Airport</h3>
				
				
					</div></a> <a href="" class="content" target="blank" data-type="theme"><img
				src="imgs/temple.jpg" alt="temple" class="content_img" />
				<div class="tips_description">
					<h3>Temple stay</h3>
					</div></a> <a href="" class="content" target="blank" data-type="theme"><img
				src="imgs/palace.png" alt="palace" class="content_img" />
				<div class="tips_description">
					<h3>Palace tour</h3>
					</div></a> <a href="" class="content" target="blank" data-type="theme"><img
				src="imgs/chimac.jpg" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Drinking</h3>
					</div></a> <a href="" class="content" target="blank" data-type="theme"><img
				src="imgs/shop.jpg" alt="bus" class="content_img" />
				<div class="tips_description">
					<h3>Shopping</h3>
				</div></a>
			
		</div>
	</section>


<!-- comment -->
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
