import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/timer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'appointment_cust_model.dart';
export 'appointment_cust_model.dart';

class AppointmentCustWidget extends StatefulWidget {
  const AppointmentCustWidget({super.key});

  @override
  State<AppointmentCustWidget> createState() => _AppointmentCustWidgetState();
}

class _AppointmentCustWidgetState extends State<AppointmentCustWidget> {
  late AppointmentCustModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppointmentCustModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'appointment_cust'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      builder: (context) => StreamBuilder<CustomersRecord>(
        stream: CustomersRecord.getDocument(currentUserDocument!.customerRef!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Scaffold(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              body: Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitFadingCircle(
                    color: FlutterFlowTheme.of(context).primary,
                    size: 50.0,
                  ),
                ),
              ),
            );
          }
          final appointmentCustCustomersRecord = snapshot.data!;
          return GestureDetector(
            onTap: () => _model.unfocusNode.canRequestFocus
                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                : FocusScope.of(context).unfocus(),
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'APPOINTMENT_CUST_arrow_back_rounded_ICN_');
                    logFirebaseEvent('IconButton_navigate_to');

                    context.pushNamed('home_cust');
                  },
                ),
                title: Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'igilmctw' /* Your Appointments */,
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                actions: const [],
                centerTitle: false,
              ),
              body: SafeArea(
                top: true,
                child: StreamBuilder<List<RequestsRecord>>(
                  stream: queryRequestsRecord(
                    queryBuilder: (requestsRecord) => requestsRecord
                        .where(
                          'customerRef',
                          isEqualTo: appointmentCustCustomersRecord.reference,
                        )
                        .where(
                          'is_accepted',
                          isEqualTo: true,
                        )
                        .where(
                          'is_rejected',
                          isEqualTo: false,
                        ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitFadingCircle(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<RequestsRecord> listViewRequestsRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewRequestsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewRequestsRecord =
                            listViewRequestsRecordList[listViewIndex];
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: StreamBuilder<CentersRecord>(
                            stream: CentersRecord.getDocument(
                                currentUserDocument!.centerRef!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitFadingCircle(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final columnCentersRecord = snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.network(
                                    valueOrDefault<String>(
                                      columnCentersRecord.centerImage,
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/yallafixtest-9nu2ft/assets/49y4sydb90q0/image_processing20211002-919-utbume.gif',
                                    ),
                                    width: 391.0,
                                    height: 134.0,
                                    fit: BoxFit.cover,
                                    alignment: const Alignment(0.0, 0.5),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 1.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.timerModels.getModel(
                                          listViewIndex.toString(),
                                          listViewIndex,
                                        ),
                                        updateCallback: () => setState(() {}),
                                        child: TimerWidget(
                                          key: Key(
                                            'Keyi2g_${listViewIndex.toString()}',
                                          ),
                                          parameter1: valueOrDefault<int>(
                                            listViewRequestsRecord
                                                .requestDate?.secondsSinceEpoch,
                                            0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 0.0, 8.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              columnCentersRecord.centerName,
                                              'x',
                                            ),
                                            style: const TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Builder(
                                      builder: (context) {
                                        final services = listViewRequestsRecord
                                            .requestServices
                                            .toList();
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              services.length, (servicesIndex) {
                                            final servicesItem =
                                                services[servicesIndex];
                                            return Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 15.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  servicesItem,
                                                  'x',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 0.0, 8.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              listViewRequestsRecord
                                                  .requestDescription,
                                              'x',
                                            ),
                                            style: const TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 0.0, 8.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: valueOrDefault<String>(
                                              listViewRequestsRecord.requestDate
                                                  ?.toString(),
                                              'x',
                                            ),
                                            style: const TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'APPOINTMENT_CUST_REQUEST_TO_EDIT_BTN_ON_');
                                            logFirebaseEvent(
                                                'Button_navigate_to');

                                            context.pushNamed(
                                              'booking_edit_cust',
                                              queryParameters: {
                                                'req': serializeParam(
                                                  listViewRequestsRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'req': listViewRequestsRecord,
                                              },
                                            );
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'ok9k7zde' /* Request to edit */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'APPOINTMENT_CUST_PAGE_CANCEL_BTN_ON_TAP');
                                            logFirebaseEvent(
                                                'Button_backend_call');
                                            await listViewRequestsRecord
                                                .reference
                                                .delete();
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '5l0vo80w' /* Cancel */,
                                          ),
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFF9E2628),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
