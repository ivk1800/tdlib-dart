import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a freeform gradient fill of a background
@immutable
class BackgroundFillFreeformGradient extends BackgroundFill {
  const BackgroundFillFreeformGradient({
    required this.colors,
  });

  /// [colors] A list of 3 or 4 colors of the freeform gradients in the RGB24
  /// format
  final List<int> colors;

  static const String constructor = 'backgroundFillFreeformGradient';

  static BackgroundFillFreeformGradient? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillFreeformGradient(
      colors:
          List<int>.from((json['colors'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'colors': colors.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
