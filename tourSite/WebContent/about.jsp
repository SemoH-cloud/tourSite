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
   <link rel="stylesheet" href="css/about.css">
  <script src="js/textevent.js"></script>

  <!--search 관련-->
  <link rel="stylesheet" href="css/search.css">
  <script src="js/search.js"></script>




  <style>
    .visual-disable {
      display: none;
    }
  </style>

</head>
<body>

<%@include file="menu.html"%>.
 <!-- About -->
    <section id="about" class="section">
     <div class="wrapper">
    <main class="container" style="font-family: 'Concert One', cursive; margin-top: 60px;">
      <h2 data-splitting="" class="headline headline--fade words chars splitting"
        style="--word-total:1; --char-total:9; font-size: 30px;">
        <span class="word" data-word="fading" style="--word-index:0; ">
          <span class="char" data-char="a" style="--char-index:0;">A</span>
          <span class="char" data-char="b" style="--char-index:1;">b</span>
          <span class="char" data-char="o" style="--char-index:2;">o</span>
          <span class="char" data-char="u" style="--char-index:3;">u</span>
          <span class="char" data-char="t" style="--char-index:4;">t</span>
          <span class="char" data-char="_" style="--char-index:5;">_</span>
          <span class="char" data-char="u" style="--char-index:6;">U</span>
          <span class="char" data-char="s" style="--char-index:7;">s</span>
        </span>
      </h2>

    </main>
      <h2 id="about_quote">
        I'M A DREAMER. <br />
        AND YOU WILL JOIN US.
      </h2>
      <p>JOHN LENNON</p>
      <p id="about_description">
        TRAVEL BRINGS PEOPLE TOGETHER. IT HELPS PEOPLE UNDERSTAND OTHER
        CULTURES.<br />
        WHAT WE THINK WE KNOW ABOUT OTHER PALCES IS THROWN OUT THE WINDOW, ONCE
        WE LAND ON THEIR SOIL.
      </p>
      <div class="about_authors">
        <div class="author">
          <img src="imgs\seashell.png" alt="img_avatar" />
          <div class="author_comment">
            <p><span>Lee</span><br />Lorem ipsum dolor sit amet consectetur.</p>
          </div>
        </div>

        <div class="author">
          <img src="imgs\seashell.png" alt="img_avatar" />
          <div class="author_comment">
            <p>
              <span>Han</span><br />
              Lorem ipsum dolor sit amet consectetur.
            </p>
          </div>
        </div>
      </div>
    </section>
    
    <%@include file="footer.html"%>.
</body>
</html>