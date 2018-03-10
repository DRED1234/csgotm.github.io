<?php
session_start();
$_STEAMAPI = "F4BE9BB2579AA5B92BE8C1653FDCFC52";

if(isset($_GET['l']))
{
    unset($_SESSION['steamid']);
    header('Location: index.php'); 
}
else
{
try 
{
	include 'openid.php';	
	include 'functions.php';
    $openid = new LightOpenID('http://unix-company.myjino.ru/');
    if(!$openid->mode) 
    {
        $openid->identity = 'http://steamcommunity.com/openid/'; 
        header('Location: ' . $openid->authUrl());   
	}
	elseif($openid->mode == 'cancel') 
    {
        echo 'User has canceled authentication!';
    } 
    else 
    {
        if($openid->validate()) 
        {
           
                $id = $openid->identity;
                // identity is something like: http://steamcommunity.com/openid/id/76561197960435530
                // we only care about the unique account ID at the end of the URL.
                $ptn = "/^http:\/\/steamcommunity\.com\/openid\/id\/(7[0-9]{15,25}+)$/";
                preg_match($ptn, $id, $matches);
               // echo "User is logged in (steamID: " . $matches[1] . ")\n";
 
                $url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=$_STEAMAPI&steamids=" . $matches[1];
                echo $matches[1];
                $json_object = file_get_contents($url);
                $json_decoded = json_decode($json_object);
                $ava;
                foreach ($json_decoded->response->players as $player)
                {
                    $_SESSION['steamid'] = $player->steamid;
                    $ava = $player->avatarfull;
				}
				
				$data = (array) json_decode($json_object)->response->players[0];
				$ur = $data['profileurl'];
				$ur = substr($ur, 0, strlen($ur) - 1);
				$ur = substr($ur, strripos($ur, '/'), strlen($ur) - strripos($ur, '/'));
				$ur = substr($ur, 1, strlen($ur));
				$_SESSION['ur_prof'] = $ur;
				
				$data = get_one_wh('users', 'steamid', $_SESSION['steamid']);
				if($data == null)
				{
				    $ip = $_SERVER["REMOTE_ADDR"];
				    
			 	    $mass1 = array('steamid', 'avatar', 'urprof', 'ip');
			    	$mass2 = array($_SESSION['steamid'], $ava, $ur, $ip);
				    insert('users', $mass1, $mass2);
				  
				    $query = "CREATE TABLE inventar_" . $_SESSION['steamid'] . " (
				        id int AUTO_INCREMENT PRIMARY KEY,
				        id_item int,
				        status bool NOT NULL,
				        data date,
                        assestid text
				        );";
				        
	
				    $result = mysql_query($query) or die("error");
				    
				    
				}
				
				
			header('Location: index.php');
			
			
			
			
		//	echo $_SESSION['steamid'];
		//	$data = get_one_wh('users', 'steamid', '123');
		//	echo '<br>' . $data[0];
			
			
		}
	}
}
catch(ErrorException $e) 
{
    header('Location: index.php');
    //echo $e->getMessage();
}
}
?>