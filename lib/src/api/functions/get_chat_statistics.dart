import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns detailed statistics about a chat. Currently, this method can be
/// used only for supergroups and channels. Can be used only if
/// supergroupFullInfo.can_get_statistics == true
/// Returns [ChatStatistics]
@immutable
class GetChatStatistics extends TdFunction {
  const GetChatStatistics({
    required this.chatId,
    required this.isDark,
  });

  /// [chatId] Chat identifier
  final int chatId;

  /// [isDark] Pass true if a dark theme is used by the application
  final bool isDark;

  static const String constructor = 'getChatStatistics';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'chat_id': chatId,
        'is_dark': isDark,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
