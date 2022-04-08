import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a type of public chats
@immutable
abstract class PublicChatType extends TdObject {
  const PublicChatType();

  static const String constructor = 'publicChatType';

  /// Inherited by:
  /// [PublicChatTypeHasUsername]
  /// [PublicChatTypeIsLocationBased]
  static PublicChatType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PublicChatTypeHasUsername.constructor:
        return PublicChatTypeHasUsername.fromJson(json);
      case PublicChatTypeIsLocationBased.constructor:
        return PublicChatTypeIsLocationBased.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
