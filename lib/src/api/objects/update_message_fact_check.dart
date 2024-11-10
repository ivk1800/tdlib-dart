import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A fact-check added to a message was changed
@immutable
class UpdateMessageFactCheck extends Update {
  const UpdateMessageFactCheck({
    required this.chatId,
    required this.messageId,
    required this.factCheck,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Message identifier
  final int messageId;

  /// [factCheck] The new fact-check
  final FactCheck factCheck;

  static const String constructor = 'updateMessageFactCheck';

  static UpdateMessageFactCheck? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageFactCheck(
      chatId: json['chat_id'] as int,
      messageId: json['message_id'] as int,
      factCheck:
          FactCheck.fromJson(json['fact_check'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'message_id': messageId,
        'fact_check': factCheck.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
