import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The chat accent color was changed
@immutable
class ChatEventAccentColorChanged extends ChatEventAction {
  const ChatEventAccentColorChanged({
    required this.oldAccentColorId,
    required this.newAccentColorId,
  });

  /// [oldAccentColorId] Previous identifier of chat accent color
  final int oldAccentColorId;

  /// [newAccentColorId] New identifier of chat accent color
  final int newAccentColorId;

  static const String constructor = 'chatEventAccentColorChanged';

  static ChatEventAccentColorChanged? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatEventAccentColorChanged(
      oldAccentColorId: json['old_accent_color_id'] as int,
      newAccentColorId: json['new_accent_color_id'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'old_accent_color_id': oldAccentColorId,
        'new_accent_color_id': newAccentColorId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
