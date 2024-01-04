import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget searchField = Row(
  children: [
    Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: 'Search for products',
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 24,
                height: 24,
                color: Colors.grey.withOpacity(0.8),
              ),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    ),
    SizedBox(
      width: 15,
    ),
    SvgPicture.asset(
      'assets/icons/bell-regular.svg',
      width: 28,
      height: 28,
      color: Colors.green,
    ),
  ],
);
