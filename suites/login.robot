*** Settings ***
Resource            ../pageObject/homePage/homePage.robot
Resource            ../pageObject/loginPage/loginPage.robot
Test Setup          Open NG Apps 
Test Teardown       Close NG Apps       

*** Test Cases ***

TC001 Verify Success Login - with Input Valid Username and Password
     # Verifikasi Tampilan Halaman Beranda
    verify homePage
     # Klik Button Sign In di Halaman Beranda
    Click Sign In Button On Home Page
     # Verifikasi Tampilan Halaman Sign In
    Verify signIn Page
     # Input Username dengan valid username
    Input Username for Login                ${VALID_USERNAME}
     # Input Username dengan valid password
    Input Password for Login                ${VALID_PASSWORD}
     # Klik Button Sign In di Halaman Sign In
    Click Button Sign In
     # Verifikasi Tampilan setelah user berhasil login
    Verify Page After Login
     # Screenshoot halaman beranda setelah sukses login
    Screenshoot Page Login

TC002 Verify Failed Login - with Input Invalid Username
     # Verifikasi Tampilan Halaman Beranda
    verify homePage
     # Klik Button Sign In di Halaman Beranda
    Click Sign In Button On Home Page
     # Verifikasi Tampilan Halaman Sign In
    Verify signIn Page
     # Input Username dengan username yang tidak sesuai
    Input Username for Login                ${INVALID_USERNAME}
     # Input Password dengan password sesuai
    Input Password for Login                ${VALID_PASSWORD}
     # Klik Button Sign In di Halaman Sign In
    Click Button Sign In
     # Verifikasi user gagal sign in dan tampil pesan error
    Verify Error Message                    

TC003 Verify Failed Login - Username is Empty
     # Verifikasi Tampilan Halaman Beranda
    verify homePage
     # Klik Button Sign In di Halaman Beranda
    Click Sign In Button On Home Page
     # Verifikasi Tampilan Halaman Sign In
    Verify signIn Page
     # Input Username
    Input Username for Login                ${INVALID_USERNAME}
     # Field Username dikosongkan
    Username is Empty
     # Input Password
    Input Password for Login                ${VALID_PASSWORD}
     # Klik Button Sign In di Halaman Sign In
    Click Button Sign In
     # Verifikasi user gagal sign in dan tampil pesan error
    Verify Error Message                    

TC004 Verify Failed Login - with Input Invalid Password
     # Verifikasi Tampilan Halaman Beranda
    verify homePage
     # Klik Button Sign In di Halaman Beranda
    Click Sign In Button On Home Page
     # Verifikasi Tampilan Halaman Sign In
    Verify signIn Page
     # Input Username dengan username sesuai
    Input Username for Login                ${VALID_USERNAME}
     # Input Password dengan password yang tidak sesuai
    Input Password for Login                ${INVALID_PASSWORD}
     # Klik Button Sign In di Halaman Sign In
    Click Button Sign In
     # Verifikasi user gagal sign in dan tampil pesan error
    Verify Error Message                

TC005 Verify Failed Login - Password is Empty
     # Verifikasi Tampilan Halaman Beranda
    verify homePage
     # Klik Button Sign In di Halaman Beranda
    Click Sign In Button On Home Page
     # Verifikasi Tampilan Halaman Sign In
    Verify signIn Page
     # Input Username dengan username yang tidak sesuai
    Input Username for Login                ${VALID_USERNAME}
     # Input Password dengan password sesuai
    Input Password for Login                ${VALID_PASSWORD}
     # Field Password di Kosongkan
    Password is Empty
     # Klik Button Sign In di Halaman Sign In
    Click Button Sign In
     # Verifikasi user gagal sign in dan tampil pesan error
    Verify Error Message                    

TC006 Verify Failed Login - with Input Invalid Username & Password
     # Verifikasi Tampilan Halaman Beranda
    verify homePage
     # Klik Button Sign In di Halaman Beranda
    Click Sign In Button On Home Page
     # Verifikasi Tampilan Halaman Sign In
    Verify signIn Page
     # Input Username dengan username sesuai
    Input Username for Login                ${INVALID_USERNAME}
     # Input Password dengan password yang tidak sesuai
    Input Password for Login                ${INVALID_PASSWORD}
     # Klik Button Sign In di Halaman Sign In
    Click Button Sign In
     # Verifikasi user gagal sign in dan tampil pesan error
    Verify Error Message    

TC007 Verify Failed Login - Username & Password is Empty
     # Verifikasi Tampilan Halaman Beranda
    verify homePage
     # Klik Button Sign In di Halaman Beranda
    Click Sign In Button On Home Page
     # Verifikasi Tampilan Halaman Sign In
    Verify signIn Page
     # Input Username dengan username yang tidak sesuai
    Input Username for Login                ${VALID_USERNAME}
     # Input Password dengan password sesuai
    Input Password for Login                ${VALID_PASSWORD}
     # Filed Username di Kosongkan 
    Username is Empty 
     # Field Password di Kosongkan
    Password is Empty
     # Klik Button Sign In di Halaman Sign In
    Click Button Sign In
     # Verifikasi user gagal sign in dan tampil pesan error
    Verify Error Message                    


