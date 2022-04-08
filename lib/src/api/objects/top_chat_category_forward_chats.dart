import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A category containing frequently used chats used to forward messages
@immutable
class TopChatCategoryForwardChats extends TopChatCategory {
  const TopChatCategoryForwardChats();

  static const String constructor = 'topChatCategoryForwardChats';

  static TopChatCategoryForwardChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryForwardChats();
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
