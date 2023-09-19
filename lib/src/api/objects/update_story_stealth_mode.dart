import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Story stealth mode settings have changed
@immutable
class UpdateStoryStealthMode extends Update {
  const UpdateStoryStealthMode({
    required this.activeUntilDate,
    required this.cooldownUntilDate,
  });

  /// [activeUntilDate] Point in time (Unix timestamp) until stealth mode is
  /// active; 0 if it is disabled
  final int activeUntilDate;

  /// [cooldownUntilDate] Point in time (Unix timestamp) when stealth mode can
  /// be enabled again; 0 if there is no active cooldown
  final int cooldownUntilDate;

  static const String constructor = 'updateStoryStealthMode';

  static UpdateStoryStealthMode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateStoryStealthMode(
      activeUntilDate: json['active_until_date'] as int,
      cooldownUntilDate: json['cooldown_until_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'active_until_date': activeUntilDate,
        'cooldown_until_date': cooldownUntilDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
