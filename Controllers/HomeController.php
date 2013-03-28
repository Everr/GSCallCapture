<?php

include_once("Models/HomeModel.php");

class HomeController {

    public $model;

    public function __construct() {
        $this->model = new Model();
    }

    public function invoke() {

        $reslt = $this->model->getlogin();
        print $reslt;
// it call the getlogin() function of model class and store the return value of this function into the reslt variable.
        if ($reslt > 0) {

            include_once 'Views/Home/Afterlogin.php';
        } else {
            include_once 'Views/Home/LoginView.php';
        }
    }

}

?>