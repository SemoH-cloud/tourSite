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


  <!--travel place text-->
  <div class="textcontainer" style="font-family: 'Concert One', cursive; margin-top: 160px;">
    <h2 data-splitting="" class="headline headline--yell words chars splitting"
      style="--word-total:1; --char-total:11; font-size: 30px;">
      <span class="char" data-char="t" style="--char-index:0;">T</span>
      <span class="char" data-char="r" style="--char-index:1;">R</span>
      <span class="char" data-char="a" style="--char-index:2;">A</span>
      <span class="char" data-char="v" style="--char-index:3;">V</span>
      <span class="char" data-char="e" style="--char-index:4;">E</span>
      <span class="char" data-char="l" style="--char-index:5;">L</span>
      <span class="char" data-char="_" style="--char-index:6;">_</span>
      <span class="char" data-char="p" style="--char-index:7;">P</span>
      <span class="char" data-char="l" style="--char-index:8;">L</span>
      <span class="char" data-char="a" style="--char-index:9;">A</span>
      <span class="char" data-char="c" style="--char-index:10;">C</span>
      <span class="char" data-char="e" style="--char-index:11;">E</span>
    </h2>

    <br>

  </div>
  <!--card image-->
  <main class="page-content">
    <div class="card">
      <div class="content">
        <h2 class="title">Seoul</h2>
        <p class="copy"> Theme Activity </p><button class="btn">View</button>
      </div>
    </div>
    <div class="card">
      <div class="content">
        <h2 class="title">Gyeongju </h2>
        <p class="copy"> Theme Discovery </p><button class="btn">View</button>
      </div>
    </div>
    <div class="card">
      <div class="content">
        <h2 class="title">Busan</h2>
        <p class="copy">Couple &amp; Friends</p><button class="btn">View</button>
      </div>
    </div>
    <div class="card">
      <div class="content">
        <h2 class="title">Jeju</h2>
        <p class="copy">Theme Relax </p><button class="btn">View</button>
      </div>
    </div>
  </main>

<%@include file="footer.html"%>.
</body>
</html>