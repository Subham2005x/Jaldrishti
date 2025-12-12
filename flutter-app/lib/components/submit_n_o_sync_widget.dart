import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'submit_n_o_sync_model.dart';
export 'submit_n_o_sync_model.dart';

class SubmitNOSyncWidget extends StatefulWidget {
  const SubmitNOSyncWidget({super.key});

  @override
  State<SubmitNOSyncWidget> createState() => _SubmitNOSyncWidgetState();
}

class _SubmitNOSyncWidgetState extends State<SubmitNOSyncWidget> {
  late SubmitNOSyncModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitNOSyncModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).warning,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).tertiary,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Icon(
                  Icons.cloud_off,
                  color: FlutterFlowTheme.of(context).info,
                  size: 40.0,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'ro15vlyk' /* Report Saved Successfully Offl... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).warning,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                        ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'bfnqvvwp' /* Your report has been saved off... */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    MyReportsWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.leftToRight,
                      ),
                    },
                  );
                },
                text: FFLocalizations.of(context).getText(
                  '7h1n8vac' /* Continue */,
                ),
                options: FFButtonOptions(
                  width: 200.0,
                  height: 48.0,
                  padding: EdgeInsets.all(8.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).warning,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).info,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
