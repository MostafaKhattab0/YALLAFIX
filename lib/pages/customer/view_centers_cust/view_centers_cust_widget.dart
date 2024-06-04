import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'view_centers_cust_model.dart';
export 'view_centers_cust_model.dart';

class ViewCentersCustWidget extends StatefulWidget {
  const ViewCentersCustWidget({
    super.key,
    this.center,
  });

  final CentersRecord? center;

  @override
  State<ViewCentersCustWidget> createState() => _ViewCentersCustWidgetState();
}

class _ViewCentersCustWidgetState extends State<ViewCentersCustWidget> {
  late ViewCentersCustModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewCentersCustModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ViewCenters_Cust'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('VIEW_CENTERS_CUST_Icon_n4vyaksq_ON_TAP');
            logFirebaseEvent('Icon_navigate_back');
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '08geil8v' /* Center Details */,
          ),
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                letterSpacing: 0.0,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('VIEW_CENTERS_CUST_Image_lubshqk8_ON_TAP');
                  logFirebaseEvent('Image_expand_image');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: FlutterFlowExpandedImageView(
                        image: Image.network(
                          valueOrDefault<String>(
                            widget.center?.centerImage,
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/yallafixtest-9nu2ft/assets/0i414sy5trut/WhatsApp-Image-2022-01-11-at-3.52.52-PM.jpeg',
                          ),
                          fit: BoxFit.contain,
                        ),
                        allowRotation: false,
                        tag: valueOrDefault<String>(
                          widget.center?.centerImage,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/yallafixtest-9nu2ft/assets/0i414sy5trut/WhatsApp-Image-2022-01-11-at-3.52.52-PM.jpeg',
                        ),
                        useHeroAnimation: true,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: valueOrDefault<String>(
                    widget.center?.centerImage,
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/yallafixtest-9nu2ft/assets/0i414sy5trut/WhatsApp-Image-2022-01-11-at-3.52.52-PM.jpeg',
                  ),
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      valueOrDefault<String>(
                        widget.center?.centerImage,
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/yallafixtest-9nu2ft/assets/0i414sy5trut/WhatsApp-Image-2022-01-11-at-3.52.52-PM.jpeg',
                      ),
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 230.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.center?.centerName,
                      'x',
                    ),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'vxnbr7ks' /* Opens from 10AM : 10PM */,
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.center?.centerDescription,
                      'x',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Divider(
                    height: 32.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Builder(
                        builder: (context) {
                          final cars = widget.center?.centerBrands
                                  .map((e) => e)
                                  .toList()
                                  .toList() ??
                              [];
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(cars.length, (carsIndex) {
                                final carsItem = cars[carsIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      carsItem,
                                      'x',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 24.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('VIEW_CENTERS_CUST_ButtonPrimary_ON_TAP');
                    logFirebaseEvent('ButtonPrimary_navigate_to');

                    context.pushNamed(
                      'booking_cust',
                      queryParameters: {
                        'centerRef': serializeParam(
                          widget.center?.reference,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'ixp3ezbn' /* Request an appointment */,
                  ),
                  options: FFButtonOptions(
                    width: 300.0,
                    height: 60.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle:
                        FlutterFlowTheme.of(context).headlineSmall.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              letterSpacing: 0.0,
                            ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
