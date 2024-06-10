import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "carFix_id" field.
  int? _carFixId;
  int get carFixId => _carFixId ?? 0;
  bool hasCarFixId() => _carFixId != null;

  // "carFix_name" field.
  String? _carFixName;
  String get carFixName => _carFixName ?? '';
  bool hasCarFixName() => _carFixName != null;

  // "carWash_id" field.
  int? _carWashId;
  int get carWashId => _carWashId ?? 0;
  bool hasCarWashId() => _carWashId != null;

  // "carWash_name" field.
  String? _carWashName;
  String get carWashName => _carWashName ?? '';
  bool hasCarWashName() => _carWashName != null;

  // "carElectricity_id" field.
  int? _carElectricityId;
  int get carElectricityId => _carElectricityId ?? 0;
  bool hasCarElectricityId() => _carElectricityId != null;

  // "carElectricity_name" field.
  String? _carElectricityName;
  String get carElectricityName => _carElectricityName ?? '';
  bool hasCarElectricityName() => _carElectricityName != null;

  // "truckTow_id" field.
  int? _truckTowId;
  int get truckTowId => _truckTowId ?? 0;
  bool hasTruckTowId() => _truckTowId != null;

  // "truckTow_name" field.
  String? _truckTowName;
  String get truckTowName => _truckTowName ?? '';
  bool hasTruckTowName() => _truckTowName != null;

  void _initializeFields() {
    _carFixId = castToType<int>(snapshotData['carFix_id']);
    _carFixName = snapshotData['carFix_name'] as String?;
    _carWashId = castToType<int>(snapshotData['carWash_id']);
    _carWashName = snapshotData['carWash_name'] as String?;
    _carElectricityId = castToType<int>(snapshotData['carElectricity_id']);
    _carElectricityName = snapshotData['carElectricity_name'] as String?;
    _truckTowId = castToType<int>(snapshotData['truckTow_id']);
    _truckTowName = snapshotData['truckTow_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  int? carFixId,
  String? carFixName,
  int? carWashId,
  String? carWashName,
  int? carElectricityId,
  String? carElectricityName,
  int? truckTowId,
  String? truckTowName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'carFix_id': carFixId,
      'carFix_name': carFixName,
      'carWash_id': carWashId,
      'carWash_name': carWashName,
      'carElectricity_id': carElectricityId,
      'carElectricity_name': carElectricityName,
      'truckTow_id': truckTowId,
      'truckTow_name': truckTowName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.carFixId == e2?.carFixId &&
        e1?.carFixName == e2?.carFixName &&
        e1?.carWashId == e2?.carWashId &&
        e1?.carWashName == e2?.carWashName &&
        e1?.carElectricityId == e2?.carElectricityId &&
        e1?.carElectricityName == e2?.carElectricityName &&
        e1?.truckTowId == e2?.truckTowId &&
        e1?.truckTowName == e2?.truckTowName;
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([
        e?.carFixId,
        e?.carFixName,
        e?.carWashId,
        e?.carWashName,
        e?.carElectricityId,
        e?.carElectricityName,
        e?.truckTowId,
        e?.truckTowName
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
