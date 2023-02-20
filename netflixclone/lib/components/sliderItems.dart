import 'package:flutter/material.dart';
import 'package:netflixclone/components/const.dart';

Widget sliderItems(String imgUrl, String movieName) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 200.0 / 816 * height,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(imgUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: 15.0 / 816 * height,
      ),
      Text(
        movieName,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
