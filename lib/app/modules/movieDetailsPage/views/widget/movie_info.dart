import 'package:flutter/material.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

import '../../../../data/global_methods.dart';

class MovieInfo extends StatelessWidget {
  final String title, info, overview, rating;
  final VoidCallback callback;

  const MovieInfo(
      {Key? key,
      required this.title,
      required this.info,
      required this.overview,
      required this.rating, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: callback,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Icon(
                Icons.keyboard_backspace_rounded,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: GlobalMethods.returnSize(context).height * .4,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: "Inter",
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            info,
            style: const TextStyle(
              color: Color(0xffcdced1),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            overview,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xff252634),
                    borderRadius: BorderRadius.circular(3)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Row(
                    children: [
                      RatingStars(
                        editable: false,
                        rating: double.parse(rating),
                        color: Colors.amber,
                        iconSize: 16,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        "$rating/5",
                        style: const TextStyle(
                          color: Color(0xffcdced1),
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
