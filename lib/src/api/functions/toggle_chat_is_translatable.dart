import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the tranlatable state of a chat; for Telegram Premium users only
/// Returns [Ok]
@immutable
class ToggleChatIsTranslatable extends TdFunction {
  const ToggleChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isTranslatable] New value of is_translatable
  final bool isTranslatable;

  static const String constructor = 'toggleChatIsTranslatable';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_translatable': isTranslatable,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
