import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the position of a sticker in the set to which it belongs; for bots
/// only. The sticker set must have been created by the bot
/// Returns [Ok]
class SetStickerPositionInSet extends TdFunction {
  SetStickerPositionInSet({required this.sticker, required this.position});

  /// [sticker] Sticker
  final InputFile sticker;

  /// [position] New position of the sticker in the set, zero-based
  final int position;

  static const String CONSTRUCTOR = 'setStickerPositionInSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker': this.sticker.toJson(),
        'position': this.position,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
