import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of saved notifications sounds was updated. This update may not be
/// sent until information about a notification sound was requested for the
/// first time
@immutable
class UpdateSavedNotificationSounds extends Update {
  const UpdateSavedNotificationSounds({
    required this.notificationSoundIds,
  });

  /// [notificationSoundIds] The new list of identifiers of saved notification
  /// sounds
  final List<int> notificationSoundIds;

  static const String constructor = 'updateSavedNotificationSounds';

  static UpdateSavedNotificationSounds? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSavedNotificationSounds(
      notificationSoundIds: List<int>.from(
          (json['notification_sound_ids'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'notification_sound_ids':
            notificationSoundIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
