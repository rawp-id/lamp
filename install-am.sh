#!/bin/bash

# Memperbarui daftar paket dan meng-upgrade paket yang sudah ada
sudo apt update && sudo apt upgrade -y

# Memasang Apache2
sudo apt install apache2 -y

# Mengganti port default Apache ke 8080
sudo sed -i 's/Listen 80/Listen 8080/g' /etc/apache2/ports.conf
sudo sed -i 's/:80/:8080/g' /etc/apache2/sites-enabled/000-default.conf

# Merestart Apache untuk menerapkan perubahan
sudo service apache2 restart

# Memasang MariaDB
sudo apt install mariadb-server -y

# Menampilkan pesan bahwa script telah selesai dijalankan
echo "Apache telah diubah portnya ke 8080 dan MariaDB telah terpasang."
