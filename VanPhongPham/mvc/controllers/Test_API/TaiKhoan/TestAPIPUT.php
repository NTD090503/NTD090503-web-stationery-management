<?php

$url = "http://localhost/VanPhongPham/Apitaikhoan/PUTTK";

// Lấy dữ liệu từ phương thức PUT
parse_str(file_get_contents("php://input"), $_PUT);

// Truy cập các giá trị được gửi từ AJAX
$id_taikhoan = $_PUT['id_taikhoan'];
$ten = $_PUT['ten'];
$email = $_PUT['email'];
$sdt = $_PUT['sdt'];
$pass = $_PUT['pass'];
$diachi = $_PUT['diachi'];
$quyen = $_PUT['quyen'];
$data_array = array(
    'ten' => $ten,
    'email' => $email,
    'pass' => $pass,
    'sdt' => $sdt,
    'diachi' => $diachi,
    'quyen'=> $quyen,
    'id_taikhoan' => $id_taikhoan,
);

$data = http_build_query($data_array);
print_r($data);
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT');
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
// curl_setopt($ch, CURLOPT_HTTPHEADER,$header);

$resp = curl_exec($ch);

if($e = curl_error($ch)){
    echo $e;
}else {
    $decoded = json_decode($resp);
    if ($decoded !== null) { // Kiểm tra xem $decoded có giá trị không
        foreach($decoded as $key => $val) {
            // Kiểm tra xem giá trị của thuộc tính có phải là chuỗi hay không
            if (is_string($val)) {
                echo $key . ': ' . $val . '<br>';
            } else {
                echo $key . ': '; // Nếu không phải chuỗi, chỉ in ra tên thuộc tính
                var_dump($val); // In ra giá trị của thuộc tính để kiểm tra kiểu dữ liệu
                echo '<br>';
            }
        }
    } else {
        echo  "<script type = 'text/javascript'>alert('Sửa thành công');
        window.history.pushState(null, '', '/VanPhongPham/Home/Show');
        window.location.href = '/VanPhongPham/Home/Show';
        </script>";
    }
}


curl_close($ch);

?>