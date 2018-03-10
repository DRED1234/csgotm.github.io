<?php

//Тут может быть код для получения данных из базы данных
//В этом примере мы создадим обычный массив с координатами точек

$points1 = array(
    array(0,1)
    , array(1,3)
    , array(2,1)
    , array(3,2)
    , array(4,0.5)
    , array(5,0.7)
    , array(6,3)
    , array(7,4)
    
);

//массив с настройками графика
$graph = array(
    array(
        'color'=>'rgb(255, 98, 0)'
        , 'data'=>$points1
        , 'label'=>'Линия 1'
    )
    
);

echo json_encode($graph);

// end of datasrc.php