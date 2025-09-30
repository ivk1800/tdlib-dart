import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes colors of a backdrop of an upgraded gift
@immutable
class UpgradedGiftBackdropColors extends TdObject {
  const UpgradedGiftBackdropColors({
    required this.centerColor,
    required this.edgeColor,
    required this.symbolColor,
    required this.textColor,
  });

  /// [centerColor] A color in the center of the backdrop in the RGB format
  final int centerColor;

  /// [edgeColor] A color on the edges of the backdrop in the RGB format
  final int edgeColor;

  /// [symbolColor] A color to be applied for the symbol in the RGB format
  final int symbolColor;

  /// [textColor] A color for the text on the backdrop in the RGB format
  final int textColor;

  static const String constructor = 'upgradedGiftBackdropColors';

  static UpgradedGiftBackdropColors? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpgradedGiftBackdropColors(
      centerColor: json['center_color'] as int,
      edgeColor: json['edge_color'] as int,
      symbolColor: json['symbol_color'] as int,
      textColor: json['text_color'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'center_color': centerColor,
    'edge_color': edgeColor,
    'symbol_color': symbolColor,
    'text_color': textColor,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
