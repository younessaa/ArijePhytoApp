
class Produit {
  static int idClasse = 0;
  String prodTitle;
  int prodNombre;
  double prodPrix;
  double lastPrix;
  String prodImage;
  int idProduit;
  String prodDescription;
  String prodText;
  List<String> images = [];
  Produit({this.prodImage, this.prodTitle, this.prodNombre, this.prodPrix, this.idProduit, this.lastPrix, this.prodDescription, this.prodText, this.images});
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


