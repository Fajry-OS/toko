<?php

class Mobil
{

    public $merek; //properti
    public $model; //properti

    //Konstraktor
    public function __construct($merek, $model)
    {
        $this->merek = $merek;
        $this->model = $model;
    }
    public function info()
    {
        return "Mobil ini adalah $this->merek, Tipe $this->model";
    }
}
$mobilSaya = new Mobil('Toyota', 'SuV');
echo $mobilSaya->info();
