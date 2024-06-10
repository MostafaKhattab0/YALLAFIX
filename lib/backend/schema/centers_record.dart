import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CentersRecord extends FirestoreRecord {
  CentersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "center_name" field.
  String? _centerName;
  String get centerName => _centerName ?? '';
  bool hasCenterName() => _centerName != null;

  // "center_location" field.
  LatLng? _centerLocation;
  LatLng? get centerLocation => _centerLocation;
  bool hasCenterLocation() => _centerLocation != null;

  // "center_image" field.
  String? _centerImage;
  String get centerImage => _centerImage ?? '';
  bool hasCenterImage() => _centerImage != null;

  // "center_description" field.
  String? _centerDescription;
  String get centerDescription => _centerDescription ?? '';
  bool hasCenterDescription() => _centerDescription != null;

  // "center_rating" field.
  double? _centerRating;
  double get centerRating => _centerRating ?? 0.0;
  bool hasCenterRating() => _centerRating != null;

  // "center_brands" field.
  List<String>? _centerBrands;
  List<String> get centerBrands => _centerBrands ?? const [];
  bool hasCenterBrands() => _centerBrands != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "ratingRef" field.
  List<double>? _ratingRef;
  List<double> get ratingRef => _ratingRef ?? const [];
  bool hasRatingRef() => _ratingRef != null;

  // "truckTow" field.
  bool? _truckTow;
  bool get truckTow => _truckTow ?? false;
  bool hasTruckTow() => _truckTow != null;

  // "carWash" field.
  bool? _carWash;
  bool get carWash => _carWash ?? false;
  bool hasCarWash() => _carWash != null;

  // "CarElectrician" field.
  bool? _carElectrician;
  bool get carElectrician => _carElectrician ?? false;
  bool hasCarElectrician() => _carElectrician != null;

  // "carFix" field.
  bool? _carFix;
  bool get carFix => _carFix ?? false;
  bool hasCarFix() => _carFix != null;

  // "other" field.
  bool? _other;
  bool get other => _other ?? false;
  bool hasOther() => _other != null;

  // "im_center" field.
  bool? _imCenter;
  bool get imCenter => _imCenter ?? false;
  bool hasImCenter() => _imCenter != null;

  // "center_id" field.
  String? _centerId;
  String get centerId => _centerId ?? '';
  bool hasCenterId() => _centerId != null;

  void _initializeFields() {
    _centerName = snapshotData['center_name'] as String?;
    _centerLocation = snapshotData['center_location'] as LatLng?;
    _centerImage = snapshotData['center_image'] as String?;
    _centerDescription = snapshotData['center_description'] as String?;
    _centerRating = castToType<double>(snapshotData['center_rating']);
    _centerBrands = getDataList(snapshotData['center_brands']);
    _uid = snapshotData['uid'] as DocumentReference?;
    _ratingRef = getDataList(snapshotData['ratingRef']);
    _truckTow = snapshotData['truckTow'] as bool?;
    _carWash = snapshotData['carWash'] as bool?;
    _carElectrician = snapshotData['CarElectrician'] as bool?;
    _carFix = snapshotData['carFix'] as bool?;
    _other = snapshotData['other'] as bool?;
    _imCenter = snapshotData['im_center'] as bool?;
    _centerId = snapshotData['center_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('centers');

  static Stream<CentersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CentersRecord.fromSnapshot(s));

  static Future<CentersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CentersRecord.fromSnapshot(s));

  static CentersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CentersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CentersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CentersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CentersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CentersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCentersRecordData({
  String? centerName,
  LatLng? centerLocation,
  String? centerImage,
  String? centerDescription,
  double? centerRating,
  DocumentReference? uid,
  bool? truckTow,
  bool? carWash,
  bool? carElectrician,
  bool? carFix,
  bool? other,
  bool? imCenter,
  String? centerId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'center_name': centerName,
      'center_location': centerLocation,
      'center_image': centerImage,
      'center_description': centerDescription,
      'center_rating': centerRating,
      'uid': uid,
      'truckTow': truckTow,
      'carWash': carWash,
      'CarElectrician': carElectrician,
      'carFix': carFix,
      'other': other,
      'im_center': imCenter,
      'center_id': centerId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CentersRecordDocumentEquality implements Equality<CentersRecord> {
  const CentersRecordDocumentEquality();

  @override
  bool equals(CentersRecord? e1, CentersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.centerName == e2?.centerName &&
        e1?.centerLocation == e2?.centerLocation &&
        e1?.centerImage == e2?.centerImage &&
        e1?.centerDescription == e2?.centerDescription &&
        e1?.centerRating == e2?.centerRating &&
        listEquality.equals(e1?.centerBrands, e2?.centerBrands) &&
        e1?.uid == e2?.uid &&
        listEquality.equals(e1?.ratingRef, e2?.ratingRef) &&
        e1?.truckTow == e2?.truckTow &&
        e1?.carWash == e2?.carWash &&
        e1?.carElectrician == e2?.carElectrician &&
        e1?.carFix == e2?.carFix &&
        e1?.other == e2?.other &&
        e1?.imCenter == e2?.imCenter &&
        e1?.centerId == e2?.centerId;
  }

  @override
  int hash(CentersRecord? e) => const ListEquality().hash([
        e?.centerName,
        e?.centerLocation,
        e?.centerImage,
        e?.centerDescription,
        e?.centerRating,
        e?.centerBrands,
        e?.uid,
        e?.ratingRef,
        e?.truckTow,
        e?.carWash,
        e?.carElectrician,
        e?.carFix,
        e?.other,
        e?.imCenter,
        e?.centerId
      ]);

  @override
  bool isValidKey(Object? o) => o is CentersRecord;
}
