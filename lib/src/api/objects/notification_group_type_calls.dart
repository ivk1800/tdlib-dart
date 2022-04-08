import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A group containing notifications of type notificationTypeNewCall
@immutable
class NotificationGroupTypeCalls extends NotificationGroupType {
  const NotificationGroupTypeCalls();

  static const String constructor = 'notificationGroupTypeCalls';

  static NotificationGroupTypeCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const NotificationGroupTypeCalls();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
