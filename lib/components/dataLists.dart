import 'package:arijephyto/components/classElement.dart';

List<String> imgListOffres = [
  "assets/images/offre1.png",
  "assets/images/offre2.png",
  "assets/images/offre3.png",
  "assets/images/offre4.png",
];

List<String> imgListPort = [
  "assets/images/port1.png",
  "assets/images/port2.png",
  "assets/images/port3.png",
  "assets/images/port4.png",
  "assets/images/port5.png",
];

List<String> listPortName = [
  "Procédés Artisanaux",
  "Autorisé ONSSA",
  "100% Naturel",
  "Esprit Coopérative",
  "Made in Moroccoo",
];

List<String> imgListProduits = [
  'assets/images/produit0.jpg',
  'assets/images/produit1.jpg',
  'assets/images/produit2.jpg',
  'assets/images/produit3.jpg',
  'assets/images/produit4.jpg',
  'assets/images/produit5.jpg',
  'assets/images/produit6.jpg',
  'assets/images/produit7.jpg',
  'assets/images/produit8.jpg',
  'assets/images/produit9.jpg',
];

List<String> listPorduitsName = [
  "Argile à L’Oranger",
  "Argile à Lavande",
  "Argile forsetiere au jujubier",
  "Argile Menthe",
  "Argile royale à la rose",
  "Bourses de Plantes Séchées",
  "Camomille",
  "Crème Antiride",
  "Crème Bébé",
  "Diffuseur d’huiles essentielles en argile",
];

List<double> listProduitsPrix = [
  38.00,
  38.00,
  38.00,
  38.00,
  38.00,
  15.00,
  25.00,
  165.00,
  165.00,
  35.00,
];

List<Produit> listProduitsC = imgListProduits.map((item) => Produit(item , listPorduitsName[imgListProduits.indexOf(item)], 1, listProduitsPrix[imgListProduits.indexOf(item)], Produit.idClasse++)).toList();

Produit getProduit(List<Produit> list, int id){
  for (var i = 0; i < list.length; i++) {
    if(list[i].idProduit == id){
      return list[i];
    }
  }
  return null;
}

double calculeSommePanier(List<Produit> list){
  double somme = 0;
  for (var i = 0; i < list.length; i++) {
    somme += list[i].prodPrix;
  }
  return somme;
}