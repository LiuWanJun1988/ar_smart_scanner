
import 'dart:math';
import 'package:scandit_flutter_datacapture_core/scandit_flutter_datacapture_core.dart';

extension Size on Quadrilateral {
  double width() {
    return max((topRight.x - topLeft.x).abs(), (bottomRight.x - bottomLeft.x).abs());
  }
}
