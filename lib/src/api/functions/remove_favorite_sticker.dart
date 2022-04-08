import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Removes a sticker from the list of favorite stickers
/// Returns [Ok]
@immutable
class RemoveFavoriteSticker extends TdFunction {
  const RemoveFavoriteSticker({
    required this.sticker,
  });

  /// [sticker] Sticker file to delete from the list
  final InputFile sticker;

  static const String constructor = 'removeFavoriteSticker';

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
