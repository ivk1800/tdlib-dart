import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes notification settings for reactions
/// Returns [Ok]
@immutable
class SetReactionNotificationSettings extends TdFunction {
  const SetReactionNotificationSettings({
    required this.notificationSettings,
  });

  /// [notificationSettings] The new notification settings for reactions
  final ReactionNotificationSettings notificationSettings;

  static const String constructor = 'setReactionNotificationSettings';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_settings': notificationSettings.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
