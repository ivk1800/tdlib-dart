import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some data of a supergroup or a channel has changed. This update is
/// guaranteed to come before the supergroup identifier is returned to the
/// application
@immutable
class UpdateSupergroup extends Update {
  const UpdateSupergroup({
    required this.supergroup,
  });

  /// [supergroup] New data about the supergroup
  final Supergroup supergroup;

  static const String constructor = 'updateSupergroup';

  static UpdateSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSupergroup(
      supergroup:
          Supergroup.fromJson(json['supergroup'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup': supergroup.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
