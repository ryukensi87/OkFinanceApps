import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import 'add_pembayaran_widget.dart' show AddPembayaranWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddPembayaranModel extends FlutterFlowModel<AddPembayaranWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nama widget.
  String? namaValue;
  FormFieldController<String>? namaValueController;
  // State field(s) for alamat widget.
  String? alamatValue;
  FormFieldController<String>? alamatValueController;
  // State field(s) for area widget.
  FocusNode? areaFocusNode;
  TextEditingController? areaController;
  String? Function(BuildContext, String?)? areaControllerValidator;
  // State field(s) for angsuranke widget.
  FocusNode? angsurankeFocusNode;
  TextEditingController? angsurankeController;
  String? Function(BuildContext, String?)? angsurankeControllerValidator;
  // State field(s) for pembayaran widget.
  FocusNode? pembayaranFocusNode;
  TextEditingController? pembayaranController;
  String? Function(BuildContext, String?)? pembayaranControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    areaFocusNode?.dispose();
    areaController?.dispose();

    angsurankeFocusNode?.dispose();
    angsurankeController?.dispose();

    pembayaranFocusNode?.dispose();
    pembayaranController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
