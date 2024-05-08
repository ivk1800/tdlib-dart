import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a sticker from the set to which it belongs. The sticker set must
/// be owned by the current user
/// Returns [Ok]
@immutable
class RemoveStickerFromSet extends TdFunction {
  const RemoveStickerFromSet({
    required this.sticker,
  });

  /// [sticker] Sticker to remove from the set
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
