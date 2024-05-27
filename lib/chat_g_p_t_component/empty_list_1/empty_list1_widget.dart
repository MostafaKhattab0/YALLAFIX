import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'empty_list1_model.dart';
export 'empty_list1_model.dart';

class EmptyList1Widget extends StatefulWidget {
  const EmptyList1Widget({super.key});

  @override
  State<EmptyList1Widget> createState() => _EmptyList1WidgetState();
}

class _EmptyList1WidgetState extends State<EmptyList1Widget> {
  late EmptyList1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyList1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.forum_outlined,
              color: FlutterFlowTheme.of(context).primary,
              size: 90.0,
            ),
            SelectionArea(
                child: AutoSizeText(
              FFLocalizations.of(context).getText(
                '3o868stz' /* YallaFix AI Chat. */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    letterSpacing: 0.0,
                    lineHeight: 1.5,
                  ),
            )),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 0.0),
              child: SelectionArea(
                  child: AutoSizeText(
                FFLocalizations.of(context).getText(
                  'nprz3bfz' /* IMPORTANT!!!
All the answers a... */
                  ,
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
