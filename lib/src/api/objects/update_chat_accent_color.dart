import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A chat accent color has changed
@immutable
class UpdateChatAccentColor extends Update {
  const UpdateChatAccentColor({
    required this.chatId,
    required this.accentColorId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [accentColorId] The new chat accent color identifier
  final int accentColorId;

  static const String constructor = 'updateChatAccentColor';

  static UpdateChatAccentColor? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateChatAccentColor(
      chatId: json['chat_id'] as int,
      accentColorId: json['accent_color_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'accent_color_id': accentColorId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
