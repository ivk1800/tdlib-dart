import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A category containing frequently used chats with bots, which Web Apps were
/// opened
@immutable
class TopChatCategoryWebAppBots extends TopChatCategory {
  const TopChatCategoryWebAppBots();

  static const String constructor = 'topChatCategoryWebAppBots';

  static TopChatCategoryWebAppBots? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryWebAppBots();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
