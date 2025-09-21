import 'package:flutter/material.dart';
import '../../../../utils/constants/color.dart';
import 'circular_container.dart';
import 'curved_edges_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: DColors.primary,
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: DColors.navIconTextColor,
                )),
            Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: DColors.navBackground,
                )),
            child
          ],
        ),
      ),
    );
  }
}
