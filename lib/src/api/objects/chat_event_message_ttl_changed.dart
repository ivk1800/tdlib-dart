import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The message TTL was changed
class ChatEventMessageTtlChanged extends ChatEventAction {
  ChatEventMessageTtlChanged(
      {required this.oldMessageTtl, required this.newMessageTtl});

  /// [oldMessageTtl] Previous value of message_ttl
  final int oldMessageTtl;

  /// [newMessageTtl] New value of message_ttl
  final int newMessageTtl;

  static const String CONSTRUCTOR = 'chatEventMessageTtlChanged';

  static ChatEventMessageTtlChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventMessageTtlChanged(
        oldMessageTtl: json['old_message_ttl'],
        newMessageTtl: json['new_message_ttl']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'old_message_ttl': this.oldMessageTtl,
        'new_message_ttl': this.newMessageTtl,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
