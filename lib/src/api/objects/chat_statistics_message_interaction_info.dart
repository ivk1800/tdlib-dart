import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains statistics about interactions with a message
class ChatStatisticsMessageInteractionInfo extends TdObject {
  ChatStatisticsMessageInteractionInfo(
      {required this.messageId,
      required this.viewCount,
      required this.forwardCount});

  /// [messageId] Message identifier
  final int messageId;

  /// [viewCount] Number of times the message was viewed
  final int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  final int forwardCount;

  static const String CONSTRUCTOR = 'chatStatisticsMessageInteractionInfo';

  static ChatStatisticsMessageInteractionInfo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsMessageInteractionInfo(
        messageId: json['message_id'],
        viewCount: json['view_count'],
        forwardCount: json['forward_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message_id': this.messageId,
        'view_count': this.viewCount,
        'forward_count': this.forwardCount,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
