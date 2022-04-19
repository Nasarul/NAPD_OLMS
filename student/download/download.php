<?php
include("../config/dbcon.php");

if(isset($_GET['sub_id'])){
    $id = $_GET['sub_id'];
    $state = $bd->prepare("select * from tblsubject where sub_id=?");
    $stat->bindParam(1, $id);
    $stat->execute();
    $data = $stat->fetch();

    $filepath = '../admin/uplads/lecture/' .$data['filename'];

    // if(file_exists($file)){
    //     header('Content-Description: '.$data['description']);
    //     header('Content-Type: '.$data['type']);
    //     header('Content-Disposition: '.$data['disposition'].'; filename="'.basename($file).'"');
    //     header('Expires: '.$data['expires']);
    //     header('Cache-Control: '.$data['cache']);
    //     header('Pragma: '.$data['pragma']);
    //     header('Content-Length: '.filesize($file));
    //     readfile($file);
    //     exit;

    // }


       // Process download
       if(file_exists($filepath)) {
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Content-Disposition: attachment; filename="'.basename($filepath).'"');
        header('Expires: 0');
        header('Cache-Control: must-revalidate');
        header('Pragma: public');
        header('Content-Length: ' . filesize($filepath));
        flush(); // Flush system output buffer
        readfile($filepath);
        die();
    } else {
        http_response_code(404);
        die();
    }
} else {
    die("Invalid file name!");
}
}
}
?>
