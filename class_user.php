<?php
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL | E_ERROR | E_PARSE | E_WARNING);

class user
{
    var $id = '';
	var $ava = '';
	var $balance = '';
	var $urprof = '';
	var $name_inv = '';
	var $dat = '';
	var $tradelink = '';
	var $mass_id = '';
	var $komisia = '';
	var $skidka = '';
	var $not1 = '';
	var $not2 = '';
    var $mail = '';
    var $ssilka_status = '';
    var $mob_prov = '';
	
	function user($steamid)
	{
	    $data = get_one_wh('users', 'steamid', $steamid);
	    $this->id = $data[0];
		$this->ava = $data[2];
		$this->balance = $data[3];
		$this->urprof = $data[4];
		
        if('0000-00-00 00:00:00' != $data[5])
        {
            $dat = date_create($data[5]);
            $this->dat = date_format($dat, 'd M Y в H:i');
            
        }
        else
        {
            $this->dat = '---';
        }
        
		$this->tradelink = $data[6];
		$this->name_inv = 'inventar_' . $steamid;
		$this->komisia = $data[7];
		$this->skidka = $data[8];
		$this->not1 = $data[9];
		$this->not2 = $data[10];
        $this->mail = $data[12];
        $this->ssilka_status = $data[13];
        $this->mob_prov = $data[14];
        
        $this->komissia();
        $this->skidka();
	}    
    
//***************************************ПОЛУЧАЕМ ИД ИТЕМ, ИД СЛОТА, ДАННЫЕ ИТЕМА***************
	
	function set_mass_id($a = 0)
	{
	   $result='';
	    switch ($a)
	    {
	        case 0: $result = mysql_query('SELECT ' . $this->name_inv . '.id, id_item, classid, name, icon_url, r_price FROM ' . $this->name_inv . ', items WHERE ' . $this->name_inv . '.id_item = items.id') or die('error'); break;
	        case 1: $result = mysql_query('SELECT ' . $this->name_inv . '.id, id_item, classid, name, icon_url, r_price FROM ' . $this->name_inv . ', items WHERE ' . $this->name_inv . '.id_item = items.id AND status = 0') or die("errrr"); break;
	   
	    }
        $this->mass_id = array();
        $this->mass_item = array();

        while($data = mysql_fetch_row($result))
         {
               $this->mass_id[] = (array ($data[0], $data[1], $data[2], $data[3], $data[4], $data[5]));
            
               
         }
         
	}
//****************************************************************************************************
	
//*******************************УДАЛЯЕМ ПРОДАЖУ***********************************************
    function del_sell($id)
    {
        $query1 = "UPDATE " . $this->name_inv . " SET status = '0'";
        $query2 = "DELETE FROM prodazi WHERE ";
        
        
       if($id == 'all')
       {
          $result = mysql_query("SELECT id_item FROM " . $this->name_inv);
          
           mysql_query($query1) or die("err1");
           mysql_query($query2 . "id_user = " . $this->id) or die("err2");
           
           while($data = mysql_fetch_row($result))
           {
               update_order($data[0]);
           }
           
       }
       else
       {
          $result = mysql_query("SELECT id_item FROM " . $this->name_inv . " WHERE id = " . $id);
          $data = mysql_fetch_row($result);
          
         
          
           mysql_query($query1 . " WHERE id = " . $id) or die("err3");
           mysql_query($query2 . "id_slot = '" . $id . "'") or die("err4");
           
            update_order($data[0]);
           
       }
       //  mysql_query("UPDATE " . $this->name_inv . " SET status = '0' WHERE id = " . $id) or die("eror");
        // mysql_query("DELETE FROM prodazi WHERE id_slot = " . $id);
    }
//******************************************************************************************

	function up_date()
	{
	    $dat = date("Y-m-d H:i:s");
	    mysql_query("UPDATE users SET reload_inv = '" . $dat . "' WHERE id = '" . $this->id . "'");
	    $dat = date_create(date("Y-m-d H:i:s"));
	    $this->dat = date_format($dat, 'd M Y в H:i');
	}
	
