import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constants.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numberOfReviewer;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;

  const TitlePriceRating({Key key, this.price, this.numberOfReviewer, this.rating, this.name, this.onRatingChanged}):super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      SmoothStarRating(
                        borderColor: kPrimaryColor,
                        rating: 4,
                        onRated: onRatingChanged,
                      ),
                      Text("$numberOfReviewer reviewer")
                    ],
                  )
                ],
              )),
          priceTag(context: context, price: price)
        ],
      ),
    );
  }
}
ClipPath priceTag({context, price}) {
  return ClipPath(
    clipper: PricerCliper(),
    child: Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(vertical: 15),
      height: 66,
      width: 66,
      color: kPrimaryColor,
      child: Text("\$$price",
          style: Theme.of(context).textTheme.headline6.copyWith(
              color: Colors.white, fontWeight: FontWeight.bold)),
    ),
  );
}
class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}