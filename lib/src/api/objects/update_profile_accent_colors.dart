import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of supported accent colors for user profiles has changed
@immutable
class UpdateProfileAccentColors extends Update {
  const UpdateProfileAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
  });

  /// [colors] Information about supported colors
  final List<ProfileAccentColor> colors;

  /// [availableAccentColorIds] The list of accent color identifiers, which can
  /// be set through setProfileAccentColor and setChatProfileAccentColor. The
  /// colors must be shown in the specififed order
  final List<int> availableAccentColorIds;

  static const String constructor = 'updateProfileAccentColors';

  static UpdateProfileAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateProfileAccentColors(
      colors: List<ProfileAccentColor>.from(
          ((json['colors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ProfileAccentColor.fromJson(item))
              .toList()),
      availableAccentColorIds: List<int>.from(
          ((json['available_accent_color_ids'] as List<dynamic>?) ??
                  <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'colors': colors.map((item) => item.toJson()).toList(),
        'available_accent_color_ids':
            availableAccentColorIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
