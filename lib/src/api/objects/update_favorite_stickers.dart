import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of favorite stickers was updated
@immutable
class UpdateFavoriteStickers extends Update {
  const UpdateFavoriteStickers({
    required this.stickerIds,
  });

  /// [stickerIds] The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  static const String constructor = 'updateFavoriteStickers';

  static UpdateFavoriteStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFavoriteStickers(
      stickerIds: List<int>.from(
          ((json['sticker_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_ids': stickerIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
