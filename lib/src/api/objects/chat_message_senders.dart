import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of message senders, which can be used to send messages
/// in a chat
@immutable
class ChatMessageSenders extends TdObject {
  const ChatMessageSenders({
    required this.senders,
  });

  /// [senders] List of available message senders
  final List<ChatMessageSender> senders;

  static const String constructor = 'chatMessageSenders';

  static ChatMessageSenders? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatMessageSenders(
      senders: List<ChatMessageSender>.from(
          ((json['senders'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ChatMessageSender.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'senders': senders.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
