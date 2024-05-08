import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Notification settings for reactions were updated
@immutable
class UpdateReactionNotificationSettings extends Update {
  const UpdateReactionNotificationSettings({
    required this.notificationSettings,
  });

  /// [notificationSettings] The new notification settings
  final ReactionNotificationSettings notificationSettings;

  static const String constructor = 'updateReactionNotificationSettings';

  static UpdateReactionNotificationSettings? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateReactionNotificationSettings(
      notificationSettings: ReactionNotificationSettings.fromJson(
          json['notification_settings'] as Map<String, dynamic>?)!,
    );
  }

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
