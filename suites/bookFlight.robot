*** Settings ***
Resource    ../pageObject/base/base.robot
Resource    ../pageObject/homePage/homePage.robot
Resource    ../pageObject/loginPage/loginPage.robot
Resource    ../pageObject/bookPage/bookPage.robot

Test Setup        Run Keywords
...               Open NG Apps
...               Sign In With Valid Username and Password

Test Teardown     Close NG Apps

*** Test Cases ***

TC001 Verify Success Book One Way Flight
    Verify Book Button Appears
    # Verifikasi Tampilan Halaman dan Menu
    Click Button Book
    # Klik Button Book
    Verify Screen Book Flight
    # Verifikasi Tampilan Halaman Book
    Select Depature
    # Pilih Kota Asal Keberangkatan
    Select Destination
    # Pilih Kota Tujuan
    Select Flight Class
    # Pilih Kelas
    Select Start Date and End Date
    # Pilih Tanggal
    Select Flight Option
    # Pilih Opsi Penerbangan
    Select Book Button
    # Klik Button Book
    Verify Confirmation Screen
    # Verifikasi Halaman Konfirmasi
    Select Price in Confirmation Page
    # Pilih Harga
    Click Button Confirm 
    # Klik Button Confirm
    Verify Screen After Book Flight 
    # Verifikasi Tampilan Sukses Book Flight 
    Screenshoot Book Flight

TC002 Verify Success Book Round Trip Flight
    Verify Book Button Appears
    # Verifikasi Tampilan Halaman dan Menu
    Click Button Book
    # Klik Button Book
    Verify Screen Book Flight
    # Verifikasi Tampilan Halaman Book
    Select Round Trip Tab
    # Pilih Tab Round Trip
    Select Depature
    # Pilih Kota Asal Keberangkatan
    Select Destination
    # Pilih Kota Tujuan
    Select Flight Class
    # Pilih Kelas
    Select Start Date and End Date
    # Pilih Tanggal
    Select Flight Option 3
    # Pilih Opsi Penerbangan
    Select Book Button
    # Klik Button Book
    Verify Confirmation Screen
    # Verifikasi Halaman Konfirmasi
    Select Price in Confirmation Page
    # Pilih Harga
    Click Button Confirm 
    # Klik Button Confirm
    Verify Screen After Book Flight 
    # Verifikasi Tampilan Sukses Book Flight
    Screenshoot Book Flight

    
TC003 Book Flight without choose destination, class, date, Option, and Price
    Verify Book Button Appears
    # Verifikasi Tampilan Halaman dan Menu
    Click Button Book
    # Klik Button Book
    Verify Screen Book Flight
    # Verifikasi Tampilan Halaman Book
    Select Book Button
    # Klik Button Book
    Verify Confirmation Screen
    # Verifikasi Halaman Konfirmasi
    Click Button Confirm 
    # Klik Button Confirm
    Verify Screen After Book Flight 
    # Verifikasi Tampilan Sukses Book Flight 
    Screenshoot Book Flight
    