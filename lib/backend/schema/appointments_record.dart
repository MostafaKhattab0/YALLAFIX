import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AppointmentsRecord extends FirestoreRecord {
  AppointmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "appointment_id" field.
  String? _appointmentId;
  String get appointmentId => _appointmentId ?? '';
  bool hasAppointmentId() => _appointmentId != null;

  // "appointment_date" field.
  DateTime? _appointmentDate;
  DateTime? get appointmentDate => _appointmentDate;
  bool hasAppointmentDate() => _appointmentDate != null;

  // "appointment_location" field.
  LatLng? _appointmentLocation;
  LatLng? get appointmentLocation => _appointmentLocation;
  bool hasAppointmentLocation() => _appointmentLocation != null;

  // "appointment_description" field.
  String? _appointmentDescription;
  String get appointmentDescription => _appointmentDescription ?? '';
  bool hasAppointmentDescription() => _appointmentDescription != null;

  // "appointment_services" field.
  List<String>? _appointmentServices;
  List<String> get appointmentServices => _appointmentServices ?? const [];
  bool hasAppointmentServices() => _appointmentServices != null;

  // "appointment_status" field.
  bool? _appointmentStatus;
  bool get appointmentStatus => _appointmentStatus ?? false;
  bool hasAppointmentStatus() => _appointmentStatus != null;

  // "customerRef" field.
  DocumentReference? _customerRef;
  DocumentReference? get customerRef => _customerRef;
  bool hasCustomerRef() => _customerRef != null;

  void _initializeFields() {
    _appointmentId = snapshotData['appointment_id'] as String?;
    _appointmentDate = snapshotData['appointment_date'] as DateTime?;
    _appointmentLocation = snapshotData['appointment_location'] as LatLng?;
    _appointmentDescription =
        snapshotData['appointment_description'] as String?;
    _appointmentServices = getDataList(snapshotData['appointment_services']);
    _appointmentStatus = snapshotData['appointment_status'] as bool?;
    _customerRef = snapshotData['customerRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentsRecord.fromSnapshot(s));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentsRecord.fromSnapshot(s));

  static AppointmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentsRecordData({
  String? appointmentId,
  DateTime? appointmentDate,
  LatLng? appointmentLocation,
  String? appointmentDescription,
  bool? appointmentStatus,
  DocumentReference? customerRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appointment_id': appointmentId,
      'appointment_date': appointmentDate,
      'appointment_location': appointmentLocation,
      'appointment_description': appointmentDescription,
      'appointment_status': appointmentStatus,
      'customerRef': customerRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentsRecordDocumentEquality
    implements Equality<AppointmentsRecord> {
  const AppointmentsRecordDocumentEquality();

  @override
  bool equals(AppointmentsRecord? e1, AppointmentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.appointmentId == e2?.appointmentId &&
        e1?.appointmentDate == e2?.appointmentDate &&
        e1?.appointmentLocation == e2?.appointmentLocation &&
        e1?.appointmentDescription == e2?.appointmentDescription &&
        listEquality.equals(e1?.appointmentServices, e2?.appointmentServices) &&
        e1?.appointmentStatus == e2?.appointmentStatus &&
        e1?.customerRef == e2?.customerRef;
  }

  @override
  int hash(AppointmentsRecord? e) => const ListEquality().hash([
        e?.appointmentId,
        e?.appointmentDate,
        e?.appointmentLocation,
        e?.appointmentDescription,
        e?.appointmentServices,
        e?.appointmentStatus,
        e?.customerRef
      ]);

  @override
  bool isValidKey(Object? o) => o is AppointmentsRecord;
}
