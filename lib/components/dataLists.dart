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
  "Made in Morocco",
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

bool isTheFisttime = true;

List<String> categoriesName = [
  'Accessoires',
  'Aromathérapie',
  'Corps',
  'Enfants',
  'Cheveux',
  'Visage',
  'Paniers Cadeaux',
  'Huiles nourissantes'
];

List<Produit> listProduitsAccessoires = [
  Produit(
    prodTitle: 'Pierre poncé',
    prodImage: 'assets/images/access1.jpg',
    images: ['assets/images/access11.jpg',],
    prodDescription: ' ',
    prodQntStock: 0,
    prodNombre: 1,
    prodText: '',
    categorie : 'Accessoires',
    prodPrix: 15,
  ),
  Produit(
    prodTitle: 'Diffuseur d’huiles essentielles en argile',
    prodImage: 'assets/images/access2.jpg',
    images: ['assets/images/access21.jpg',],
    prodDescription: ' ',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: '',
    categorie : 'Accessoires',
    prodPrix: 35,
  ),
];

List<Produit> listProduitsAroma = [
  Produit(
    prodTitle: 'Camomille',
    prodImage: 'assets/images/aroma1.jpg',
    images: ['assets/images/aroma11.jpg',],
    prodDescription: ' ',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: '',
    categorie : 'Alimentation saine, Aromathérapie',
    prodPrix: 25,
  ),
  Produit(
    prodTitle: 'Huile Essentielle Bois de Santal',
    prodImage: 'assets/images/aroma2.jpg',
    images: ['assets/images/aroma21.jpg',],
    prodDescription: ' ',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: '',
    categorie : 'Aromathérapie',
    prodPrix: 239,
  ),
];

List<Produit> listProduitsCorps = [
  Produit(
    prodTitle: 'Baume à Lèvres Rose',
    prodImage: 'assets/images/corp1.jpg',
    images: ['assets/images/corp11.jpg', 'assets/images/corp12.jpg',],
    prodDescription: ' Visage : Il hydrate les lèvres , en laissant une bonne odeur ,  Précieux et raffiné, ce baume enveloppe les lèvres d’un parfum de roses tout juste écloses. Propriété : 100% naturelle et pure',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: 'Un must ! Formulé à partir de beurre de Karité, de cire d’abeille, et d’huile végétales, ce baume est idéal pour la nutrition et le soin des lèvres. Un rendu légèrement brillant et rose pour mettre en valeur vos lèvres.',
    categorie : 'Corps, Soins hydratants',
    prodPrix: 30,
  ),
  Produit(
    prodTitle: 'Crème Bébé',
    prodImage: 'assets/images/corp2.jpg',
    images: ['assets/images/corp21.jpg', 'assets/images/corp22.jpg',],
    prodDescription: ' Emballage	Pot en plastique avec couvercle sécurité Volume	 200g',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: 'Un must ! Formulé à partir de beurre de Karité, de cire d’abeille, et d’huile végétales, ce baume est idéal pour la nutrition et le soin des lèvres. Un rendu légèrement brillant et rose pour mettre en valeur vos lèvres.',
    categorie : 'Corps, Enfants',
    prodPrix: 165,
  ),
  
];

List<Produit> listProduitsEnfants = [
  Produit(
    prodTitle: 'Ghassoul Bébé',
    prodImage: 'assets/images/enfant1.jpg',
    images: ['assets/images/enfant11.jpg', 'assets/images/enfant12.jpg',],
    prodDescription: ' ',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: 'Emballage	Pot en plastique avec couvercle sécurité Volume	 50g',
    categorie : 'Enfants',
    prodPrix: 30,
  ),
];

List<Produit> listProduitsCheveux = [
  Produit(
    prodTitle: 'Ghassoul',
    prodImage: 'assets/images/cheveux1.jpg',
    images: ['assets/images/cheveux1.jpg',],
    prodDescription: 'Volume	200g\n Emballage	 sachet en carton',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: ' ',
    categorie : 'Cheveux, Cheveux abimés, Corps, Masques Visage, Problemes de la peau, visage',
    prodPrix: 49,
  ),
];

List<Produit> listProduitsVisage = [
  Produit(
    prodTitle: 'Argile à L’Oranger',
    prodImage: 'assets/images/visage1.jpg',
    images: ['assets/images/visage11.jpg', 'assets/images/visage12.jpg',],
    prodDescription: 'Volume	200g\n Emballage	 sachet en carton',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: ' ',
    categorie : 'Masques Visage, visage',
    prodPrix: 38,
  ),
  Produit(
    prodTitle: 'Argile à Lavande',
    prodImage: 'assets/images/visage2.jpg',
    images: ['assets/images/visage21.jpg', 'assets/images/visage22.jpg',],
    prodDescription: 'Emballage	 Pot en plastique avec couvercle sécurité \nVolume 50g',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: ' ',
    categorie : 'Masques Visage, visage',
    prodPrix: 38,
  ),
];

List<Produit> listProduitsPaniersCad = [
  Produit(
    prodTitle: 'Panier cadeau 1',
    prodImage: 'assets/images/paniercad1.jpg',
    images: ['assets/images/paniercad11.jpg', 'assets/images/paniercad12.jpg',],
    prodDescription: '1 Huile nourissantes \n1 Argile \n1 Gommage Royal pour le corps \n1 Panier traditionnel',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: ' ',
    categorie : 'Paniers Cadeaux',
    prodPrix: 160,
  ),
];

List<Produit> listProduitsHuilesNour = [
  Produit(
    prodTitle: 'Huile d’Ail',
    prodImage: 'assets/images/huile1.jpg',
    images: ['assets/images/huile11.jpg', 'assets/images/huile12.jpg',],
    prodDescription: 'Ingrédient : Macérât huileux d’Ail \nPropriétés pour les cheveux : Redonne de la brillance; Favorise la repousse; Anti-Chut; Nourrissant; Fortifiant \nFortement conseillée pour les cheveux fragiles, rêches, cassants et secs. \nFortement conseillée pour les cheveux crépus afro ou métissés. \nPropriétés visage et corps: Hydratant; Nourrissant; Revitalisant; Assainissant; Réparateu \nFortement conseillée pour les peaux fragiles, sensibles, flasques, flétries.',
    prodQntStock: 10,
    prodNombre: 1,
    prodText: 'L’huile d’Ail est fabuleusement riche en vitamines A, C, E B1, B2, B3, B5, B6 et contient également des antioxydants comme des flavonoïdes et des tocophérols. \nIl stimule la repousse des cheveux et est certainement un des huiles qui agit le plus efficacement contre la chute des cheveux.',
    categorie : 'Cheveux, Huiles nourissantes, Soin antichute',
    prodPrix: 160,
  ),
];

Person person;