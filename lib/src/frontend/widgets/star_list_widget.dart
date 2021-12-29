import 'package:flutter/material.dart';

class StarListWidget extends StatelessWidget {
  const StarListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.star,
          size: 12,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: 12,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: 12,
          color: Colors.orange,
        ),
        Icon(
          Icons.star,
          size: 12,
          color: Colors.white,
        ),
        Icon(
          Icons.star,
          size: 12,
          color: Colors.white,
        ),
      ],
    );
  }
}
