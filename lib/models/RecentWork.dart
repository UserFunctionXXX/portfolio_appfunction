import 'package:flutter/material.dart';

class RecentWork {
  final String image, category, title;
  final Color color;
  final int id;

  RecentWork({this.id, this.image, this.category, this.title,this.color});
}

// Demo List of my works
List<RecentWork> recentWorks2 = [
  RecentWork(
    id: 1,
    title: "APP Editora Melhoramentos",
    category: "Desenvolvimento Mobile",
    image: "assets/images/work_app_editora.png",
    color: Colors.white
  ),
  RecentWork(
    id: 2,
    title: "APP Controle Florestal",
    category: "Desenvolvimento Mobile",
    image: "assets/images/work_app_florestal.png",
    color: Colors.white
  ),
  RecentWork(
    id: 3,
    title: "Controle de Qualidade e Produção de Fibras",
    category: "Desenvolvimento ADVPL",
    image: "assets/images/work_controleproducao.png",
    color: Colors.white
  ),
  RecentWork(
    id: 4,
    title: "Integração Protheus X Ecommerce",
    category: "Desenvolvimento ADVPL",
    image: "assets/images/work_ecommerce.png",
    color: Colors.white
  ),
  RecentWork(
    id: 5,
    title: "Migração de Versão",
    category: "Consultoria Protheus",
    image: "assets/images/work_migracaoversao.png",
    color: Colors.white
  ),
  RecentWork(
    id: 6,
    title: "APP Escambo",
    category: "Desenvolvimento Mobile",
    image: "assets/images/work_app_escambo.png",
    color: Colors.white
  ),
  RecentWork(
    id: 7,
    title: "Tuning de Query",
    category: "Consultoria Protheus",
    image: "assets/images/work_tuning_query.png",
    color: Colors.white
  ),
  RecentWork(
    id: 8,
    title: "APP ETC Terras",
    category: "Desenvolvimento Mobile",
    image: "assets/images/work_app_etc.png",
    color: Colors.white
  ),
];
