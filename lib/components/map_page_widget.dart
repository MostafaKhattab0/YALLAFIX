import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'map_page_model.dart';
export 'map_page_model.dart';

class MapPageWidget extends StatefulWidget {
  const MapPageWidget({super.key});

  @override
  State<MapPageWidget> createState() => _MapPageWidgetState();
}

class _MapPageWidgetState extends State<MapPageWidget> {
  late MapPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapPageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowPlacePicker(
      iOSGoogleMapsApiKey: 'AIzaSyDIuQQQutnSkFXltBCVVDoCLdnUSOmMNvQ',
      androidGoogleMapsApiKey: 'AIzaSyBsZt4D2Dd2sH2s_c028WjOFNT-v56mu-Y',
      webGoogleMapsApiKey: 'AIzaSyCHDVgNHYN6Hg7gsnTbp9yFNG9IDjYSfDc',
      onSelect: (place) async {
        setState(() => _model.placePickerValue = place);
      },
      defaultText: FFLocalizations.of(context).getText(
        'qmzthwgr' /* Select Location */,
      ),
      icon: Icon(
        Icons.place,
        color: FlutterFlowTheme.of(context).info,
        size: 16.0,
      ),
      buttonOptions: FFButtonOptions(
        width: 200.0,
        height: 40.0,
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Readex Pro',
              color: FlutterFlowTheme.of(context).info,
              letterSpacing: 0.0,
            ),
        elevation: 2.0,
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
