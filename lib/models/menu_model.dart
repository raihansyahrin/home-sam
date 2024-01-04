class MenuModel {
  int id;
  String photos;
  String name;

  MenuModel({required this.id, required this.photos, required this.name});

  static List<MenuModel> getMenu() {
    List<MenuModel> menu = [];

    menu.add(
      MenuModel(
          id: 0, photos: 'assets/images/fruits-image.png', name: 'Vegetables'),
    );

    menu.add(
      MenuModel(
          id: 1, photos: 'assets/images/fruits-image.png', name: 'Fruits'),
    );

    menu.add(
      MenuModel(id: 2, photos: 'assets/images/fruits-image.png', name: 'Meat'),
    );

    menu.add(
      MenuModel(
          id: 3, photos: 'assets/images/fruits-image.png', name: 'Seafood'),
    );

    menu.add(
      MenuModel(
          id: 4, photos: 'assets/images/milk-image.png', name: 'Milk & Egg'),
    );

    menu.add(
      MenuModel(id: 5, photos: 'assets/images/fruits-image.png', name: 'Bread'),
    );

    menu.add(
      MenuModel(
          id: 6, photos: 'assets/images/fruits-image.png', name: 'Frozen'),
    );

    menu.add(
      MenuModel(
          id: 7, photos: 'assets/images/fruits-image.png', name: 'Organic'),
    );

    return menu;
  }
}
