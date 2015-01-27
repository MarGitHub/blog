
<?php

class portfolio extends Controller
{
    public $requires_auth = true;

    function index()
    {
        $this->portfolio = get_all('SELECT * FROM portfolio');
    }


    function view()
    {
        $sample_id = $this->params[0];
        $this->sample_subject = get_first("SELECT * FROM portfolio where sample_id = '$sample_id'");

    }
}
