<?php

class DB{

    public $con;
    protected $servername = "remotemysql.com:3306";
    protected $username = "xJ0sltQ1Bj";
    protected $password = "Gk6JKq8a0c";
    protected $dbname = "xJ0sltQ1Bj";

    function __construct(){
        $this->con = mysqli_connect($this->servername, $this->username, $this->password);
        mysqli_select_db($this->con, $this->dbname);
        mysqli_query($this->con, "SET NAMES 'utf8'");
    }

}

?>