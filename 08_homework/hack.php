<?php
    $command = "whoami ".$_GET["domain"];
    echo $_GET["domain"]." Address is: ".shell_exec($command);
    ?>