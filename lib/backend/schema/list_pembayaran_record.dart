import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListPembayaranRecord extends FirestoreRecord {
  ListPembayaranRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "p_nama" field.
  String? _pNama;
  String get pNama => _pNama ?? '';
  bool hasPNama() => _pNama != null;

  // "p_alamat" field.
  String? _pAlamat;
  String get pAlamat => _pAlamat ?? '';
  bool hasPAlamat() => _pAlamat != null;

  // "p_area" field.
  String? _pArea;
  String get pArea => _pArea ?? '';
  bool hasPArea() => _pArea != null;

  // "p_pembayaranke" field.
  int? _pPembayaranke;
  int get pPembayaranke => _pPembayaranke ?? 0;
  bool hasPPembayaranke() => _pPembayaranke != null;

  // "p_pembayarannomi" field.
  double? _pPembayarannomi;
  double get pPembayarannomi => _pPembayarannomi ?? 0.0;
  bool hasPPembayarannomi() => _pPembayarannomi != null;

  // "p_createby" field.
  String? _pCreateby;
  String get pCreateby => _pCreateby ?? '';
  bool hasPCreateby() => _pCreateby != null;

  // "p_createdate" field.
  DateTime? _pCreatedate;
  DateTime? get pCreatedate => _pCreatedate;
  bool hasPCreatedate() => _pCreatedate != null;

  void _initializeFields() {
    _pNama = snapshotData['p_nama'] as String?;
    _pAlamat = snapshotData['p_alamat'] as String?;
    _pArea = snapshotData['p_area'] as String?;
    _pPembayaranke = castToType<int>(snapshotData['p_pembayaranke']);
    _pPembayarannomi = castToType<double>(snapshotData['p_pembayarannomi']);
    _pCreateby = snapshotData['p_createby'] as String?;
    _pCreatedate = snapshotData['p_createdate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list_pembayaran');

  static Stream<ListPembayaranRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListPembayaranRecord.fromSnapshot(s));

  static Future<ListPembayaranRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListPembayaranRecord.fromSnapshot(s));

  static ListPembayaranRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListPembayaranRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListPembayaranRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListPembayaranRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListPembayaranRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListPembayaranRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListPembayaranRecordData({
  String? pNama,
  String? pAlamat,
  String? pArea,
  int? pPembayaranke,
  double? pPembayarannomi,
  String? pCreateby,
  DateTime? pCreatedate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'p_nama': pNama,
      'p_alamat': pAlamat,
      'p_area': pArea,
      'p_pembayaranke': pPembayaranke,
      'p_pembayarannomi': pPembayarannomi,
      'p_createby': pCreateby,
      'p_createdate': pCreatedate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListPembayaranRecordDocumentEquality
    implements Equality<ListPembayaranRecord> {
  const ListPembayaranRecordDocumentEquality();

  @override
  bool equals(ListPembayaranRecord? e1, ListPembayaranRecord? e2) {
    return e1?.pNama == e2?.pNama &&
        e1?.pAlamat == e2?.pAlamat &&
        e1?.pArea == e2?.pArea &&
        e1?.pPembayaranke == e2?.pPembayaranke &&
        e1?.pPembayarannomi == e2?.pPembayarannomi &&
        e1?.pCreateby == e2?.pCreateby &&
        e1?.pCreatedate == e2?.pCreatedate;
  }

  @override
  int hash(ListPembayaranRecord? e) => const ListEquality().hash([
        e?.pNama,
        e?.pAlamat,
        e?.pArea,
        e?.pPembayaranke,
        e?.pPembayarannomi,
        e?.pCreateby,
        e?.pCreatedate
      ]);

  @override
  bool isValidKey(Object? o) => o is ListPembayaranRecord;
}
