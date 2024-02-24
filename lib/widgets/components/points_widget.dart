import 'package:flutter/material.dart';

import '../../helpers/image/image_helper.dart';

class PointsWidget extends StatelessWidget {
  const PointsWidget({super.key, required this.points});
  final int? points;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      width: 80,
      height: 32,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ImageHelper.getSvg(SvgNames.pointsIcon),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text((points != null) ? '$points' : '0'),
          )
        ],
      ),
    );
  }
}
