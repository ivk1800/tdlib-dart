import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The message TTL was changed
@immutable
class ChatEventMessageTtlChanged extends ChatEventAction {
  const ChatEventMessageTtlChanged({
    required this.oldMessageTtl,
    required this.newMessageTtl,
  });

  /// [oldMessageTtl] Previous value of message_ttl
  final int oldMessageTtl;

  /// [newMessageTtl] New value of message_ttl
  final int newMessageTtl;

  static const String constructor = 'chatEventMessageTtlChanged';

  static ChatEventMessageTtlChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageTtlChanged(
      oldMessageTtl: json['old_message_ttl'],
      newMessageTtl: json['new_message_ttl'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_message_ttl': oldMessageTtl,
        'new_message_ttl': newMessageTtl,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
