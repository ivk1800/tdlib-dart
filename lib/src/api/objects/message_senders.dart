import '../tdapi.dart';

/// Represents a list of message senders
class MessageSenders extends TdObject {
  MessageSenders({required this.totalCount, required this.senders});

  /// [totalCount] Approximate total count of messages senders found
  final int totalCount;

  /// [senders] List of message senders
  final List<MessageSender> senders;

  static const String CONSTRUCTOR = 'messageSenders';

  static MessageSenders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenders(
        totalCount: json['total_count'],
        senders: List<MessageSender>.from((json['senders'] ?? [])
            .map((item) => MessageSender.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'senders': senders.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
