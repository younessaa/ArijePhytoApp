
class Produit {
  static int idClasse = 0;
  String prodTitle;
  int prodNombre;
  int prodQntStock;
  double prodPrix;
  double lastPrix;
  String prodImage;
  String categorie;
  int idProduit;
  String prodDescription;
  String prodText;
  List<String> images = [];
  Produit({this.categorie, this.prodQntStock, this.prodImage, this.prodTitle, this.prodNombre, this.prodPrix, this.idProduit, this.lastPrix, this.prodDescription, this.prodText, this.images});
}

class Blog {
  static int idPlog = 0;
  String blogTitle;
  String blogImage;
  int idBlog;
  String blogDescription;
  String blogMediaLink;
  String blogTime;
  List<String> images = [];
  Blog({this.blogTime, this.blogTitle, this.blogDescription, this.blogImage, this.blogMediaLink, this.idBlog, this.images});
}

class Person {
  String _prenom;
  String _nom;
  String _adresse;
  String _ville;
  String _region;
  String _codePostale;
  String _pays;
  String _telephone;
  String _email;
  String _motDePasse;

  get getPrenom {
    return _prenom;
  }
  set setPrenom (String string) {
    _prenom = string;
  }
  get getNom {
    return _nom;
  }
  set setNom (String string) {
    _nom = string;
  }

  get getAdresse {
    return _adresse;
  }
  set setAdresse (String string) {
    _adresse = string;
  }

  get getVille {
    return _ville;
  }
  set setVille(String string) {
    _ville = string;
  }
  get getRegion {
    return _region;
  }
  set setRegion(String string) {
    _region = string;
  }

  get getCodePos {
    return _codePostale;
  }
  set setCodePos(String string) {
    _codePostale = string;
  }

  get getPays {
    return _pays;
  }
  set setPays(String string) {
    _pays = string;
  }

  get getTele {
    return _telephone;
  }
  set setTele(String string) {
    _telephone = string;
  }

  get getEmail {
    return _email;
  }
  set setEmail(String string) {
    _email = string;
  }

  get getMotPass {
    return _motDePasse;
  }
  set setMotPass(String string) {
    _motDePasse = string;
  }

}