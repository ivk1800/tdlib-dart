import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of installed sticker sets was updated
@immutable
class UpdateInstalledStickerSets extends Update {
  const UpdateInstalledStickerSets({
    required this.isMasks,
    required this.stickerSetIds,
  });

  /// [isMasks] True, if the list of installed mask sticker sets was updated
  final bool isMasks;

  /// [stickerSetIds] The new list of installed ordinary sticker sets
  final List<int> stickerSetIds;

  static const String constructor = 'updateInstalledStickerSets';

  static UpdateInstalledStickerSets? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateInstalledStickerSets(
      isMasks: json['is_masks'],
      stickerSetIds: List<int>.from(
          (json['sticker_set_ids'] ?? []).map((item) => item).toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'is_masks': isMasks,
        'sticker_set_ids': stickerSetIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
