module com.example.nmcnpm_team11 {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.graphics;
    requires java.sql;
    requires lombok;
    requires javafx.media;

    opens view to javafx.fxml;
    opens controller to javafx.fxml;
    opens entity to javafx.fxml;
    opens sound to javafx.fxml;

    exports view;
    exports controller;
    exports entity;
    exports controller.phanThuong;
    opens controller.phanThuong to javafx.fxml;
    exports controller.thongKe;
    opens controller.thongKe to javafx.fxml;
    exports controller.LichSu;
    opens controller.LichSu to javafx.fxml;
    exports controller.nhanKhau;
    opens controller.nhanKhau to javafx.fxml;
    exports controller.hoKhau;
    opens controller.hoKhau to javafx.fxml;
    exports entity.VO;
    opens entity.VO to javafx.fxml;
}