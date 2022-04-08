import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains statistics about interactions with a message
@immutable
class ChatStatisticsMessageInteractionInfo extends TdObject {
  const ChatStatisticsMessageInteractionInfo({
    required this.messageId,
    required this.viewCount,
    required this.forwardCount,
  });

  /// [messageId] Message identifier
  final int messageId;

  /// [viewCount] Number of times the message was viewed
  final int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  final int forwardCount;

  static const String constructor = 'chatStatisticsMessageInteractionInfo';

  static ChatStatisticsMessageInteractionInfo? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatStatisticsMessageInteractionInfo(
      messageId: json['message_id'],
      viewCount: json['view_count'],
      forwardCount: json['forward_count'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'message_id': messageId,
        'view_count': viewCount,
        'forward_count': forwardCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
