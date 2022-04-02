import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A category containing frequently used chats used for calls
class TopChatCategoryCalls extends TopChatCategory {
  const TopChatCategoryCalls();

  static const String CONSTRUCTOR = 'topChatCategoryCalls';

  static TopChatCategoryCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryCalls();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
