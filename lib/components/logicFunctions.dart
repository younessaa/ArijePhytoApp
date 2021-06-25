import 'classElement.dart';

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