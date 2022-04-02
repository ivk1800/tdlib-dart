import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Some data of a supergroup or a channel has changed. This update is
/// guaranteed to come before the supergroup identifier is returned to the
/// application
class UpdateSupergroup extends Update {
  UpdateSupergroup({required this.supergroup});

  /// [supergroup] New data about the supergroup
  final Supergroup supergroup;

  static const String CONSTRUCTOR = 'updateSupergroup';

  static UpdateSupergroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSupergroup(
        supergroup: Supergroup.fromJson(json['supergroup'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'supergroup': this.supergroup.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
