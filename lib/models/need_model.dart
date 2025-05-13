import 'package:cloud_firestore/cloud_firestore.dart';

enum NeedType {
  medication,
  appointment,
  grocery,
  other
}

enum NeedStatus {
  pending,
  inProgress,
  completed,
  cancelled
}

class DailyNeed {
  final String id;
  final String seniorId;
  final String? assignedToId;
  final String title;
  final String description;
  final NeedType type;
  final NeedStatus status;
  final DateTime dueDate;
  final DateTime createdAt;
  final bool isRecurring;
  final String? recurrenceRule;
  
  DailyNeed({
    required this.id,
    required this.seniorId,
    this.assignedToId,
    required this.title,
    required this.description,
    required this.type,
    required this.status,
    required this.dueDate,
    required this.createdAt,
    this.isRecurring = false,
    this.recurrenceRule,
  });
  
  factory DailyNeed.fromFirestore(DocumentSnapshot doc) {
  final data = doc.data() as Map<String, dynamic>;
  return DailyNeed(
    id: doc.id,
    title: data['title'] ?? '',
    description: data['description'] ?? '',
    dueDate: (data['dueDate'] as Timestamp).toDate(),
    type: _parseNeedType(data['type'] ?? 'other'),
    status: _parseNeedStatus(data['status'] ?? 'pending'),
    seniorId: data['seniorId'] ?? '',
    assignedToId: data['assignedToId'],
    isRecurring: data['isRecurring'] ?? false,
    recurrenceRule: data['recurrenceRule'],
    createdAt: (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
  );
}

static NeedType _parseNeedType(String type) {
  switch (type) {
    case 'medication':
      return NeedType.medication;
    case 'appointment':
      return NeedType.appointment;
    case 'grocery':
      return NeedType.grocery;
    case 'other':
    default:
      return NeedType.other;
  }
}

static NeedStatus _parseNeedStatus(String status) {
  switch (status) {
    case 'pending':
      return NeedStatus.pending;
    case 'inProgress':
      return NeedStatus.inProgress;
    case 'completed':
      return NeedStatus.completed;
    case 'cancelled':
      return NeedStatus.cancelled;
    default:
      return NeedStatus.pending;
  }
}
  
  Map<String, dynamic> toMap() {
    return {
      'seniorId': seniorId,
      'assignedToId': assignedToId,
      'title': title,
      'description': description,
      'type': type.toString().split('.').last,
      'status': status.toString().split('.').last,
      'dueDate': Timestamp.fromDate(dueDate),
      'createdAt': Timestamp.fromDate(createdAt),
      'isRecurring': isRecurring,
      'recurrenceRule': recurrenceRule,
    };
  }
  
  DailyNeed copyWith({
    String? assignedToId,
    String? title,
    String? description,
    NeedType? type,
    NeedStatus? status,
    DateTime? dueDate,
    bool? isRecurring,
    String? recurrenceRule,
  }) {
    return DailyNeed(
      id: id,
      seniorId: seniorId,
      assignedToId: assignedToId ?? this.assignedToId,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      status: status ?? this.status,
      dueDate: dueDate ?? this.dueDate,
      createdAt: createdAt,
      isRecurring: isRecurring ?? this.isRecurring,
      recurrenceRule: recurrenceRule ?? this.recurrenceRule,
    );
  }

  
}