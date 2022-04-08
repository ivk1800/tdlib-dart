import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of recently used stickers was updated
@immutable
class UpdateRecentStickers extends Update {
  const UpdateRecentStickers({
    required this.isAttached,
    required this.stickerIds,
  });

  /// [isAttached] True, if the list of stickers attached to photo or video
  /// files was updated, otherwise the list of sent stickers is updated
  final bool isAttached;

  /// [stickerIds] The new list of file identifiers of recently used stickers
  final List<int> stickerIds;

  static const String constructor = 'updateRecentStickers';

  static UpdateRecentStickers? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateRecentStickers(
      isAttached: json['is_attached'],
      stickerIds: List<int>.from(
          (json['sticker_ids'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_attached': isAttached,
        'sticker_ids': stickerIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
