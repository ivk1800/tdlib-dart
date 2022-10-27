import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a reaction to a message
@immutable
class MessageReaction extends TdObject {
  const MessageReaction({
    required this.type,
    required this.totalCount,
    required this.isChosen,
    required this.recentSenderIds,
  });

  /// [type] Type of the reaction
  final ReactionType type;

  /// [totalCount] Number of times the reaction was added
  final int totalCount;

  /// [isChosen] True, if the reaction is chosen by the current user
  final bool isChosen;

  /// [recentSenderIds] Identifiers of at most 3 recent message senders, added
  /// the reaction; available in private, basic group and supergroup chats
  final List<MessageSender> recentSenderIds;

  static const String constructor = 'messageReaction';

  static MessageReaction? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageReaction(
      type: ReactionType.fromJson(json['type'])!,
      totalCount: json['total_count'],
      isChosen: json['is_chosen'],
      recentSenderIds: List<MessageSender>.from(
          (json['recent_sender_ids'] ?? [])
              .map((item) => MessageSender.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        'total_count': totalCount,
        'is_chosen': isChosen,
        'recent_sender_ids':
            recentSenderIds.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
