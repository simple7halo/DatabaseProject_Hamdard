<?php
    include('session.php');
    session_start();
    //student name variable
    $LoginName_sql = mysqli_query($con, "SELECT Name from StudentEnrolled WHERE ID = '$user_check' ");
    $LoginName_row = mysqli_fetch_array($LoginName_sql,MYSQLI_ASSOC);
    $LoginName = $LoginName_row['Name'];

    $_SESSION['LoginName'] = $LoginName;
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
            <li><a href="ChangePass.php">Change Password</a></li>
            <li><a href="CourseSearch.php">Course Search</a></li>
          </ul>
        </nav>
        
        <h2><a href = "logout.php">Sign Out</a></h2>
        
        
</body>
</html>