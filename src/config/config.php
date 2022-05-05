<?php

  $host = 'php_docker_tutorial_mysql_db';
  $username = 'root';
  $password = '123456';
  $dbname = 'myonlinequiz';
  $dump = 'db/myonlinequiz.sql';
  $conn = new mysqli( $host, $username, $password );

  if ( $conn -> connect_error ) {
    echo 'Reason connection error: ' . $conn -> connect_error;
    die( 'Connection failed: ' . $conn -> connect_error );
  }

  //Make my_db the current database
  $db_selected = mysqli_select_db( $conn, $dbname);

  if (!$db_selected) {
    //If we couldn't, then it either doesn't exist, or we can't see it.
    $sql = 'CREATE DATABASE ' . $dbname;

    if ( mysqli_query( $conn, $sql )) {
        // echo 'Database my_db created successfully';
    } else {
        echo 'Error creating database: ' . mysqli_error( $conn ) . '\n';
    }
    // Temporary variable, used to store current query
    $templine = '';
    // Read in entire file
    $lines = file( $dump );
    // Loop through each line
    foreach ( $lines as $line ) {
      // Skip it if it's a comment
      if ( substr( $line, 0, 2 ) == '--' || $line == '' )
        continue;

      // Add this line to the current segment
      $templine .= $line;
      // If it has a semicolon at the end, it's the end of the query
      if ( substr( trim( $line ), -1, 1 ) == ';' ) {
        // Perform the query
        mysqli_query( $conn, $templine ) or print( 'Error performing query \'<strong>' . $templine . '\': ' . mysqli_error( $conn ) . '<br /><br />' );
        // Reset temp variable to empty
        $templine = '';
      }
    }
    // echo 'Tables imported successfully';
  }
  // mysqli_close( $conn );
?> 