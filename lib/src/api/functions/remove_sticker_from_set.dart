import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a sticker from the set to which it belongs; for bots only. The
/// sticker set must have been created by the bot
/// Returns [Ok]
@immutable
class RemoveStickerFromSet extends TdFunction {
  const RemoveStickerFromSet({
    required this.sticker,
  });

  /// [sticker] Sticker
  final InputFile sticker;

  static const String constructor = 'removeStickerFromSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
