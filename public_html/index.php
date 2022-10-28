<?php

$HOST = 'db';
$DB = 'docker_php8';
$USR = 'docker_php8';
$PAS = 'password';

// $pdo = new PDO('mysql:host='.$HOST.';port=3306;dbname='.$DB, $USR, $PAS);

$con = mysqli_connect(
	$HOST,
	$USR,
	$PAS,
	$DB
) OR die("Unable to connect to database.");

$query = 'SELECT * FROM blog';
$res = mysqli_query($con, $query);

echo '<div class="container">';
echo '<h1>Blogs</h1>';
echo '<style>h1{color:blue; text-align:center; border-bottom:4px solid blue; padding: 20px 0;} .container{width:1000px;margin:0 auto; font-family: Arial, Verdana; font-size: 1.1em; } .blogs{display:grid; grid-template-columns:1fr 1fr 1fr;  gap:1em;}.badge{ position: absolute; top: 0; left: 0; background-color: blue; background: linear-gradient(180deg, blue, transparent); color: white; font-weight: bold; padding: 5px 10px; border-radius: 0.4em 0.4em 0 0;; transform: translate(-0%, -50%);} .blog{position:relative; width:100%; height:100%;border:1px solid #ccc;margin-bottom:10px;padding:20px; box-sizing:border-box;}</style>'; echo '<p>Fetch from mysql</p>'; 
echo '<div class="blogs">'; 
$i = 1;
while ($record = mysqli_fetch_assoc($res)) {
	echo'<div class="blog">'.
			'<span class="badge">'.$i.'</span>'.
			'<h2>'.$record['title'].'</h2>'.
			'<p>'.$record['content'].'</p>'.
			'<a href="#">Read more</a>'.
		'</div>';
	$i++;
}
echo '</div>';
echo '</div>';
