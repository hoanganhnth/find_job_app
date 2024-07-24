import 'package:app_flutter/share/base_component/container/circular_container.dart';
import 'package:app_flutter/share/base_component/curved_edges/curved_edges_widget.dart';
import 'package:app_flutter/share/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
        widget: Container(
          color: ColorConstants.primary,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                    backgroundColor: ColorConstants.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                    backgroundColor: ColorConstants.textWhite.withOpacity(0.1),
                  )),
              child,
                  ],
                ),
    ));
  }
}
