<?php

session_start();

unset($_Session['SESS_MEMBER_ID']);
unset($_Session['SESS_FIRST_NAME']);
unset($_Session['SESS_ROL_ID']);
unset($_Session['SESS_ESTADO']);

session_destroy();
header('location: ../index.php');


?>