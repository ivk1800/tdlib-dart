import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a solid fill of a background
class BackgroundFillSolid extends BackgroundFill {
  BackgroundFillSolid({required this.color});

  /// [color] A color of the background in the RGB24 format
  final int color;

  static const String CONSTRUCTOR = 'backgroundFillSolid';

  static BackgroundFillSolid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillSolid(color: json['color']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'color': this.color, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
