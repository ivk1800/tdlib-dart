import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Resets all notification settings to their default values. By default, all
/// chats are unmuted, the sound is set to "default" and message previews are
/// shown
/// Returns [Ok]
@immutable
class ResetAllNotificationSettings extends TdFunction {
  const ResetAllNotificationSettings();

  static const String constructor = 'resetAllNotificationSettings';

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
