import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/components/const.dart';

Widget ListItems(String imgUrl, String movieName) {
  return Container(
    margin: EdgeInsets.only(right: 12.0),
    height: 300.0 / 816 * height,
    width: 180.0 / 432 * width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 280.0 / 816 * height,
          width: 180 / 432 * width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10.0 / 816 * height,
        ),
        Text(
          movieName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ],
    ),
  );
}
