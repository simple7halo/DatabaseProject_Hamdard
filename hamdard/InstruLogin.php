<?php
   include("config.php");
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      
      $myusername = mysqli_real_escape_string($con,$_POST['username']);
      $mypassword = mysqli_real_escape_string($con,$_POST['password']); 
      
      $sql = "SELECT * FROM Instructor WHERE ID = '$myusername' AND Password = '$mypassword'";
      $result = mysqli_query($con,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];
      
      $count = mysqli_num_rows($result);
		
      if($count == 1) {
         $_SESSION['login_user'] = $myusername;
         
         header("location: InstructorLoggedIn.php");
      }else {
         echo "<script>alert('Your Instructor ID or Password does not match!');</script>";
      }
   }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Register for courses</title>
    <link rel="stylesheet" href="style.css">
</head>    
<body>
        <h1>
            Hamdard Univerity 
        </h1>
        <nav>
          <ul>
            <li><a href="Index.html">HOME</a></li>
            <li><a href="NewsEvent.html">NEWS & EVENTS</a></li>
            <li><a href="Registration.html">REGISTRATION</a></li>
            <li><a href="contact.html">CONTACT</a></li>
            <li><a href="Reference.html">REFERENCE</a></li>
          </ul>
        </nav>
        
        <div style="text-align: center;">
            <h3>Instructor Login</h3>
            <form action = "" method = "post">
              <label>Instructor ID :  </label><input type = "text" name = "username" class = "box">
              <br/><br/>
              <label>Password :  </label><input type = "password" name = "password" class = "box">
              <br/><br/>
              <input type = "submit" value = " Submit ">
              <br/>
            </form>
        </div>
        
</body>
</html>