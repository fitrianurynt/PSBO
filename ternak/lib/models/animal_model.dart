import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AnimalModel extends Equatable {
  final String nama;
  final String id;
  final String jenisKelamin;
  final String umur;
  final String kesehatan;
  final String bobot;
  final String jenisPakan;
  final String status;
  final String tanggalMasuk;
  final String tanggalKeluar;

  AnimalModel({
    required this.nama,
    required this.id,
    required this.jenisKelamin,
    required this.umur,
    required this.kesehatan,
    required this.bobot,
    required this.jenisPakan,
    required this.status,
    required this.tanggalMasuk,
    required this.tanggalKeluar,
  });

  AnimalModel copyWith({
    String? nama,
    String? id,
    String? jenisKelamin,
    String? umur,
    String? kesehatan,
    String? bobot,
    String? jenisPakan,
    String? status,
    String? tanggalMasuk,
    String? tanggalKeluar,
  }) {
    return AnimalModel(
      nama: nama ?? this.nama,
      id: id ?? this.id,
      jenisKelamin: jenisKelamin ?? this.jenisKelamin,
      umur: umur ?? this.umur,
      kesehatan: kesehatan ?? this.kesehatan,
      bobot: bobot ?? this.bobot,
      jenisPakan: jenisPakan ?? this.jenisPakan,
      status: status ?? this.status,
      tanggalMasuk: tanggalMasuk ?? this.tanggalMasuk,
      tanggalKeluar: tanggalKeluar ?? this.tanggalKeluar,
    );
  }

  @override
  List<Object> get props => [
        nama,
        id,
        jenisKelamin,
        umur,
        kesehatan,
        bobot,
        jenisPakan,
        status,
        tanggalMasuk,
        tanggalKeluar,
      ];

  static List<AnimalModel> tools = [
    AnimalModel(
        nama: "Traktor",
        id: "12345678",
        jenisKelamin: "Mesin",
        umur: "suzuki",
        kesehatan: "12.500.000",
        bobot: "102",
        jenisPakan: "Rumput",
        status: "Siap Jual",
        tanggalMasuk: "22 Mei 2022",
        tanggalKeluar: "-"),
  ];
}
