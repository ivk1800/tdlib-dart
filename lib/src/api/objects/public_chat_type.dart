import '../tdapi.dart';

/// Describes a type of public chats
abstract class PublicChatType extends TdObject {
  const PublicChatType();

  static const String CONSTRUCTOR = 'publicChatType';

  /// Inherited by:
  /// [PublicChatTypeHasUsername]
  /// [PublicChatTypeIsLocationBased]
  static PublicChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PublicChatTypeHasUsername.CONSTRUCTOR:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.CONSTRUCTOR:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
