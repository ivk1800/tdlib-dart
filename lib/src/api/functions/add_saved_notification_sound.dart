import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a new notification sound to the list of saved notification sounds.
/// The new notification sound is added to the top of the list. If it is
/// already in the list, its position isn't changed
/// Returns [NotificationSound]
@immutable
class AddSavedNotificationSound extends TdFunction {
  const AddSavedNotificationSound({
    required this.sound,
  });

  /// [sound] Notification sound file to add
  final InputFile sound;

  static const String constructor = 'addSavedNotificationSound';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sound': sound.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
