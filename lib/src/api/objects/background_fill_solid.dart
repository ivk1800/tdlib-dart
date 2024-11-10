import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a solid fill of a background
@immutable
class BackgroundFillSolid extends BackgroundFill {
  const BackgroundFillSolid({
    required this.color,
  });

  /// [color] A color of the background in the RGB format
  final int color;

  static const String constructor = 'backgroundFillSolid';

  static BackgroundFillSolid? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BackgroundFillSolid(
      color: json['color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'color': color,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
