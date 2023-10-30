import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import 'add_konsumen_widget.dart' show AddKonsumenWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddKonsumenModel extends FlutterFlowModel<AddKonsumenWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nama widget.
  FocusNode? namaFocusNode;
  TextEditingController? namaController;
  String? Function(BuildContext, String?)? namaControllerValidator;
  // State field(s) for alamat widget.
  FocusNode? alamatFocusNode;
  TextEditingController? alamatController;
  String? Function(BuildContext, String?)? alamatControllerValidator;
  // State field(s) for area widget.
  FocusNode? areaFocusNode;
  TextEditingController? areaController;
  String? Function(BuildContext, String?)? areaControllerValidator;
  // State field(s) for notlp widget.
  FocusNode? notlpFocusNode;
  TextEditingController? notlpController;
  String? Function(BuildContext, String?)? notlpControllerValidator;
  // State field(s) for nilaikredit widget.
  FocusNode? nilaikreditFocusNode1;
  TextEditingController? nilaikreditController1;
  String? Function(BuildContext, String?)? nilaikreditController1Validator;
  // State field(s) for nilaikredit widget.
  FocusNode? nilaikreditFocusNode2;
  TextEditingController? nilaikreditController2;
  String? Function(BuildContext, String?)? nilaikreditController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    namaFocusNode?.dispose();
    namaController?.dispose();

    alamatFocusNode?.dispose();
    alamatController?.dispose();

    areaFocusNode?.dispose();
    areaController?.dispose();

    notlpFocusNode?.dispose();
    notlpController?.dispose();

    nilaikreditFocusNode1?.dispose();
    nilaikreditController1?.dispose();

    nilaikreditFocusNode2?.dispose();
    nilaikreditController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
