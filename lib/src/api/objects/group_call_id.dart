import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains the group call identifier
class GroupCallId extends TdObject {
  GroupCallId({required this.id});

  /// [id] Group call identifier
  final int id;

  static const String CONSTRUCTOR = 'groupCallId';

  static GroupCallId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallId(id: json['id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'id': this.id, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
