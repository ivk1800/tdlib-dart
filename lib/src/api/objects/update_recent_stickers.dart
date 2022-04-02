import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The list of recently used stickers was updated
class UpdateRecentStickers extends Update {
  UpdateRecentStickers({required this.isAttached, required this.stickerIds});

  /// [isAttached] True, if the list of stickers attached to photo or video
  /// files was updated, otherwise the list of sent stickers is updated
  final bool isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  static const String CONSTRUCTOR = 'updateRecentStickers';

  static UpdateRecentStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateRecentStickers(
        isAttached: json['is_attached'],
        stickerIds: List<int>.from(
            (json['sticker_ids'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'is_attached': this.isAttached,
        'sticker_ids': stickerIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
