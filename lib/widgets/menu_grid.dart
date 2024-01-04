import 'package:flutter/material.dart';
import 'package:home_sam/models/menu_model.dart';
import 'package:home_sam/pages/ItemLayout.dart';

List<MenuModel> menu = [];

void initModel() {
  menu = MenuModel.getMenu();
}

initModel();

Widget gridMenu = build(BuildContext context) {
  initModel();
  return gridMenu;
} 

Widget gridMenu = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Text(
      'What do you looking for?',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    ),
    SizedBox(
      height: 10,
    ),
    GridView.builder(
      // scrollDirection: Axis.vertical
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of columns
        childAspectRatio: 0.9,
        // crossAxisSpacing: 10,
        mainAxisSpacing: 15,
      ),
      itemCount: menu.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ItemLayout())),
          child: Container(
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.solid, width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: 60,
                  height: 60,
                  child: Image.asset(
                    menu[index].photos,
                  ),
                ),
                Expanded(
                  child: Text(
                    menu[index].name,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  ],
);
