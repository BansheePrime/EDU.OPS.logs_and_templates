<?php 
    if ($_COOKIE['sessionid'] == '0a7016d5f7346a6f14b273a66e0770fb7d6608769f233156570e878a1397a175') { 
        echo "<body>
        Hello, sir! Sending data to window.opener! 
        <script> 
        window.opener.postMessage('TOP secret data', '*'); 
        </script>
        </body>";
    } else { 
        echo "Access denied"; 
    } 
?>