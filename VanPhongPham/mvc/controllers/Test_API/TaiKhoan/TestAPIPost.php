<?php
echo "hello";
$url = "http://localhost/VanPhongPham/Apitaikhoan/POSTTK";
if($_SERVER['REQUEST_METHOD']== "POST" && isset($_POST['btnsubmit'])){
$ten = $_POST['ten'];
$email = $_POST['email'];
$pass = $_POST['password'];
$sdt = $_POST['sdt'];
$diachi = $_POST['diachi'];
$quyen = $_POST['quyen'];
$data_array = array(
    'ten' => $ten,
    'email' => $email,
    'password' => $pass,
    'sdt' => $sdt,
    'quyen'=> $quyen,
    'diachi' => $diachi
);
$data = http_build_query($data_array);
}



$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

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
        echo  "<script type = 'text/javascript'>alert('Thêm nhân viên thành công');
                window.history.pushState(null, '', '/VanPhongPham/Home/Show');
                window.location.href = '/VanPhongPham/Home/Show';
                </script>";
    }
}


curl_close($ch);

?>