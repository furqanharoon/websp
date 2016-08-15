<?php 
$servername = "localhost";
$username = "root";
$password = "root";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
$conn->select_db("webspace"); //Selecting database
function filesizemb($file)
{
    return number_format(filesize($file) / pow(1024, 2), 3,'.','');
}
function formatSizeUnits($bytes)
  {
    if ($bytes >= 1073741824)
    {
      $bytes = number_format($bytes / 1073741824, 2) . ' GB';
    }
    elseif ($bytes >= 1048576)
    {
      $bytes = number_format($bytes / 1048576, 2) . ' MB';
    }
    elseif ($bytes >= 1024)
    {
      $bytes = number_format($bytes / 1024, 2) . ' kB';
    }
    elseif ($bytes > 1)
    {
      $bytes = $bytes . ' bytes';
    }
    elseif ($bytes == 1)
    {
      $bytes = $bytes . ' byte';
    }
    else
    {
      $bytes = '0 bytes';
    }
    return $bytes;
  }
?>