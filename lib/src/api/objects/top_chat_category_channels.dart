import '../tdapi.dart';

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
}
