import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the personal chat of the current user
/// Returns [Ok]
@immutable
class SetPersonalChat extends TdFunction {
  const SetPersonalChat({
    required this.chatId,
  });

  /// [chatId] Identifier of the new personal chat; pass 0 to remove the chat.
  /// Use getSuitablePersonalChats to get suitable chats
  final int chatId;

  static const String constructor = 'setPersonalChat';

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
