<?php
 $db_host = 'localhost';
 $db_user = 'root';
 $db_password = 'root';
 $db_db = 'palaceofarts';
 $db_port = 3306;

 $mysqli = new mysqli(
   $db_host,
   $db_user,
   $db_password,
   $db_db
); 

function get_slider() {
  global $mysqli;
  $slider = $mysqli->query("SELECT * FROM slider");
  return $slider;
}

function get_slider_by_id($id) {
  global $mysqli; 
  $movies = $mysqli->query("SELECT * FROM shablon WHERE id = $id");
  foreach($movies as $slider) {
    return $slider;
  }
}

function get_movie_by_id($id) {
  global $mysqli;
  $movies = $mysqli->query("SELECT * FROM shablon WHERE id = $id");
  foreach($movies as $movie) {
    return $movie;
  }
}


function get_movies() {
    global $mysqli;
    $movie = $mysqli->query("SELECT * FROM movie");
    return $movie;
  }
  
?>