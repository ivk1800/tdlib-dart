import '../tdapi.dart';

/// The chat is public, because it is a location-based supergroup
class PublicChatTypeIsLocationBased extends PublicChatType {
  const PublicChatTypeIsLocationBased();

  static const String CONSTRUCTOR = 'publicChatTypeIsLocationBased';

  static PublicChatTypeIsLocationBased? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PublicChatTypeIsLocationBased();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