	function up_link($link)
	{
	    mysql_query("UPDATE users SET tradelink = '" . $link . "' WHERE id = '" . $this->id . "'");
	    $this->tradelink = $link;
	}
	
	
	function get_inventar()
	{
	    $this->set_mass_id(1);
	    $stroke ='';
        $this->komissia();
	    for($i=0; $i<count($this->mass_id); $i++)
	   {
	      $stroke = $stroke . '<a rel="' .$this->mass_id[$i][0] . '" style="cursor: pointer;" class="edit-popup-btn" name="modal"><div class="col-xs-2">
	      <div class="stuff">
		  <img class="ur2" rel="2" src="http://steamcommunity-a.akamaihd.net/economy/image/' . $this->mass_id[$i][4] . '">
		  </div>
	      </div><p style="display: none;" class="it_name">'.$this->mass_id[$i][3].'</p><p style="display: none;" class="it_price">' . $this->mass_id[$i][5] . '</p><p style="display: none;" class="it_url">'.$this->mass_id[$i][4].'</p><p style="display: none;" class="it_komisia">'.$this->komisia.'</p></a>';
	   }
	    return $stroke; 
	    
	    
	  /* $result = mysql_query("SELECT ". $this->name_inv .".id, icon_url, name, r_price FROM " . $this->name_inv . ", items WHERE " . $this->name_inv . ".id_item = items.id AND " . $this->name_inv . ".status = 0") or die('error');
	   $stroke='';
	   while($data = mysql_fetch_row($result))
	   {
	      $stroke = $stroke . '<a rel="' . $data[0] . '" style="cursor: pointer;" class="edit-popup-btn" name="modal"><div class="col-xs-2">
	      <div class="stuff">
		  <img class="ur2" rel="2" src="http://steamcommunity-a.akamaihd.net/economy/image/' . $data[1] . '">
		  </div>
	      </div><p style="display: none;" class="it_name">'.$data[2].'</p><p style="display: none;" class="it_price">' . $data[3] . '</p><p style="display: none;" class="it_url">'.$data[1].'</p></a>';
	   }
	    return $stroke; */
	}
	

	
	function get_inventar_sall()
	{
	   $result = mysql_query("SELECT ". $this->name_inv .".id, icon_url, name, price FROM " . $this->name_inv . ", items, prodazi WHERE " . $this->name_inv . ".id_item = items.id AND " . $this->name_inv . ".status = 1 AND prodazi.id_item = " . $this->name_inv . ".id_item AND prodazi.id_user = " . $this->id) or die('error');
	   $stroke='';
	   while($data = mysql_fetch_row($result))
	   {
	      $stroke = $stroke . '<a rel="' . $data[0] . '" href class="edit-popup-btn" name="modal"><div class="col-xs-2">
	      <div class="stuff">
		  <img class="ur2" rel="2" src="http://steamcommunity-a.akamaihd.net/economy/image/' . $data[1] . '">
		  </div>
	      </div><p style="display: none;" class="it_name">'.$data[2].'</p><p style="display: none;" class="it_price">' . $data[3] . '</p><p style="display: none;" class="it_url">'.$data[1].'</p></a>';
	   }
	    return $stroke;
	    
	}
	
	function up_note($nomer, $value)
	{
	    
	   mysql_query("UPDATE users SET not" . $nomer. " = " .$value. " WHERE id = " . $this->id);
	   if($nomer==1)
	        $this->not1 = $value;
	   else
	        $this->not2 = $value;
	       
	   
	}
	
	
	function get_inv_itemid($id)
	{
	    $result = mysql_query("SELECT id_item FROM " . $this->name_inv . " WHERE id = " . $id);
	    $data=mysql_fetch_row($result);
	    return $data[0];
	}
	
	function get_inv_id($id)
	{
	    $result = mysql_query("SELECT id FROM items WHERE classid = " . $id);
	    $data=mysql_fetch_row($result);
	    return $data[0];
	}
	
	function val_note_item($id_it, $replace=null)
	{
	    $result = mysql_query("SELECT price FROM notification WHERE id_user=".$this->id." AND id_item = " . $id_it);
	    $data = mysql_fetch_row($result);
	    if ($replace != null)
	    {
	        if($data[0] == null)
	        {
	            $arr1 = array('id_user', 'id_item', 'price');
	            $arr2 = array($this->id, $id_it, $replace);
	            insert("notification", $arr1, $arr2);
	        }
	        else
	        {
	            mysql_query("UPDATE notification SET price = ".$replace." WHERE id_user = " . $this->id . " AND id_item = " . $id_it);
	        }
	    }
	    else
	    {
	         return $data[0];
	    }
	}
    
    function update_balance($sum)
    {
        $sum = $this->balance + $sum;
        mysql_query("UPDATE users SET balance = ".$sum." WHERE id = " . $this->id);
    }
    
    function up_mail($link)
	{
	    mysql_query("UPDATE users SET email = '" . $link . "' WHERE id = '" . $this->id . "'");
	    $this->mail = $link;
	}
    
    function up_ssilka()
	{
	    mysql_query("UPDATE users SET ssilka_status = 1 WHERE id = '" . $this->id . "'");
	}
    function up_mob_prov()
	{
	    mysql_query("UPDATE users SET mob_prov = 1 WHERE id = '" . $this->id . "'");
	}
    function komissia()
    {
        $result = mysql_query("SELECT price FROM prodazi WHERE status2 = 1 AND id_user = '". $this->id."'") or die(mysql_error());
        $data = mysql_fetch_row($result);
        if($data[0] < 1000)
        {
            $this->komisia = 9;
        }
        else if($data[0] > 1000 && $data[0] < 10000)
        {
            $this->komisia = 8;
        }
        if($data[0] < 1000)
        {
            $this->komisia = 9;
        }
        else if($data[0] > 10000 && $data[0] < 100000)
        {
            $this->komisia = 7;
        }
         if($data[0] < 1000)
        {
            $this->komisia = 9;
        }
        else if($data[0] > 100000 && $data[0] < 1000000)
        {
            $this->komisia = 6;
        }
         if($data[0] < 1000)
        {
            $this->komisia = 9;
        }
        else if($data[0] > 1000000 && $data[0] < 10000000)
        {
            $this->komisia = 5;
        }
          if($data[0] < 1000)
        {
            $this->komisia = 9;
        }
        else if($data[0] > 10000000 && $data[0] < 100000000)
        {
            $this->komisia = 5;
        }
        
        mysql_query("UPDATE users SET komisia = ".$this->komisia." WHERE id = '" . $this->id . "'");
    }
    
    function skidka()
    {
        
        $result = mysql_query("SELECT SUM(price) FROM prodazi, pokupki WHERE prodazi.status = 1 AND pokupki.status = 1 AND  pokupki.id_user = '" . $this->id."'") or die("QWEQEQWE2");
        $data = mysql_fetch_row($result);
        
        if($data[0] < 1000)
        {
            $this->skidka = 0;
        }
        else if($data[0] > 1000 && $data[0] < 10000)
        {
            $this->skidka = 1;
        }
        
    }


	
}
?>