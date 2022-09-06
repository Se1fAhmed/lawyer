<?php

function auth()
{
    if (isset($_SESSION['email'] )) {
        // go("pages-login.php");
    } 
        else 
        {
            echo "<script>
            window.location.replace('/hima/user/login.php');
            </script>";
    
        }
    }


auth();


?>