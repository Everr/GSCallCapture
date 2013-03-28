<?php

include_once("Models/HomeModel.php");

class HomeController {

    public $model;

    public function __construct() {
        $this->model = new Model();
    }

    public function invoke() {

        $result = $this->model->getlogin();
        print '$result: '.$result;
// it call the getlogin() function of model class and store the return value of this function into the reslt variable.
        if ($result) {
            include_once '/Controllers/MainController.php';
            $controller = new MainController();
            $controller->invoke();
        } else {
            include_once 'Views/Home/LoginView.php';
        }
    }

}

?>