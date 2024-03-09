import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a public forward or repost of a story
@immutable
abstract class PublicForward extends TdObject {
  const PublicForward();

  static const String constructor = 'publicForward';

  /// Inherited by:
  /// [PublicForwardMessage]
  /// [PublicForwardStory]
  static PublicForward? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PublicForwardMessage.constructor:
        return PublicForwardMessage.fromJson(json);
      case PublicForwardStory.constructor:
        return PublicForwardStory.fromJson(json);
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
