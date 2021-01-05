<?php
   include("session.php");
   session_start();
   $LoginName = $_SESSION['LoginName'];
   $LoginID = $_SESSION['login_user'];

  $sql = "SELECT * FROM CourseTaughtBy WHERE InstructorID = '$LoginID' ";
  $result = mysqli_query($con,$sql);
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
        
        <?php
        $count = mysqli_num_rows($result);
        if ($count >= 1){
          echo
          "<table style='width:100%'>
            <tr>
            <th>Course Name</th>
            <th>Available Seat</th> 
            <th>Room</th>
            <th>Time</th>
            <th>Waitlist</th>
            </tr>
          ";
        
          while($row = $result->fetch_assoc()) {
            $depart = $row['DepartmentCode'];
            $ID = $row['ID'];
            $wait_sql = "SELECT COUNT(CourseID) From WaitList WHERE DepartmentCode = '$depart'
            AND CourseID = '$ID' ";
            $wait_num = mysqli_query($con, $wait_sql);
            $waitNum = $wait_num->fetch_assoc();

            echo 
            "<tr><td>".$row["DepartmentCode"].$row["ID"].
            "</td><td>".$row["AvailableSeat"].
            "</td><td>".$row["Room"].
            "</td><td>".$row["Time"].
            "</td><td>".$waitNum['COUNT(CourseID)'].
            "</td></tr>";
          }
          echo "</table>";
        }else{
          echo "<h3>No Course Found!</h3>";
        }
        
        ?>
       
        <h2><a href = "logout.php">Sign Out</a></h2>
</body>
</html>