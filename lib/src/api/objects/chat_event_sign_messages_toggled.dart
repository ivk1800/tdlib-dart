import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sign_messages setting of a channel was toggled
@immutable
class ChatEventSignMessagesToggled extends ChatEventAction {
  const ChatEventSignMessagesToggled({
    required this.signMessages,
  });

  /// [signMessages] New value of sign_messages
  final bool signMessages;

  static const String constructor = 'chatEventSignMessagesToggled';

  static ChatEventSignMessagesToggled? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventSignMessagesToggled(
      signMessages: json['sign_messages'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sign_messages': signMessages,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
