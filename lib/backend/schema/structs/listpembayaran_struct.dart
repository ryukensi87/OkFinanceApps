// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListpembayaranStruct extends FFFirebaseStruct {
  ListpembayaranStruct({
    String? pNama,
    String? pAlamat,
    String? pArea,
    double? pAngsurannomi,
    int? pPembayaranke,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pNama = pNama,
        _pAlamat = pAlamat,
        _pArea = pArea,
        _pAngsurannomi = pAngsurannomi,
        _pPembayaranke = pPembayaranke,
        super(firestoreUtilData);

  // "p_nama" field.
  String? _pNama;
  String get pNama => _pNama ?? '';
  set pNama(String? val) => _pNama = val;
  bool hasPNama() => _pNama != null;

  // "p_alamat" field.
  String? _pAlamat;
  String get pAlamat => _pAlamat ?? '';
  set pAlamat(String? val) => _pAlamat = val;
  bool hasPAlamat() => _pAlamat != null;

  // "p_area" field.
  String? _pArea;
  String get pArea => _pArea ?? '';
  set pArea(String? val) => _pArea = val;
  bool hasPArea() => _pArea != null;

  // "p_angsurannomi" field.
  double? _pAngsurannomi;
  double get pAngsurannomi => _pAngsurannomi ?? 0.0;
  set pAngsurannomi(double? val) => _pAngsurannomi = val;
  void incrementPAngsurannomi(double amount) =>
      _pAngsurannomi = pAngsurannomi + amount;
  bool hasPAngsurannomi() => _pAngsurannomi != null;

  // "p_pembayaranke" field.
  int? _pPembayaranke;
  int get pPembayaranke => _pPembayaranke ?? 0;
  set pPembayaranke(int? val) => _pPembayaranke = val;
  void incrementPPembayaranke(int amount) =>
      _pPembayaranke = pPembayaranke + amount;
  bool hasPPembayaranke() => _pPembayaranke != null;

  static ListpembayaranStruct fromMap(Map<String, dynamic> data) =>
      ListpembayaranStruct(
        pNama: data['p_nama'] as String?,
        pAlamat: data['p_alamat'] as String?,
        pArea: data['p_area'] as String?,
        pAngsurannomi: castToType<double>(data['p_angsurannomi']),
        pPembayaranke: castToType<int>(data['p_pembayaranke']),
      );

  static ListpembayaranStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ListpembayaranStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'p_nama': _pNama,
        'p_alamat': _pAlamat,
        'p_area': _pArea,
        'p_angsurannomi': _pAngsurannomi,
        'p_pembayaranke': _pPembayaranke,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'p_nama': serializeParam(
          _pNama,
          ParamType.String,
        ),
        'p_alamat': serializeParam(
          _pAlamat,
          ParamType.String,
        ),
        'p_area': serializeParam(
          _pArea,
          ParamType.String,
        ),
        'p_angsurannomi': serializeParam(
          _pAngsurannomi,
          ParamType.double,
        ),
        'p_pembayaranke': serializeParam(
          _pPembayaranke,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListpembayaranStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListpembayaranStruct(
        pNama: deserializeParam(
          data['p_nama'],
          ParamType.String,
          false,
        ),
        pAlamat: deserializeParam(
          data['p_alamat'],
          ParamType.String,
          false,
        ),
        pArea: deserializeParam(
          data['p_area'],
          ParamType.String,
          false,
        ),
        pAngsurannomi: deserializeParam(
          data['p_angsurannomi'],
          ParamType.double,
          false,
        ),
        pPembayaranke: deserializeParam(
          data['p_pembayaranke'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListpembayaranStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListpembayaranStruct &&
        pNama == other.pNama &&
        pAlamat == other.pAlamat &&
        pArea == other.pArea &&
        pAngsurannomi == other.pAngsurannomi &&
        pPembayaranke == other.pPembayaranke;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([pNama, pAlamat, pArea, pAngsurannomi, pPembayaranke]);
}

ListpembayaranStruct createListpembayaranStruct({
  String? pNama,
  String? pAlamat,
  String? pArea,
  double? pAngsurannomi,
  int? pPembayaranke,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListpembayaranStruct(
      pNama: pNama,
      pAlamat: pAlamat,
      pArea: pArea,
      pAngsurannomi: pAngsurannomi,
      pPembayaranke: pPembayaranke,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListpembayaranStruct? updateListpembayaranStruct(
  ListpembayaranStruct? listpembayaran, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listpembayaran
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListpembayaranStructData(
  Map<String, dynamic> firestoreData,
  ListpembayaranStruct? listpembayaran,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listpembayaran == null) {
    return;
  }
  if (listpembayaran.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listpembayaran.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listpembayaranData =
      getListpembayaranFirestoreData(listpembayaran, forFieldValue);
  final nestedData =
      listpembayaranData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listpembayaran.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListpembayaranFirestoreData(
  ListpembayaranStruct? listpembayaran, [
  bool forFieldValue = false,
]) {
  if (listpembayaran == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listpembayaran.toMap());

  // Add any Firestore field values
  listpembayaran.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListpembayaranListFirestoreData(
  List<ListpembayaranStruct>? listpembayarans,
) =>
    listpembayarans
        ?.map((e) => getListpembayaranFirestoreData(e, true))
        .toList() ??
    [];
