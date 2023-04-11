import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Autosave settings applied to a chat
@immutable
class AutosaveSettingsScopeChat extends AutosaveSettingsScope {
  const AutosaveSettingsScopeChat({
    required this.chatId,
  });

  /// [chatId] Chat identifier
  final int chatId;

  static const String constructor = 'autosaveSettingsScopeChat';

  static AutosaveSettingsScopeChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AutosaveSettingsScopeChat(
      chatId: json['chat_id'] as int,
    );
  }

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
