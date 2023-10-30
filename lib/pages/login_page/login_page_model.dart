import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for phonenumber_create widget.
  FocusNode? phonenumberCreateFocusNode;
  TextEditingController? phonenumberCreateController;
  String? Function(BuildContext, String?)? phonenumberCreateControllerValidator;
  // State field(s) for nama_Create widget.
  FocusNode? namaCreateFocusNode;
  TextEditingController? namaCreateController;
  String? Function(BuildContext, String?)? namaCreateControllerValidator;
  // State field(s) for password_create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in NumberLogin widget.
  UserdataRecord? checkRegister;
  // Stores action output result for [Backend Call - Create Document] action in NumberLogin widget.
  UserdataRecord? createDokument;
  // State field(s) for phonenumberlogin widget.
  FocusNode? phonenumberloginFocusNode;
  TextEditingController? phonenumberloginController;
  String? Function(BuildContext, String?)? phonenumberloginControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserdataRecord? queryLogin;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    phonenumberCreateFocusNode?.dispose();
    phonenumberCreateController?.dispose();

    namaCreateFocusNode?.dispose();
    namaCreateController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateController?.dispose();

    phonenumberloginFocusNode?.dispose();
    phonenumberloginController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
