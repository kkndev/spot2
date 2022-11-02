import 'package:flutter/services.dart';

Future<Uint8List> getPngFromAsset() async {
  return await rootBundle
      .load('assets/images/png/cars.png')
      .then((data) => data.buffer.asUint8List());
}
