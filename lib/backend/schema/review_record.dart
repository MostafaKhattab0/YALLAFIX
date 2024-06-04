import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewRecord extends FirestoreRecord {
  ReviewRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "review" field.
  String? _review;
  String get review => _review ?? '';
  bool hasReview() => _review != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "customerRef" field.
  DocumentReference? _customerRef;
  DocumentReference? get customerRef => _customerRef;
  bool hasCustomerRef() => _customerRef != null;

  // "centerRef" field.
  DocumentReference? _centerRef;
  DocumentReference? get centerRef => _centerRef;
  bool hasCenterRef() => _centerRef != null;

  void _initializeFields() {
    _review = snapshotData['review'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _date = snapshotData['date'] as DateTime?;
    _customerRef = snapshotData['customerRef'] as DocumentReference?;
    _centerRef = snapshotData['centerRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('review');

  static Stream<ReviewRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewRecord.fromSnapshot(s));

  static Future<ReviewRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewRecord.fromSnapshot(s));

  static ReviewRecord fromSnapshot(DocumentSnapshot snapshot) => ReviewRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewRecordData({
  String? review,
  double? rating,
  DateTime? date,
  DocumentReference? customerRef,
  DocumentReference? centerRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'review': review,
      'rating': rating,
      'date': date,
      'customerRef': customerRef,
      'centerRef': centerRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewRecordDocumentEquality implements Equality<ReviewRecord> {
  const ReviewRecordDocumentEquality();

  @override
  bool equals(ReviewRecord? e1, ReviewRecord? e2) {
    return e1?.review == e2?.review &&
        e1?.rating == e2?.rating &&
        e1?.date == e2?.date &&
        e1?.customerRef == e2?.customerRef &&
        e1?.centerRef == e2?.centerRef;
  }

  @override
  int hash(ReviewRecord? e) => const ListEquality()
      .hash([e?.review, e?.rating, e?.date, e?.customerRef, e?.centerRef]);

  @override
  bool isValidKey(Object? o) => o is ReviewRecord;
}
