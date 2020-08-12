<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="signin.css" />
    <title>Join us</title>
  </head>
  <body>
  
  <%@ include file="top.html" %>


    <div class="wrapper">
    <form method="post" action="joinAction.jsp" class="form-signin">
      
        <h2 class="form-signin-heading">JOIN US</h2>
        <br />
        <input
          type="text"
          class="form-control"
          name="userID"
          id="userID"
          placeholder="ID"
          required=""
          autofocus=""
        />
        <br />
        <input
          type="text"
          class="form-control"
          id="userEmail"
          name="userEmail"
          placeholder="Email Address"
          required=""
          autofocus=""
        />
        <br />

        <input
          type="password"
          id="userPassword"
          class="form-control"
          name="userPassword"
          placeholder="Password"
          required=""
        />
        <br />

        <button class="btn btn-lg btn-primary btn-block" type="submit">
          Join
        </button>
      </form>
    </div>
  </body>
</html>
