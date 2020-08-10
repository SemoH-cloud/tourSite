<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script
    src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="js/bar.js"></script>
  <script src="js/toggleImage.js"></script>
  <link href="css/place_card.css" rel="stylesheet" media="all">
  <link href="css/bar.css" rel="stylesheet" media="all">
  <link href="css/toggleImage.css" rel="stylesheet" media="all">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel="stylesheet" href="https://unpkg.com/splitting@1.0.0/dist/splitting.css">
  <link rel="stylesheet" href="css/textevent.css">
  <script src="js/textevent.js"></script>

<link rel="stylesheet" href="css/style.css" />

  <style>
    .visual-disable {
      display: none;
    }
  </style>


</head>

<body>
<%@include file="menu.html"%>.

  <!-- traveltip text -->
  <div class="wrapper">
    <main class="container" style="font-family: 'Concert One', cursive; margin-top: 60px;">
      <h2 data-splitting="" class="headline headline--fade words chars splitting"
        style="--word-total:1; --char-total:9; font-size: 30px;">
        <span class="word" data-word="fading" style="--word-index:0; ">
          <span class="char" data-char="f" style="--char-index:0;">T</span>
          <span class="char" data-char="a" style="--char-index:1;">R</span>
          <span class="char" data-char="d" style="--char-index:2;">A</span>
          <span class="char" data-char="i" style="--char-index:3;">V</span>
          <span class="char" data-char="n" style="--char-index:4;">E</span>
          <span class="char" data-char="g" style="--char-index:5;">L</span>
          <span class="char" data-char="_" style="--char-index:5;">_</span>
          <span class="char" data-char="f" style="--char-index:6;">T</span>
          <span class="char" data-char="a" style="--char-index:7;">I</span>
          <span class="char" data-char="d" style="--char-index:8;">P</span>
		  <span class="char" data-char="s" style="--char-index:8;">S</span>

        </span>
      </h2>

    </main>



    <!--nav bar-->
    <nav class="tabs">
      <div class="selector" style="width: 187.109px; left: 0px; color:black;"></div>
      <a href="#" id="btn1" class="active"><i class="fab fa-superpowers"></i>Transportation</a>
      <a href="#" id="btn2" class=""><i class="fas fa-hand-rock">Language</i></a>
      <a href="#" id="btn3" class=""><i class="fas fa-bolt"></i>Food</a>
      <a href="#" class=""><i class="fas fa-burn"></i>Preparations</a>
    </nav>
  </div>


  <!-- toggle된 이미지 -->
  <div class="image-item TransportationImage visual-disable" style="display: none;">
    <div class="button-images">
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">SUBWAY</a>
          <img src="image/지하철.png">
        </div>
      </div>
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">TAXI</a>
          <img src="image/택시.png">
        </div>
      </div>
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">BUS</a>
          <div class="button-image"> <img src="image/버스.png"></div>
        </div>
      </div>
      <div class="one_fourth last">
        <div class="button-container">
          <a href="#">CAR</a>
          <img src="image/승용차.png">
        </div>
      </div>

      <div class="clearboth"></div>
    </div>
  </div>


  <div class="image-item LanguageImage visual-disable" style="display: none;">

    <div class="button-images">
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">Street</a>
          <img src="https://cdn.crowdpic.net/list-thumb/thumb_l_552CE819A10305AAF6B626A226D99E33.jpg">
        </div>
      </div>
      <div class="one_fourth">
        <div class="button-container">
          <a href="Language.html">Shopping</a>
          <img src="https://vrthumb.clipartkorea.co.kr/2017/08/04/ti103a4509.jpg">
        </div>
      </div>
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">
            At the hospital</a>
          <div class="button-image"> <img src="image/병원.png"></div>
        </div>
      </div>
      <div class="one_fourth last">
        <div class="button-container">
          <a href="#">
            At a restaurant</a>
          <img src="image/음식점.png">
        </div>
      </div>

      <div class="clearboth"></div>
    </div>

  </div>


  <div class="image-item FoodImage visual-disable" style="display: none;">

    <div class="button-images">
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">　　Bibimbab　　</a>
          <img src="image/비빔밥.png">
        </div>
      </div>
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">Hanjeongsik</a>
          <img src="image/한정식.png">
        </div>
      </div>
      <div class="one_fourth">
        <div class="button-container">
          <a href="#">　　jang-eogu-i</a>
          <div class="button-image"> <img src="image/장어.png"></div>
        </div>
      </div>
      <div class="one_fourth last">
        <div class="button-container">
          <a href="#">Samgyeobsal</a>
          <img src="image/삼겹살.png">
        </div>
      </div>

      <div class="clearboth"></div>
    </div>

  </div>


<%@include file="footer.html"%>.

</body>

</html>