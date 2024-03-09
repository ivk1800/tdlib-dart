import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes settings for messages that are automatically sent by a Telegram
/// Business account when it is away
@immutable
class BusinessAwayMessageSettings extends TdObject {
  const BusinessAwayMessageSettings({
    required this.shortcutId,
    required this.recipients,
    required this.schedule,
    required this.offlineOnly,
  });

  /// [shortcutId] Unique quick reply shortcut identifier for the away messages
  final int shortcutId;

  /// [recipients] Chosen recipients of the away messages
  final BusinessRecipients recipients;

  /// [schedule] Settings used to check whether the current user is away
  final BusinessAwayMessageSchedule schedule;

  /// [offlineOnly] True, if the messages must not be sent if the account was
  /// online in the last 10 minutes
  final bool offlineOnly;

  static const String constructor = 'businessAwayMessageSettings';

  static BusinessAwayMessageSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BusinessAwayMessageSettings(
      shortcutId: json['shortcut_id'] as int,
      recipients: BusinessRecipients.fromJson(
          json['recipients'] as Map<String, dynamic>?)!,
      schedule: BusinessAwayMessageSchedule.fromJson(
          json['schedule'] as Map<String, dynamic>?)!,
      offlineOnly: json['offline_only'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'shortcut_id': shortcutId,
        'recipients': recipients.toJson(),
        'schedule': schedule.toJson(),
        'offline_only': offlineOnly,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
