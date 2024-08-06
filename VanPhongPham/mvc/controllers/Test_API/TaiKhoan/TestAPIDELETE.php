<?php
$url = "http://localhost/VanPhongPham/Apitaikhoan/deletetk/".$data['id_taikhoan'];
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
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
        echo  "<script type = 'text/javascript'>alert('Xóa thành công');
        window.history.pushState(null, '', '/VanPhongPham/Home/Show');
        window.location.href = '/VanPhongPham/Home/Show';
        </script>";
              
    }
}


curl_close($ch);