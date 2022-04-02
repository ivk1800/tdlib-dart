import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A category containing frequently used channels
class TopChatCategoryChannels extends TopChatCategory {
  const TopChatCategoryChannels();

  static const String CONSTRUCTOR = 'topChatCategoryChannels';

  static TopChatCategoryChannels? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryChannels();
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
