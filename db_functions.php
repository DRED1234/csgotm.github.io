<?php

dbconnect();
function get_all($table)
{
        $query = 'SELECT * FROM ' . $table;
		$result = mysql_query($query) or die("error");
		return $result;
}

function get_one_wh($table, $condition1, $condition2)
{
        $query = 'SELECT * FROM ' . $table . ' WHERE ' . $condition1 . ' = ' .$condition2;
		$result = mysql_query($query) or die("error");
		return mysql_fetch_row($result);
}


function insert($table, $mass1, $mass2)
{
$field = '';
$znach = '';

for($i = 0; $i < count($mass1); $i++)
	{
		if($i <= count($mass1) - 2)
		{
		$field = $field . $mass1[$i] . ', ';
		$znach = $znach . "'" . $mass2[$i] . "', ";
		}
		else
		{
			$field = $field . $mass1[$i];
			$znach = $znach . "'" . $mass2[$i] . "'";
		}
		//
	}
	
	$query = "INSERT INTO $table ($field) VALUES ($znach)";
	$result = mysql_query($query) or die("error2");
}


?>