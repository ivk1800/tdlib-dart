import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns a confirmation text to be shown to the user before starting
/// message import
/// Returns [Text]
@immutable
class GetMessageImportConfirmationText extends TdFunction {
  const GetMessageImportConfirmationText({
    required this.chatId,
  });

  /// [chatId] Identifier of a chat to which the messages will be imported. It
  /// must be an identifier of a private chat with a mutual contact or an
  /// identifier of a supergroup chat with can_change_info administrator right
  final int chatId;

  static const String constructor = 'getMessageImportConfirmationText';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
