import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a new sticker to a set; for bots only
/// Returns [Ok]
@immutable
class AddStickerToSet extends TdFunction {
  const AddStickerToSet({
    required this.userId,
    required this.name,
    required this.sticker,
  });

  /// [userId] Sticker set owner
  final int userId;

  /// [name] Sticker set name
  final String name;

  /// [sticker] Sticker to add to the set
  final InputSticker sticker;

  static const String constructor = 'addStickerToSet';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'user_id': userId,
        'name': name,
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
