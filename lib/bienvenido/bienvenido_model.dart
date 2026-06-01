import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bienvenido_widget.dart' show BienvenidoWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BienvenidoModel extends FlutterFlowModel<BienvenidoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
