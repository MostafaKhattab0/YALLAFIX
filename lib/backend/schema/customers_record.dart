import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomersRecord extends FirestoreRecord {
  CustomersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customer_age" field.
  int? _customerAge;
  int get customerAge => _customerAge ?? 0;
  bool hasCustomerAge() => _customerAge != null;

  // "customer_phone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "customer_image" field.
  String? _customerImage;
  String get customerImage => _customerImage ?? '';
  bool hasCustomerImage() => _customerImage != null;

  // "customer_id" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  bool hasCustomerId() => _customerId != null;

  // "customer_location" field.
  LatLng? _customerLocation;
  LatLng? get customerLocation => _customerLocation;
  bool hasCustomerLocation() => _customerLocation != null;

  // "customer_car" field.
  String? _customerCar;
  String get customerCar => _customerCar ?? '';
  bool hasCustomerCar() => _customerCar != null;

  // "customer_carphoto" field.
  String? _customerCarphoto;
  String get customerCarphoto => _customerCarphoto ?? '';
  bool hasCustomerCarphoto() => _customerCarphoto != null;

  void _initializeFields() {
    _customerName = snapshotData['customer_name'] as String?;
    _customerAge = castToType<int>(snapshotData['customer_age']);
    _customerPhone = snapshotData['customer_phone'] as String?;
    _customerImage = snapshotData['customer_image'] as String?;
    _customerId = snapshotData['customer_id'] as String?;
    _customerLocation = snapshotData['customer_location'] as LatLng?;
    _customerCar = snapshotData['customer_car'] as String?;
    _customerCarphoto = snapshotData['customer_carphoto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customers');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomersRecord.fromSnapshot(s));

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomersRecord.fromSnapshot(s));

  static CustomersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomersRecordData({
  String? customerName,
  int? customerAge,
  String? customerPhone,
  String? customerImage,
  String? customerId,
  LatLng? customerLocation,
  String? customerCar,
  String? customerCarphoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customer_name': customerName,
      'customer_age': customerAge,
      'customer_phone': customerPhone,
      'customer_image': customerImage,
      'customer_id': customerId,
      'customer_location': customerLocation,
      'customer_car': customerCar,
      'customer_carphoto': customerCarphoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomersRecordDocumentEquality implements Equality<CustomersRecord> {
  const CustomersRecordDocumentEquality();

  @override
  bool equals(CustomersRecord? e1, CustomersRecord? e2) {
    return e1?.customerName == e2?.customerName &&
        e1?.customerAge == e2?.customerAge &&
        e1?.customerPhone == e2?.customerPhone &&
        e1?.customerImage == e2?.customerImage &&
        e1?.customerId == e2?.customerId &&
        e1?.customerLocation == e2?.customerLocation &&
        e1?.customerCar == e2?.customerCar &&
        e1?.customerCarphoto == e2?.customerCarphoto;
  }

  @override
  int hash(CustomersRecord? e) => const ListEquality().hash([
        e?.customerName,
        e?.customerAge,
        e?.customerPhone,
        e?.customerImage,
        e?.customerId,
        e?.customerLocation,
        e?.customerCar,
        e?.customerCarphoto
      ]);

  @override
  bool isValidKey(Object? o) => o is CustomersRecord;
}
