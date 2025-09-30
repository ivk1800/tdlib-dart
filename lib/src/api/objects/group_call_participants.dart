import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains identifiers of group call participants
@immutable
class GroupCallParticipants extends TdObject {
  const GroupCallParticipants({
    required this.totalCount,
    required this.participantIds,
  });

  /// [totalCount] Total number of group call participants
  final int totalCount;

  /// [participantIds] Identifiers of the participants
  final List<MessageSender> participantIds;

  static const String constructor = 'groupCallParticipants';

  static GroupCallParticipants? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallParticipants(
      totalCount: json['total_count'] as int,
      participantIds: List<MessageSender>.from(
        ((json['participant_ids'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => MessageSender.fromJson(item))
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'total_count': totalCount,
    'participant_ids': participantIds.map((item) => item.toJson()).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
