<?php
    $path  = '/Users/todfod/Documents/Programming/PHP/content';
    $files = scandir($path);
    $files = array_diff(scandir($path), array('.', '..'));
    foreach($files as $file){
    echo "<a href='$path/$file'>$file</a><br>";
    }    

?>