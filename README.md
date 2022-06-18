<h1 align="center"> PSBO Kelompok 2 </h1>
<h1 align="center"> Modul Manajemen Data Hewan Ternak </h1>
    
## Developer
|Nama|NIM|
|--|--|
|**Imaduddin Abdurrahman**|G64190023|
|**Yuritma Dwi Ardita Putri**|G64190048|
|**Fitria Nuryantika**|G64190058|
|**Irgi Muttaqin Fahrezi Situmorang**|G64190103|
|**Malvin Palevi**|G64190120|
    
## Deskripsi Singkat
    
**Sahabat Ternak**
    
Kamu adalah seorang mahasiswa IPB University yang ingin menjadi seorang peternak. Kamu mulai mencari tau bagaimana cara menjadi seorang perternak yang baik. Suatu waktu kamu dihadapkan suatu masalah, yaitu bagaimana cara mengetahui hewan-hewan ternak yang kamu miliki. Mungkin ketika seorang peternak hanya memiliki 10-20 hewan ternak, peternak tersebut masih bisa mengawasi serta mengenali hewannya masing-masing. Coba bayangkan jika dalam suatu peternakan ada 1000 bahkan 10000 hewan disana, pasti cukup sulit mengetahui kondisi masing-masing hewannya bukan?
    
Sahabat Ternak hadir untuk menjawab permasalahan tersebut. Sahabat Ternak merupakan sebuah Mobile Apps yang membantu kalian semua untuk mendata hewan ternak yang kalian miliki. Menggunakan Sahabat Ternak dapat memudahkan pengguna untuk mengetahui status hewan secara spesifik dari masing-masing hewannya.

## User Analysis
    
    
## Ruang Lingkup Pengembangan
**Perangkat Keras**
Processor           : AMD Ryzen 5 3500U @ 2.1GHz <br>
Memory              : 8 GB <br>
Graphics Card       : AMD Radeon Graohics Processor <br>
Storage             : 512 GB SSD <br>
**Perangkat Lunak**<br>
Operating System    : Windows 10 <br>
Text Editor		    : Visual Studio Code <br>

## Konsep OOP yang digunakan
**Object dan Class**

## Architecture Pattern

Model-View-Controller (MVC)
MVC, kami menggunakan MVC dikarenakan Pattern ini sesuai dengan aplikasi yang kami kembangkan

Model : Mengelola program aplikasi sebagai penentu bagaimana data disimpan, dtambah, maupun dirubah
View : Menampilkan secara visual data
Controller : Mengartikan event yang dilakukan pengguna dan menjadikannya perintah sehingga model dapat berubah

## Design Pattern

Composite

Hal ini karena Composite dapat memberikan solusi dari masalah berupa tree. Pada kasus composite sebuah masalah dapat dilihat sebagai dua atribut, yaitu Products dan Boxes. Pada aplikasi yang kami rancang kami menganggap bahwa Hewan ternak merupakan Boxes dan Sapi, Kambing, dan Unggas merupakan Products.

## Metode Pengembangan Desain

Tahapan yang kami lakukan ketika mengembangkan aplikasi sahabat ternak menggunakan metode waterfall. Tahapan tersebut adalah sebagai berikut, yaitu Requirement Analysis, Design System, Coding, Integration, dan terakhir Operation & Maintenance. Berikut penjelasan dari tiap tahapan yang kami lakukan: 

1. Requirement Analysis : tahapan ini kami lakukan dengan berdikusi satu tim dan mencari permasalahan yang ada

2. Design System : Kami mulai merancang sistem yang akan kami bangun dengan membuat Use Case, Activity, Class Diagram

3. Coding : Setelah sudah mulai tergambar arah aplikasi yang akan kami kerjakan, kami mulai melakukan aktifitas pengcodingan

4. Intergration : Hasil dari coding siap digunakan oleh user

5. Operation & Maintenance : Pengoperasian aplikasi oleh user dan pemeliharaan sistem oleh kami

# Hasil 

## Use Case Diagram

![WhatsApp Image 2022-06-16 at 9 45 17 PM](https://user-images.githubusercontent.com/63392797/174346840-2c896b51-ad6d-4339-8c21-fc3c5a980cb4.jpeg)

## Activity Diagram

![loginternak drawio](https://user-images.githubusercontent.com/80470248/173869190-4504c444-c788-428c-8fdc-df47a1c93453.png)
![addternak drawio](https://user-images.githubusercontent.com/80470248/173869323-aff5a80a-2b30-4dbf-a2a3-ddbfcd7383fe.png)
![viewternak drawio](https://user-images.githubusercontent.com/80470248/173868929-c1c10de6-989c-4817-927f-0fd5bf653181.png)

## Class Diagram

![Copy of PSBO drawio (1)](https://user-images.githubusercontent.com/63392797/174351207-40c3da1b-3d92-44dc-be30-edee13da6cad.png)

## ERD

![psbo drawio](https://user-images.githubusercontent.com/55616308/174269793-03852bd8-8b01-4768-82a8-d311243d62ad.png)

## Arsitektur Sistem

## Fungsi Utama

Sahabat Ternak memiliki 2 fitur utama yaitu :
1. Melihat Daftar Hewan Ternak

User dapat melihat daftar hewan ternak pada aplikasi yang dimiliki sesuai data yang ada pada database user

2. Menambah Data Hewan Ternak

User dapat menambahkan data pada database user untuk selanjutnya dapat dilihat di fitur "Melihat Daftar Hewan Ternak"

Fungsi CRUD

- CREATE    : Pengguna dapat membuat database pada form pengisian data hewan ternak
- READ      : Pengguna dapat melihat daftar hewan ternak
- UPDATE    : -
- DELETE    : -


## Hasil Implementasi

