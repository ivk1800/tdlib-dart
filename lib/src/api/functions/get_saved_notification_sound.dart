import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns saved notification sound by its identifier. Returns a 404 error if
/// there is no saved notification sound with the specified identifier
/// Returns [NotificationSounds]
@immutable
class GetSavedNotificationSound extends TdFunction {
  const GetSavedNotificationSound({
    required this.notificationSoundId,
  });

  /// [notificationSoundId] Identifier of the notification sound
  final int notificationSoundId;

  static const String constructor = 'getSavedNotificationSound';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_sound_id': notificationSoundId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
