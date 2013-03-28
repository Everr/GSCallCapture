<?php

include_once("Helpers/Database.php");

class Model {

    public $dbhelper;

    public function __construct() {
        $this->dbhelper = new Database();
    }

    public function getlogin() {
        if (isset($_REQUEST['username']) && isset($_REQUEST['password'])) {
            $query = "SELECT TOP(1) UserID FROM M_Users  WHERE UserName = '" . $_REQUEST['username'] . "' AND Password='" . $_REQUEST['password'] . "'";
            $result = $this->dbhelper->Select($query);
            if ($result[0] === "") {
                return false;
            } else {
                return $result[0];
            }
            echo $result;
            return $result;
        } else {
            echo 'First Time ';
        }
    }

}

?>