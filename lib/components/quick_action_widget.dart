import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'quick_action_model.dart';
export 'quick_action_model.dart';

class QuickActionWidget extends StatefulWidget {
  const QuickActionWidget({
    super.key,
    Color? bg,
    this.icon,
    Color? iconColor,
    String? label,
  })  : this.bg = bg ?? const Color(0x00000000),
        this.iconColor = iconColor ?? const Color(0x00000000),
        this.label = label ?? 'New Project';

  final Color bg;
  final Widget? icon;
  final Color iconColor;
  final String label;

  @override
  State<QuickActionWidget> createState() => _QuickActionWidgetState();
}

class _QuickActionWidgetState extends State<QuickActionWidget> {
  late QuickActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuickActionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              widget.bg,
              Color(0x00000000),
            ),
            borderRadius: BorderRadius.circular(24.0),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0.0, 0.0),
          child: widget.icon!,
        ),
        Text(
          valueOrDefault<String>(
            widget.label,
            'New Project',
          ),
          maxLines: 1,
          style: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                lineHeight: 1.4,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
