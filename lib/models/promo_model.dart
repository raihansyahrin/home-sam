class PromoModel {
  int id;
  String photos;

  PromoModel({required this.id, required this.photos});

  static List<PromoModel> getPromo() {
    List<PromoModel> promo = [];

    promo.add(PromoModel(id: 0, photos: 'assets/images/iklan-image.png'));
    promo.add(PromoModel(id: 1, photos: 'assets/images/iklan-image.png'));
    promo.add(PromoModel(id: 2, photos: 'assets/images/iklan-image.png'));
    return promo;
  }
}
