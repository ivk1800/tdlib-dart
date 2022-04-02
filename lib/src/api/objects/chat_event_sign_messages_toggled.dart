import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The sign_messages setting of a channel was toggled
class ChatEventSignMessagesToggled extends ChatEventAction {
  ChatEventSignMessagesToggled({required this.signMessages});

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  static const String CONSTRUCTOR = 'chatEventSignMessagesToggled';

  static ChatEventSignMessagesToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventSignMessagesToggled(signMessages: json['sign_messages']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sign_messages': this.signMessages, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
