import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the chat title. Supported only for basic groups, supergroups and
/// channels. Requires can_change_info administrator right
/// Returns [Ok]
@immutable
class SetChatTitle extends TdFunction {
  const SetChatTitle({
    required this.chatId,
    required this.title,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [title] New title of the chat; 1-128 characters
  final String title;

  static const String constructor = 'setChatTitle';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'title': title,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
