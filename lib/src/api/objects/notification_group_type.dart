import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of notifications in a notification group
@immutable
abstract class NotificationGroupType extends TdObject {
  const NotificationGroupType();

  static const String constructor = 'notificationGroupType';

  /// Inherited by:
  /// [NotificationGroupTypeCalls]
  /// [NotificationGroupTypeMentions]
  /// [NotificationGroupTypeMessages]
  /// [NotificationGroupTypeSecretChat]
  static NotificationGroupType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case NotificationGroupTypeCalls.constructor:
        return NotificationGroupTypeCalls.fromJson(json);
      case NotificationGroupTypeMentions.constructor:
        return NotificationGroupTypeMentions.fromJson(json);
      case NotificationGroupTypeMessages.constructor:
        return NotificationGroupTypeMessages.fromJson(json);
      case NotificationGroupTypeSecretChat.constructor:
        return NotificationGroupTypeSecretChat.fromJson(json);
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
