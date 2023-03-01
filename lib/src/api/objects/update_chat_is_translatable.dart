import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Translation of chat messages was enabled or disabled
@immutable
class UpdateChatIsTranslatable extends Update {
  const UpdateChatIsTranslatable({
    required this.chatId,
    required this.isTranslatable,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isTranslatable] New value of is_translatable
  final bool isTranslatable;

  static const String constructor = 'updateChatIsTranslatable';

  static UpdateChatIsTranslatable? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatIsTranslatable(
      chatId: json['chat_id'],
      isTranslatable: json['is_translatable'],
    );
  }

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
