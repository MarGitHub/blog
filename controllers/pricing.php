<?php

class pricing extends Controller
{
    public $requires_auth = true;

    function index()
    {
        $this->pricing = get_all('SELECT * FROM pricing');
    }


    function view()
    {
        $service_id = $this->params[0];
        $this->service = get_first("SELECT * FROM pricing where service_id = '$service_id'");

    }
}
