import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes a sticker from the set to which it belongs; for bots only. The
/// sticker set must have been created by the bot
/// Returns [Ok]
class RemoveStickerFromSet extends TdFunction {
  RemoveStickerFromSet({required this.sticker});

  /// [sticker] Sticker
  final InputFile sticker;

  static const String CONSTRUCTOR = 'removeStickerFromSet';

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
