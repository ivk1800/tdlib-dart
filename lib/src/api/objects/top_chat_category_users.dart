import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A category containing frequently used private chats with non-bot users
@immutable
class TopChatCategoryUsers extends TopChatCategory {
  const TopChatCategoryUsers();

  static const String constructor = 'topChatCategoryUsers';

  static TopChatCategoryUsers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryUsers();
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
