import 'package:flutter/material.dart';
import 'package:kuis1/product_model.dart';
import 'package:kuis1/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final ApiService _apiService = ApiService();
  List<Products> _Title = [];
  List<Products> _Category = [];
  List<Products> _Prices = [];

  @override
  void initState() {
    super.initState();
    _loadProduct;
  }

  Future<void> _loadProduct() async {
    final List<Map<String, dynamic>> allProductData = await _apiService
        .getAllTitle();

    final List<Map<String, dynamic>> allProductData = await _apiService
        .getAllCategory();

    final List<Map<String, dynamic>> allProductData = await _apiService
        .getAllPrice();
  }

  setState((){

    _allProduct = allProductData.map((e) => Products.fromJson(e)).toList();
    _Title = titleProduct.map((e) => M
  })
}

//Tulis jawaban di komentar bawah file home_page.dart:
//1. Jelaskan alur data dari ApiService hingga tampil di ListView.
//2. Mengapa kita perlu memisahkan list data asli dan list data yang ditampilkan saat melakukan filter?

//Jawaban no 1
//dimulai dari membuat file api_Service untuk melakukan pegisian link dari API yang akan di gunakan untuk menampilkan isi data dari API yang digunakan, selanjutnya
//memasukkan logika List yang akan digunakan untuk menampilkan data dari produk di homepage

//jawaban no 2
//karena jika list data asli yang kita tampilkan maka akan terjadi error yang dimana jika kita menekan button list maka semua product akan muncul bukan yang hanya ingin di filterkan saja
//maka dari itu kita perlu utk memisahkan list data asli dan data yang akan di tampilkan.
