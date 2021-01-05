<?php
   include("session.php");
   session_start();
   $LoginName = $_SESSION['LoginName'];
   $LoginID = $_SESSION['login_user'];

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      
    $depart = mysqli_real_escape_string($con,$_POST['depart']);
    $level = mysqli_real_escape_string($con,$_POST['level']);
    $room = mysqli_real_escape_string($con,$_POST['room']);
    $time = mysqli_real_escape_string($con,$_POST['time']); 

    $add_sql= "INSERT INTO CourseTaughtBy(ID, DepartmentCode, Room, AvailableSeat, Time, InstructorID)
    VALUES('$level', '$depart', '$room', 5, '$time', '$LoginID')";
    $result = mysqli_query($con,$add_sql);

    echo "<script>alert('Course Added!');</script>";
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
            <h3>Add Course</h3>
            <form action = "" method = "post">
              <label>Course Department :  </label>
              <select name="depart">
                <option value="AHIS">Art History</option>
                <option value="BIOL">Biology</option>
                <option value="CHEM">Chemistry</option>
                <option value="CPSC">Computer Science</option>
                <option value="MATH">Mathematics</option>
                <option value="ENGL">English</option>
              </select>
              <br/><br/>
              <label>Course Number :  </label><input type = "number" name = "level" class = "box">
              <br/><br/>
              <label>Room Number :  </label><input type = "text" name = "room" class = "box">
              <br/><br/>
              <label>Time Number :  </label><input type = "text" name = "time" class = "box">
              <br/><br/>
              <input type = "submit" value = " Submit ">
              <br/>
            </form>
        </div>
       
        <h2><a href = "logout.php">Sign Out</a></h2>
</body>
</html>