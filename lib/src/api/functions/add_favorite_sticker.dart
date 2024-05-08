import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Adds a new sticker to the list of favorite stickers. The new sticker is
/// added to the top of the list. If the sticker was already in the list, it
/// is removed from the list first. Only stickers belonging to a sticker set
/// or in WEBP or WEBM format can be added to this list. Emoji stickers can't
/// be added to favorite stickers
/// Returns [Ok]
@immutable
class AddFavoriteSticker extends TdFunction {
  const AddFavoriteSticker({
    required this.sticker,
  });

  /// [sticker] Sticker file to add
  final InputFile sticker;

  static const String constructor = 'addFavoriteSticker';

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
