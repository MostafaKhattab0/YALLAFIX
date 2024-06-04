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

  // "service_id" field.
  int? _serviceId;
  int get serviceId => _serviceId ?? 0;
  bool hasServiceId() => _serviceId != null;

  // "service_name" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  bool hasServiceName() => _serviceName != null;

  // "Is_onSite" field.
  bool? _isOnSite;
  bool get isOnSite => _isOnSite ?? false;
  bool hasIsOnSite() => _isOnSite != null;

  void _initializeFields() {
    _serviceId = castToType<int>(snapshotData['service_id']);
    _serviceName = snapshotData['service_name'] as String?;
    _isOnSite = snapshotData['Is_onSite'] as bool?;
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
  int? serviceId,
  String? serviceName,
  bool? isOnSite,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'service_id': serviceId,
      'service_name': serviceName,
      'Is_onSite': isOnSite,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.serviceId == e2?.serviceId &&
        e1?.serviceName == e2?.serviceName &&
        e1?.isOnSite == e2?.isOnSite;
  }

  @override
  int hash(ServicesRecord? e) =>
      const ListEquality().hash([e?.serviceId, e?.serviceName, e?.isOnSite]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
