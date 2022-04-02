import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A group containing notifications of type notificationTypeNewCall
class NotificationGroupTypeCalls extends NotificationGroupType {
  const NotificationGroupTypeCalls();

  static const String CONSTRUCTOR = 'notificationGroupTypeCalls';

  static NotificationGroupTypeCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeCalls();
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
