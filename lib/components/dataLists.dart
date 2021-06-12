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

List<String> imgListPromos1 = [
  "assets/images/promo1.jpg",
  "assets/images/promo2.jpg",
];

List<String> imgListPromos = [
  "assets/images/offrepromo1.jpg",
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

List<String> listPromosName = [
  "Offre Aid-Al-Adha",
];

List<String> listPromosDesc = [
  "Arije Phyto  vous présentons cette offre limitée et promotionnelle spécialement dédiées pour vous chers amoureux de la nature et des produits naturels, ce panier se compose de 7 produits à un prix réduit et avantageux pour vous afin que vous profitez durant le Aïd-El-Adha et prendre soin de votre beauté.",
];

List<String> listPromosText = [
  "Arije Phyto informe notre chère communauté amoureuse de la nature et des produits 100% Marocains une nouvelle sortie d’un panier spécialement dédié à Aïd-El-Adha pour s’intéresser à votre beauté, nous vous apportons ceci afin de prendre soin de vous durant cet évènement sacré, rejoignez-nous vite pour bénéficier de l’offre limité de ce panier composé de 7 produits : Ghassoul, Tisane Détox, Karité Rose, Vinaigre de Cidre, Gommage Hammam, Hydrolat Oranger et Huile de Rose de Damas.",
];

List<double> listPromoPrix = [
  299
];

List<double> listPromolastPrix = [
  350
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

List<Produit> listProduitsC = imgListProduits.map((item) => Produit(
    prodImage: item, 
    prodNombre: 1, 
    prodPrix: listProduitsPrix[imgListProduits.indexOf(item)], 
    prodTitle: listPorduitsName[imgListProduits.indexOf(item)],
    idProduit: Produit.idClasse++
    )
  ).toList();

List<Produit> listProduitsPromo = imgListPromos.map((item) => Produit(
    prodImage: item, 
    prodNombre: 1, 
    prodPrix: listPromoPrix[imgListPromos.indexOf(item)], 
    prodTitle: listPromosName[imgListPromos.indexOf(item)],
    idProduit: Produit.idClasse++,
    lastPrix: listPromolastPrix[imgListPromos.indexOf(item)],
    prodDescription: listPromosDesc[imgListPromos.indexOf(item)],
    prodText: listPromosText[imgListPromos.indexOf(item)],
    )
  ).toList();


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
    somme += list[i].prodPrix * list[i].prodNombre;
  }
  return somme;
}