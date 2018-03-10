<?php
session_start();
$_STEAMAPI = "F4BE9BB2579AA5B92BE8C1653FDCFC52";
if (strlen($_SESSION['steamid']) == 0)
{
include 'openid.php';

try 
{
    $openid = new LightOpenID('http://unix-company.myjino.ru/');
    
    if(!$openid->mode) 
    {
        if(isset($_GET['login'])) 
        {
            $openid->identity = 'http://steamcommunity.com/openid/'; 
			echo 'asd';
            header('Location: ' . $openid->authUrl());
        }
?>


<form action="?login" method="post">
    <input type="submit" value="asdasd">
</form>
<a href="?login">asd</a>

<?php
//<input type="image" src="http://cdn.steamcommunity.com/public/images/signinthroughsteam/sits_small.png">
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
                echo "User is logged in (steamID: " . $matches[1] . ")\n";
 
                $url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=$_STEAMAPI&steamids=" . $matches[1];
                $json_object = file_get_contents($url);
                $json_decoded = json_decode($json_object);
 
                foreach ($json_decoded->response->players as $player)
                {
                    $_SESSION['steamid'] = $player->steamid;
                    echo "
                    <br/>Player ID: $player->steamid
                    <br/>Player Name: $player->personaname
                    <br/>Profile URL: $player->profileurl
                    <br/>SmallAvatar: <img src='$player->avatar'/> 
                    <br/>MediumAvatar: <img src='$player->avatarmedium'/> 
                    <br/>LargeAvatar: <img src='$player->avatarfull'/> 
                    ";
                }
 
        } 
        else 
        {
                echo "User is not logged in.\n";
        }
    }
} 
catch(ErrorException $e) 
{
    echo $e->getMessage();
}
}
else
{
    $url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=$_STEAMAPI&steamids=" . $_SESSION['steamid'];
    
                $json_object = file_get_contents($url);
                $json_decoded = json_decode($json_object);
 
                foreach ($json_decoded->response->players as $player)
                {
                    $_SESSION['steamid'] = $player->steamid;
                    echo "
                    <br/>Player ID: $player->steamid
                   
                    ";
                    
                    echo '<br>';
                    
             $url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=$_STEAMAPI&steamids=" . $_SESSION['steamid'];
    
                $json_object = file_get_contents($url);
                $json_decoded = json_decode($json_object);
                    
                }
    
    echo 'Вы авторизованный <a href="steam.php?l=qui">Выйти</a>';
}

if($_GET['l'] == 'qui')
{
    unset($_SESSION['steamid']);
}


?>