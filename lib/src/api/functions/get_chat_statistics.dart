import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns detailed statistics about a chat. Currently, this method can be
/// used only for supergroups and channels. Can be used only if
/// supergroupFullInfo.can_get_statistics == true
/// Returns [ChatStatistics]
class GetChatStatistics extends TdFunction {
  GetChatStatistics({required this.chatId, required this.isDark});

  /// [chatId] Chat identifier
  final int chatId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String CONSTRUCTOR = 'getChatStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, 'is_dark': this.isDark, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
