<?php

if(!function_exists("get_date_formate")){
    function get_date_formate($formate, $date)
    {
        $formatedDate = date($formate, strtotime($date));
        return $formatedDate;
    }
}
