import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Removes a sticker from the list of favorite stickers
/// Returns [Ok]
class RemoveFavoriteSticker extends TdFunction {
  RemoveFavoriteSticker({required this.sticker});

  /// [sticker] Sticker file to delete from the list
  final InputFile sticker;

  static const String CONSTRUCTOR = 'removeFavoriteSticker';

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
