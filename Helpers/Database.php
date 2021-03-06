<?php

class Database {
//Comment should appear
    public function Select($query) {
        $conn = $this->ConnectToDb();
        //$tsql = "SELECT     TOP (1) UserID FROM M_Users";
        $stmt = sqlsrv_query($conn, $query);
        if ($stmt === false) {
            echo "Error in executing query.</br>";
            die(print_r(sqlsrv_errors(), true));
        }
        $result = sqlsrv_fetch_array($stmt);
        sqlsrv_free_stmt($stmt);
        $this->CloseDbConnection($conn);
        return $result;
    }

   public function LogLogin($query) {
        $conn = $this->ConnectToDb();
        //$tsql = "SELECT     TOP (1) UserID FROM M_Users";
        $stmt = sqlsrv_query($conn, $query);
        if ($stmt === false) {
            echo "Error in executing query.</br>";
            die(print_r(sqlsrv_errors(), true));
        }
        //echo "User logindadsadas: " . $result[0] . "</br>";
        $result = sqlsrv_fetch_array($stmt);
        sqlsrv_free_stmt($stmt);
        $this->CloseDbConnection($conn);
        return $result;
    } 
    /* Specify the server and connection string attributes. */

    private function ConnectToDb() {
        $serverName = "(local)";
        $connectionInfo = array("Database" => "CallCapture");

        /* Connect using Windows Authentication. */
        $conn = sqlsrv_connect($serverName, $connectionInfo);
        if ($conn === false) {
            echo "Unable to connect.</br>";
            die(print_r(sqlsrv_errors(), true));
        }
        return $conn;
    }

    private function CloseDbConnection($conn) {
//close the connection
        sqlsrv_close($conn);
    }

}

?>
