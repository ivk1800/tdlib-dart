import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Adds a new sticker to a set; for bots only. Returns the sticker set
/// Returns [StickerSet]
class AddStickerToSet extends TdFunction {
  AddStickerToSet(
      {required this.userId, required this.name, required this.sticker});

  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [sticker] Sticker to add to the set
  final InputSticker sticker;

  static const String CONSTRUCTOR = 'addStickerToSet';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'name': this.name,
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
