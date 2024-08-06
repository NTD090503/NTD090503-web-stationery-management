<?php

// http://localhost/live/Home/Show/1/2

class NhanVien extends Controller{
    // Must have SayHi()
    function SayHi(){
        $nhanVienmodel = $this->model("NhanVienModel");
        $this->ShowListNV();
    }

    function ShowListNV(){        
        // Call Models
         $nhanVienmodel = $this->model("NhanVienModel");
        $this->view("frmThongTinNV", [
            "NV" => $nhanVienmodel->listNhanVien()
        ]);
    }

    function addNV(){
        $this->view("frmThemNhanVien", []);
        $nhanVienmodel = $this->model("NhanVienModel");
        $nhanVienmodel->themNhanVien();
        
    }

    function editNV($id_taikhoan){
        $nhanVienmodel = $this->model("NhanVienModel");
        $this->view("frmSuaNhanVien", [
            "NV" => $nhanVienmodel->showEdit($id_taikhoan)
        ]);
        $nhanVienmodel->editNV($id_taikhoan);
        
    }

    function deleteNV($id_taikhoan){
        $nhanVienmodel = $this->model("NhanVienModel");
        $nhanVienmodel->deleteNV($id_taikhoan);
    }
}
?>