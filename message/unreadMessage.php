<?php
include "../shared/head.php";
include "../shared/header.php";
include "../shared/aside.php";
include "../genral/functions.php";
include "../genral/config.php";

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $delete = "DELETE FROM `cases` where id =$id ";
    $d =  mysqli_query($conn, $delete);
}


$adminid = $_SESSION['adminId']  ;
$select  = "SELECT * FROM `cases` where adminid = $adminid";
$s = mysqli_query($conn, $select);







?>


<main id="main" class="main">
<div class="pagetitle">
        <h1>Data Tables</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                <li class="breadcrumb-item">Message</li>
                <li class="breadcrumb-item active">Unread message</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <?php foreach ($s as $data) { 
        $select  = "SELECT * FROM `users` where id = $data[userId]";
        $l = mysqli_query($conn, $select);
        foreach ($l as $user) {
            $username = $user['name'];
        
        ?>
    <div style="width :80%; background:#fff; border-radius: 6px; padding: 20px; color: #626262; margin: auto;
" class="container col-8 p-5 ">
        <div class="card p-5">
            <div card-body>
                <p style="line-height: 0 ;color: black  ;"><?= $username ?></p>
                <span style = "font-size: 13px; color: #9a9a9a;"><?php echo $data['date'] ?></span>
                <h3 style="color: black; text-align:center;"><?php echo $data['title'] ?></h3>
                <p style="color: black ;"><?php echo $data['desciption'] ?></p>
                <a href="/hima/message/accepted.php?accepted=<?= $data['id'] ?> " class="btn btn-info">Accepted</a>
                <a href="/hima/message/unreadMessage.php?delete=<?= $data['id'] ?> " class="btn btn-danger">Rejected</a>
            </div>
        </div>
    </div>
    <?php }} ?>




</main>

<?php
include '../shared/footer.php';
include "../shared/script.php";

?>