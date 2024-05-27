import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RequestsRecord extends FirestoreRecord {
  RequestsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "request_id" field.
  String? _requestId;
  String get requestId => _requestId ?? '';
  bool hasRequestId() => _requestId != null;

  // "request_date" field.
  DateTime? _requestDate;
  DateTime? get requestDate => _requestDate;
  bool hasRequestDate() => _requestDate != null;

  // "request_location" field.
  LatLng? _requestLocation;
  LatLng? get requestLocation => _requestLocation;
  bool hasRequestLocation() => _requestLocation != null;

  // "request_description" field.
  String? _requestDescription;
  String get requestDescription => _requestDescription ?? '';
  bool hasRequestDescription() => _requestDescription != null;

  // "request_services" field.
  List<String>? _requestServices;
  List<String> get requestServices => _requestServices ?? const [];
  bool hasRequestServices() => _requestServices != null;

  // "centerRef" field.
  DocumentReference? _centerRef;
  DocumentReference? get centerRef => _centerRef;
  bool hasCenterRef() => _centerRef != null;

  // "customerRef" field.
  DocumentReference? _customerRef;
  DocumentReference? get customerRef => _customerRef;
  bool hasCustomerRef() => _customerRef != null;

  // "is_accepted" field.
  bool? _isAccepted;
  bool get isAccepted => _isAccepted ?? false;
  bool hasIsAccepted() => _isAccepted != null;

  // "is_rejected" field.
  bool? _isRejected;
  bool get isRejected => _isRejected ?? false;
  bool hasIsRejected() => _isRejected != null;

  void _initializeFields() {
    _requestId = snapshotData['request_id'] as String?;
    _requestDate = snapshotData['request_date'] as DateTime?;
    _requestLocation = snapshotData['request_location'] as LatLng?;
    _requestDescription = snapshotData['request_description'] as String?;
    _requestServices = getDataList(snapshotData['request_services']);
    _centerRef = snapshotData['centerRef'] as DocumentReference?;
    _customerRef = snapshotData['customerRef'] as DocumentReference?;
    _isAccepted = snapshotData['is_accepted'] as bool?;
    _isRejected = snapshotData['is_rejected'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestsRecord.fromSnapshot(s));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestsRecord.fromSnapshot(s));

  static RequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestsRecordData({
  String? requestId,
  DateTime? requestDate,
  LatLng? requestLocation,
  String? requestDescription,
  DocumentReference? centerRef,
  DocumentReference? customerRef,
  bool? isAccepted,
  bool? isRejected,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'request_id': requestId,
      'request_date': requestDate,
      'request_location': requestLocation,
      'request_description': requestDescription,
      'centerRef': centerRef,
      'customerRef': customerRef,
      'is_accepted': isAccepted,
      'is_rejected': isRejected,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.requestId == e2?.requestId &&
        e1?.requestDate == e2?.requestDate &&
        e1?.requestLocation == e2?.requestLocation &&
        e1?.requestDescription == e2?.requestDescription &&
        listEquality.equals(e1?.requestServices, e2?.requestServices) &&
        e1?.centerRef == e2?.centerRef &&
        e1?.customerRef == e2?.customerRef &&
        e1?.isAccepted == e2?.isAccepted &&
        e1?.isRejected == e2?.isRejected;
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality().hash([
        e?.requestId,
        e?.requestDate,
        e?.requestLocation,
        e?.requestDescription,
        e?.requestServices,
        e?.centerRef,
        e?.customerRef,
        e?.isAccepted,
        e?.isRejected
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
