<?php
include "../genral/config.php";
include "../shared/head.php";
include "../genral/Userlogin.php";

if (isset($_GET['message'])) {
    $adminId = $_GET['message'];
    $userId = $_SESSION['userId'];

    $select  = "SELECT * FROM `lawyers` where id = $adminId";
    $s = mysqli_query($conn, $select);
    $row = mysqli_fetch_assoc($s);
    if (isset($_POST['send'])) {
        $title = $_POST['title'];
        $desciption = $_POST['desciption'];
        $insert = "INSERT INTO `cases` VALUES (NULL , '$title' , '$desciption' , $userId , $adminId ,default)";
        $q = mysqli_query($conn, $insert);
        if($q){
        echo "<script>
        window.location.replace('/hima/user/home.php');
        </script>";}
    }
}




?>

<main id="main" class="main">
    <h1> Send Case to <?=$row['name'] ?> </h1>
    <div class="container p-5">
        <div class="card p-5">
            <div class="card-body">
                <form action="" method="POST">
                    <div class="form-group">
                    <label for="">Case title</label>
                        <input name="title" required type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="">description</label>
                        <input name="desciption" required type="longtext" class="form-control">
                    </div>
                    <button name="send" class="btn btn-primary mt-3">Send</button>
                </form>
            </div>
        </div>
    </div>
</main>
<?php


include "../shared/script.php";



?>