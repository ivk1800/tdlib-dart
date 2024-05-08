import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Replaces existing sticker in a set. The function is equivalent to
/// removeStickerFromSet, then addStickerToSet, then setStickerPositionInSet
/// Returns [Ok]
@immutable
class ReplaceStickerInSet extends TdFunction {
  const ReplaceStickerInSet({
    required this.userId,
    required this.name,
    required this.oldSticker,
    required this.newSticker,
  });

  /// [userId] Sticker set owner; ignored for regular users
  final int userId;

  /// [name] Sticker set name. The sticker set must be owned by the current user
  final String name;

  /// [oldSticker] Sticker to remove from the set
  final InputFile oldSticker;

  /// [newSticker] Sticker to add to the set
  final InputSticker newSticker;

  static const String constructor = 'replaceStickerInSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'name': name,
        'old_sticker': oldSticker.toJson(),
        'new_sticker': newSticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
