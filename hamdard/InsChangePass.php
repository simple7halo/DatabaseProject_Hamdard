<?php
   include("session.php");
   session_start();
   $LoginName = $_SESSION["LoginName"];
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      
    $oldPass = mysqli_real_escape_string($con,$_POST['old']);
    $newPass = mysqli_real_escape_string($con,$_POST['new']); 
    
    $sql = "SELECT Password FROM Instructor WHERE ID = '$user_check' AND Password = '$oldPass' ";
    $result = mysqli_query($con,$sql);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
    $active = $row['active'];
    
    $count = mysqli_num_rows($result);
      
    if($count == 1) {
       $newPass_sql = 
       "UPDATE Instructor 
       SET Password = ('$newPass')
       WHERE ID = '$user_check';";
       $change = mysqli_query($con, $newPass_sql);
       echo "<script>alert('Password Changed!');</script>";
    }else {
       echo "<script>alert('Incorrect Old Password!');</script>";
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
            Welcome to Hamdard Univerity, <?php echo $LoginName; ?>
        </h1>
        <nav>
          <ul>
            <li><a href="InsChangePass.php">Change Password</a></li>
            <li><a href="InsCourse.php">Course Search</a></li>
            <li><a href="InsCourseSearch.php">Show Your Courses</a></li>
            <li><a href="AddCourse.php">Add Courses</a></li>
          </ul>
        </nav>
        
        
        <div style="text-align: center;">
            <h3>Change Password</h3>
            <form action = "" method = "post">
              <label>Old Password :  </label><input type = "password" name = "old" class = "box">
              <br/><br/>
              <label>New Password :  </label><input type = "password" name = "new" class = "box">
              <br/><br/>
              <input type = "submit" value = " Submit ">
              <br/>
            </form>
        </div>
       
        <h2><a href = "logout.php">Sign Out</a></h2>
</body>
</html>