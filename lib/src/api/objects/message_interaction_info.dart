import '../tdapi.dart';

/// Contains information about interactions with a message
class MessageInteractionInfo extends TdObject {
  MessageInteractionInfo(
      {required this.viewCount, required this.forwardCount, this.replyInfo});

  /// [viewCount] Number of times the message was viewed
  final int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  final int forwardCount;

  /// [replyInfo] Information about direct or indirect replies to the message;
  /// may be null. Currently, available only in channels with a discussion
  /// supergroup and discussion supergroups for messages, which are not replies
  /// itself
  final MessageReplyInfo? replyInfo;

  static const String CONSTRUCTOR = 'messageInteractionInfo';

  static MessageInteractionInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageInteractionInfo(
        viewCount: json['view_count'],
        forwardCount: json['forward_count'],
        replyInfo: MessageReplyInfo.fromJson(json['reply_info']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'view_count': this.viewCount,
        'forward_count': this.forwardCount,
        'reply_info': this.replyInfo?.toJson(),
        '@type': CONSTRUCTOR
      };
}
