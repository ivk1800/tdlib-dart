import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a freeform gradient fill of a background
class BackgroundFillFreeformGradient extends BackgroundFill {
  BackgroundFillFreeformGradient({required this.colors});

  /// [colors] A list of 3 or 4 colors of the freeform gradients in the RGB24
  /// format
  final List<int> colors;

  static const String CONSTRUCTOR = 'backgroundFillFreeformGradient';

  static BackgroundFillFreeformGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillFreeformGradient(
        colors: List<int>.from(
            (json['colors'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'colors': colors.map((item) => item).toList(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
