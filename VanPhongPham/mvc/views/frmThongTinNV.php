<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include "header.php";
include "Left_side.php";
?>
<main class="app-content">
    <div class="app-title">
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item active"><a href="frmThongTinNV.php"><b>Thông tin nhân viên</b></a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div class="col-sm-2"></div>
                    <?php
                    if (isset($_SESSION['nhanvien_data']) && count($_SESSION['nhanvien_data']) > 0) {
                        echo "<p>THÔNG TIN NHÂN VIÊN</p>";
                        echo "<table id='customers'>";
                        echo "<thead>";
                        echo "<tr>
                                <th>ID_NV</th>
                                <th>ID_TK</th>
                                <th>Tên</th>
                                <th>Email</th>
                                <th>SĐT</th>
                                <th>Địa chỉ</th>
                                <th>CMND</th>
                                <th>Trạng thái</th>
                                <th>Hoạt động</th>
                            </tr>";
                        echo "</thead>";
                        echo "<tbody>";
                        foreach ($_SESSION['nhanvien_data'] as $row) {
                            echo "<tr>";
                            echo "<td>{$row['id_nhanvien']}</td>";
                            echo "<td>{$row['id_taikhoan']}</td>";
                            echo "<td>{$row['tennv']}</td>";
                            echo "<td>{$row['email']}</td>";
                            echo "<td>{$row['sdt']}</td>";
                            echo "<td>{$row['diachi']}</td>";
                            echo "<td>{$row['cmnd']}</td>";
                            echo "<td>{$row['trangThai']}</td>";
                            echo "<td>
                                    <a href='editNV/{$row['id_nhanvien']}' class='btn btn-edit' type='button' title='Sửa'>Sửa</a>
                                    <a href='/live/TestAPIDELETE/{$row['id_nhanvien']}' class='btn btn-delete' type='button' title='Xóa'>Xóa</a>
                                  </td>";
                            echo "</tr>";
                        }
                        echo "</tbody>";
                        echo "</table>";
                    } else {
                        echo "Không có bản ghi";
                    }
                    ?>
                </div>
                <button>
                    <a href='/live/NhanVien/addNV'>Thêm Nhân Viên</a>
                </button>
                <button>
                    <a href='/live/NhanVien/searchNV'>Tìm kiếm</a>
                </button>
                <a class='btn btn-add btn-sm' onclick="xuatexcel()" title='Xuất Excel'><i class='fas fa-plus'></i> Xuất Excel</a>
                <a href='/live/NhanVien/sortNV' class='btn btn-add btn-sm' title='Sắp xếp'><i class='fas fa-plus'></i> Sắp xếp</a>
            </div>
        </div>
    </div>
</main>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
<script type="text/javascript">
    function xuatexcel() {
        var name = prompt("Nhập tên file của bạn", "Tên");
        exportData(name, '.xlsx');
    }

    function exportData(name, type) {
        const table = document.getElementById("customers");
        const rows = table.getElementsByTagName("tr");
        for (let i = 0; i < rows.length; i++) {
            const row = rows[i];
            if (row.cells.length > 0) {
                row.deleteCell(row.cells.length - 1); // Loại bỏ ô cuối cùng
            }
        }
        const fileName = name + type;
        const wb = XLSX.utils.table_to_book(table);
        XLSX.writeFile(wb, fileName);
    }
</script>
<script src="live/lib/js/sheet.js"></script>
<style>
    button a {
        text-decoration: none;
        color: inherit;
        display: block;
        width: 100%;
        height: 100%;
    }

    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        text-align: center;
        margin-top: 20px;
    }

    .btn-add {
        margin-left: 10px;
    }

    button:hover {
        background-color: #45a049;
    }

    button:active {
        background-color: #3e8e41;
    }
</style>

