import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of supported accent colors has changed
@immutable
class UpdateAccentColors extends Update {
  const UpdateAccentColors({
    required this.colors,
    required this.availableAccentColorIds,
  });

  /// [colors] Information about supported colors; colors with identifiers 0
  /// (red), 1 (orange), 2 (purple/violet), 3 (green), 4 (cyan), 5 (blue), 6
  /// (pink) must always be supported and aren't included in the list. The exact
  /// colors for the accent colors with identifiers 0-6 must be taken from the
  /// app theme
  final List<AccentColor> colors;

  /// [availableAccentColorIds] The list of accent color identifiers, which can
  /// be set through setAccentColor and setChatAccentColor. The colors must be
  /// shown in the specififed order
  final List<int> availableAccentColorIds;

  static const String constructor = 'updateAccentColors';

  static UpdateAccentColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAccentColors(
      colors: List<AccentColor>.from(
          ((json['colors'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => AccentColor.fromJson(item))
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
