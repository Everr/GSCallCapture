<?php

include_once("Helpers/Database.php");

class Model {

    public $dbhelper;

    public function __construct() {
        $this->dbhelper = new Database();
    }

    public function getlogin() {

        if (isset($_REQUEST['username']) && isset($_REQUEST['password'])) {
            $username = $_REQUEST['username'];
            $password = $_REQUEST['password'];
            $query = "SELECT TOP(1) UserID FROM M_Users  WHERE UserName = '" . $username . "' AND Password='" . $password . "'";
            $result = $this->dbhelper->Select($query);

            if (is_array($result)) {
                $query = " INSERT INTO L_Login(UserNameSubmitted, PasswordSubmitted, Success, UserIDReturned)
                            VALUES('" . $username . "','" . $password . "',1,'" . $result[0] . "')";
                $this->dbhelper->LogLogin($query);
                return $result[0];
            } else {
                $query = " INSERT INTO L_Login (UserNameSubmitted, PasswordSubmitted, Success, UserIDReturned)
                            VALUES('" . $username . "','" . $password . "',0,'')";
                print $query;
                $this->dbhelper->LogLogin($query);
                return "false";
            }
        }
    }

}

?>