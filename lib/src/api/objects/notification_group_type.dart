import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes the type of notifications in a notification group
abstract class NotificationGroupType extends TdObject {
  const NotificationGroupType();

  static const String CONSTRUCTOR = 'notificationGroupType';

  /// Inherited by:
  /// [NotificationGroupTypeMessages]
  /// [NotificationGroupTypeMentions]
  /// [NotificationGroupTypeSecretChat]
  /// [NotificationGroupTypeCalls]
  static NotificationGroupType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case NotificationGroupTypeMessages.CONSTRUCTOR:
        return NotificationGroupTypeMessages.fromJson(json);
      case NotificationGroupTypeMentions.CONSTRUCTOR:
        return NotificationGroupTypeMentions.fromJson(json);
      case NotificationGroupTypeSecretChat.CONSTRUCTOR:
        return NotificationGroupTypeSecretChat.fromJson(json);
      case NotificationGroupTypeCalls.CONSTRUCTOR:
        return NotificationGroupTypeCalls.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
