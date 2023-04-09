import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the mask position of a mask sticker; for bots only. The sticker
/// must belong to a mask sticker set created by the bot
/// Returns [Ok]
@immutable
class SetStickerMaskPosition extends TdFunction {
  const SetStickerMaskPosition({
    required this.sticker,
    this.maskPosition,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  /// [maskPosition] Position where the mask is placed; pass null to remove mask
  /// position
  final MaskPosition? maskPosition;

  static const String constructor = 'setStickerMaskPosition';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        'mask_position': maskPosition?.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
