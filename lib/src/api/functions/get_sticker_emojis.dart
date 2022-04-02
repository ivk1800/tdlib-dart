import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns emoji corresponding to a sticker. The list is only for
/// informational purposes, because a sticker is always sent with a fixed
/// emoji from the corresponding Sticker object
/// Returns [Emojis]
class GetStickerEmojis extends TdFunction {
  GetStickerEmojis({required this.sticker});

  /// [sticker] Sticker file identifier
  final InputFile sticker;

  static const String CONSTRUCTOR = 'getStickerEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker': this.sticker.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
