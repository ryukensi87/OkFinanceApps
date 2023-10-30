import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListKonsumenRecord extends FirestoreRecord {
  ListKonsumenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "k_nama" field.
  String? _kNama;
  String get kNama => _kNama ?? '';
  bool hasKNama() => _kNama != null;

  // "k_alamat" field.
  String? _kAlamat;
  String get kAlamat => _kAlamat ?? '';
  bool hasKAlamat() => _kAlamat != null;

  // "k_area" field.
  String? _kArea;
  String get kArea => _kArea ?? '';
  bool hasKArea() => _kArea != null;

  // "k_fotoid" field.
  String? _kFotoid;
  String get kFotoid => _kFotoid ?? '';
  bool hasKFotoid() => _kFotoid != null;

  // "k_nomortlp" field.
  String? _kNomortlp;
  String get kNomortlp => _kNomortlp ?? '';
  bool hasKNomortlp() => _kNomortlp != null;

  // "k_nilaikredit" field.
  double? _kNilaikredit;
  double get kNilaikredit => _kNilaikredit ?? 0.0;
  bool hasKNilaikredit() => _kNilaikredit != null;

  // "k_cicilanke" field.
  int? _kCicilanke;
  int get kCicilanke => _kCicilanke ?? 0;
  bool hasKCicilanke() => _kCicilanke != null;

  // "k_createby" field.
  String? _kCreateby;
  String get kCreateby => _kCreateby ?? '';
  bool hasKCreateby() => _kCreateby != null;

  // "k_createdate" field.
  DateTime? _kCreatedate;
  DateTime? get kCreatedate => _kCreatedate;
  bool hasKCreatedate() => _kCreatedate != null;

  void _initializeFields() {
    _kNama = snapshotData['k_nama'] as String?;
    _kAlamat = snapshotData['k_alamat'] as String?;
    _kArea = snapshotData['k_area'] as String?;
    _kFotoid = snapshotData['k_fotoid'] as String?;
    _kNomortlp = snapshotData['k_nomortlp'] as String?;
    _kNilaikredit = castToType<double>(snapshotData['k_nilaikredit']);
    _kCicilanke = castToType<int>(snapshotData['k_cicilanke']);
    _kCreateby = snapshotData['k_createby'] as String?;
    _kCreatedate = snapshotData['k_createdate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list_konsumen');

  static Stream<ListKonsumenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListKonsumenRecord.fromSnapshot(s));

  static Future<ListKonsumenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListKonsumenRecord.fromSnapshot(s));

  static ListKonsumenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListKonsumenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListKonsumenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListKonsumenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListKonsumenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListKonsumenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListKonsumenRecordData({
  String? kNama,
  String? kAlamat,
  String? kArea,
  String? kFotoid,
  String? kNomortlp,
  double? kNilaikredit,
  int? kCicilanke,
  String? kCreateby,
  DateTime? kCreatedate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'k_nama': kNama,
      'k_alamat': kAlamat,
      'k_area': kArea,
      'k_fotoid': kFotoid,
      'k_nomortlp': kNomortlp,
      'k_nilaikredit': kNilaikredit,
      'k_cicilanke': kCicilanke,
      'k_createby': kCreateby,
      'k_createdate': kCreatedate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListKonsumenRecordDocumentEquality
    implements Equality<ListKonsumenRecord> {
  const ListKonsumenRecordDocumentEquality();

  @override
  bool equals(ListKonsumenRecord? e1, ListKonsumenRecord? e2) {
    return e1?.kNama == e2?.kNama &&
        e1?.kAlamat == e2?.kAlamat &&
        e1?.kArea == e2?.kArea &&
        e1?.kFotoid == e2?.kFotoid &&
        e1?.kNomortlp == e2?.kNomortlp &&
        e1?.kNilaikredit == e2?.kNilaikredit &&
        e1?.kCicilanke == e2?.kCicilanke &&
        e1?.kCreateby == e2?.kCreateby &&
        e1?.kCreatedate == e2?.kCreatedate;
  }

  @override
  int hash(ListKonsumenRecord? e) => const ListEquality().hash([
        e?.kNama,
        e?.kAlamat,
        e?.kArea,
        e?.kFotoid,
        e?.kNomortlp,
        e?.kNilaikredit,
        e?.kCicilanke,
        e?.kCreateby,
        e?.kCreatedate
      ]);

  @override
  bool isValidKey(Object? o) => o is ListKonsumenRecord;
}
