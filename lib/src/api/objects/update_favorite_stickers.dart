import '../tdapi.dart';

/// The list of favorite stickers was updated
class UpdateFavoriteStickers extends Update {
  UpdateFavoriteStickers({required this.stickerIds});

  /// [stickerIds] The new list of file identifiers of favorite stickers
  final List<int> stickerIds;

  static const String CONSTRUCTOR = 'updateFavoriteStickers';

  static UpdateFavoriteStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateFavoriteStickers(
        stickerIds: List<int>.from(
            (json['sticker_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sticker_ids': stickerIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };
}
