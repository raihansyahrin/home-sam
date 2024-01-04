// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_sam/models/menu_model.dart';
import 'package:home_sam/models/promo_model.dart';
import 'package:home_sam/pages/ItemLayout.dart';
import 'package:home_sam/widgets/search_field.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  List<MenuModel> menu = [];
  List<PromoModel> promo = [];

  void initModel() {
    menu = MenuModel.getMenu();
    promo = PromoModel.getPromo();
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.red[100]!,
        ),
        appBar: AppBar(
          title: Text(
            'Grocery App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green[200],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchField,
                SizedBox(height: 30),
                _listMenu(menu: menu),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Promos for you',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(promo[index].photos),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                        itemCount: promo.length,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'For your dinner',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Image.asset(promo[index].photos),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                        itemCount: promo.length,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _listMenu extends StatelessWidget {
  const _listMenu({
    super.key,
    required this.menu,
  });

  final List<MenuModel> menu;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                          border:
                              Border.all(style: BorderStyle.solid, width: 0.1),
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
  }
}

void main() {
  runApp(MyApp());
}
