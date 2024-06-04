import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future placepicker(BuildContext context) async {
  logFirebaseEvent('placepicker_launch_map');
  await launchMap(
    address: 'giza',
    title: '',
  );
}
