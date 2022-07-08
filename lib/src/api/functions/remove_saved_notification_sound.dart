import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a notification sound from the list of saved notification sounds
/// Returns [Ok]
@immutable
class RemoveSavedNotificationSound extends TdFunction {
  const RemoveSavedNotificationSound({
    required this.notificationSoundId,
  });

  /// [notificationSoundId] Identifier of the notification sound
  final int notificationSoundId;

  static const String constructor = 'removeSavedNotificationSound';

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
