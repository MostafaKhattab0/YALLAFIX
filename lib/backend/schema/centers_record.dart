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

  // "support_emergency" field.
  bool? _supportEmergency;
  bool get supportEmergency => _supportEmergency ?? false;
  bool hasSupportEmergency() => _supportEmergency != null;

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

  // "center_id" field.
  String? _centerId;
  String get centerId => _centerId ?? '';
  bool hasCenterId() => _centerId != null;

  // "center_brands" field.
  List<String>? _centerBrands;
  List<String> get centerBrands => _centerBrands ?? const [];
  bool hasCenterBrands() => _centerBrands != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _centerName = snapshotData['center_name'] as String?;
    _centerLocation = snapshotData['center_location'] as LatLng?;
    _supportEmergency = snapshotData['support_emergency'] as bool?;
    _centerImage = snapshotData['center_image'] as String?;
    _centerDescription = snapshotData['center_description'] as String?;
    _centerRating = castToType<double>(snapshotData['center_rating']);
    _centerId = snapshotData['center_id'] as String?;
    _centerBrands = getDataList(snapshotData['center_brands']);
    _uid = snapshotData['uid'] as DocumentReference?;
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
  bool? supportEmergency,
  String? centerImage,
  String? centerDescription,
  double? centerRating,
  String? centerId,
  DocumentReference? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'center_name': centerName,
      'center_location': centerLocation,
      'support_emergency': supportEmergency,
      'center_image': centerImage,
      'center_description': centerDescription,
      'center_rating': centerRating,
      'center_id': centerId,
      'uid': uid,
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
        e1?.supportEmergency == e2?.supportEmergency &&
        e1?.centerImage == e2?.centerImage &&
        e1?.centerDescription == e2?.centerDescription &&
        e1?.centerRating == e2?.centerRating &&
        e1?.centerId == e2?.centerId &&
        listEquality.equals(e1?.centerBrands, e2?.centerBrands) &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(CentersRecord? e) => const ListEquality().hash([
        e?.centerName,
        e?.centerLocation,
        e?.supportEmergency,
        e?.centerImage,
        e?.centerDescription,
        e?.centerRating,
        e?.centerId,
        e?.centerBrands,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is CentersRecord;
}
