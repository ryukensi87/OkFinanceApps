// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListkonsumenStruct extends FFFirebaseStruct {
  ListkonsumenStruct({
    String? kNama,
    String? kAlamat,
    String? kArea,
    String? kFotoid,
    String? kNomortlp,
    double? kNilaikredit,
    int? kBulancicilan,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _kNama = kNama,
        _kAlamat = kAlamat,
        _kArea = kArea,
        _kFotoid = kFotoid,
        _kNomortlp = kNomortlp,
        _kNilaikredit = kNilaikredit,
        _kBulancicilan = kBulancicilan,
        super(firestoreUtilData);

  // "k_nama" field.
  String? _kNama;
  String get kNama => _kNama ?? '';
  set kNama(String? val) => _kNama = val;
  bool hasKNama() => _kNama != null;

  // "k_alamat" field.
  String? _kAlamat;
  String get kAlamat => _kAlamat ?? '';
  set kAlamat(String? val) => _kAlamat = val;
  bool hasKAlamat() => _kAlamat != null;

  // "k_area" field.
  String? _kArea;
  String get kArea => _kArea ?? '';
  set kArea(String? val) => _kArea = val;
  bool hasKArea() => _kArea != null;

  // "k_fotoid" field.
  String? _kFotoid;
  String get kFotoid => _kFotoid ?? '';
  set kFotoid(String? val) => _kFotoid = val;
  bool hasKFotoid() => _kFotoid != null;

  // "k_nomortlp" field.
  String? _kNomortlp;
  String get kNomortlp => _kNomortlp ?? '';
  set kNomortlp(String? val) => _kNomortlp = val;
  bool hasKNomortlp() => _kNomortlp != null;

  // "k_nilaikredit" field.
  double? _kNilaikredit;
  double get kNilaikredit => _kNilaikredit ?? 0.0;
  set kNilaikredit(double? val) => _kNilaikredit = val;
  void incrementKNilaikredit(double amount) =>
      _kNilaikredit = kNilaikredit + amount;
  bool hasKNilaikredit() => _kNilaikredit != null;

  // "k_bulancicilan" field.
  int? _kBulancicilan;
  int get kBulancicilan => _kBulancicilan ?? 0;
  set kBulancicilan(int? val) => _kBulancicilan = val;
  void incrementKBulancicilan(int amount) =>
      _kBulancicilan = kBulancicilan + amount;
  bool hasKBulancicilan() => _kBulancicilan != null;

  static ListkonsumenStruct fromMap(Map<String, dynamic> data) =>
      ListkonsumenStruct(
        kNama: data['k_nama'] as String?,
        kAlamat: data['k_alamat'] as String?,
        kArea: data['k_area'] as String?,
        kFotoid: data['k_fotoid'] as String?,
        kNomortlp: data['k_nomortlp'] as String?,
        kNilaikredit: castToType<double>(data['k_nilaikredit']),
        kBulancicilan: castToType<int>(data['k_bulancicilan']),
      );

  static ListkonsumenStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ListkonsumenStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'k_nama': _kNama,
        'k_alamat': _kAlamat,
        'k_area': _kArea,
        'k_fotoid': _kFotoid,
        'k_nomortlp': _kNomortlp,
        'k_nilaikredit': _kNilaikredit,
        'k_bulancicilan': _kBulancicilan,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'k_nama': serializeParam(
          _kNama,
          ParamType.String,
        ),
        'k_alamat': serializeParam(
          _kAlamat,
          ParamType.String,
        ),
        'k_area': serializeParam(
          _kArea,
          ParamType.String,
        ),
        'k_fotoid': serializeParam(
          _kFotoid,
          ParamType.String,
        ),
        'k_nomortlp': serializeParam(
          _kNomortlp,
          ParamType.String,
        ),
        'k_nilaikredit': serializeParam(
          _kNilaikredit,
          ParamType.double,
        ),
        'k_bulancicilan': serializeParam(
          _kBulancicilan,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListkonsumenStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListkonsumenStruct(
        kNama: deserializeParam(
          data['k_nama'],
          ParamType.String,
          false,
        ),
        kAlamat: deserializeParam(
          data['k_alamat'],
          ParamType.String,
          false,
        ),
        kArea: deserializeParam(
          data['k_area'],
          ParamType.String,
          false,
        ),
        kFotoid: deserializeParam(
          data['k_fotoid'],
          ParamType.String,
          false,
        ),
        kNomortlp: deserializeParam(
          data['k_nomortlp'],
          ParamType.String,
          false,
        ),
        kNilaikredit: deserializeParam(
          data['k_nilaikredit'],
          ParamType.double,
          false,
        ),
        kBulancicilan: deserializeParam(
          data['k_bulancicilan'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListkonsumenStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListkonsumenStruct &&
        kNama == other.kNama &&
        kAlamat == other.kAlamat &&
        kArea == other.kArea &&
        kFotoid == other.kFotoid &&
        kNomortlp == other.kNomortlp &&
        kNilaikredit == other.kNilaikredit &&
        kBulancicilan == other.kBulancicilan;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [kNama, kAlamat, kArea, kFotoid, kNomortlp, kNilaikredit, kBulancicilan]);
}

ListkonsumenStruct createListkonsumenStruct({
  String? kNama,
  String? kAlamat,
  String? kArea,
  String? kFotoid,
  String? kNomortlp,
  double? kNilaikredit,
  int? kBulancicilan,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListkonsumenStruct(
      kNama: kNama,
      kAlamat: kAlamat,
      kArea: kArea,
      kFotoid: kFotoid,
      kNomortlp: kNomortlp,
      kNilaikredit: kNilaikredit,
      kBulancicilan: kBulancicilan,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListkonsumenStruct? updateListkonsumenStruct(
  ListkonsumenStruct? listkonsumen, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listkonsumen
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListkonsumenStructData(
  Map<String, dynamic> firestoreData,
  ListkonsumenStruct? listkonsumen,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listkonsumen == null) {
    return;
  }
  if (listkonsumen.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listkonsumen.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listkonsumenData =
      getListkonsumenFirestoreData(listkonsumen, forFieldValue);
  final nestedData =
      listkonsumenData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listkonsumen.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListkonsumenFirestoreData(
  ListkonsumenStruct? listkonsumen, [
  bool forFieldValue = false,
]) {
  if (listkonsumen == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listkonsumen.toMap());

  // Add any Firestore field values
  listkonsumen.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListkonsumenListFirestoreData(
  List<ListkonsumenStruct>? listkonsumens,
) =>
    listkonsumens?.map((e) => getListkonsumenFirestoreData(e, true)).toList() ??
    [];
