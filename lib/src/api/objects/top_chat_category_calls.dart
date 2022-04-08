import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A category containing frequently used chats used for calls
@immutable
class TopChatCategoryCalls extends TopChatCategory {
  const TopChatCategoryCalls();

  static const String constructor = 'topChatCategoryCalls';

  static TopChatCategoryCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryCalls();
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
