import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A URL linking to a sticker set
@immutable
class TMeUrlTypeStickerSet extends TMeUrlType {
  const TMeUrlTypeStickerSet({
    required this.stickerSetId,
  });

  /// [stickerSetId] Identifier of the sticker set
  final int stickerSetId;

  static const String constructor = 'tMeUrlTypeStickerSet';

  static TMeUrlTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TMeUrlTypeStickerSet(
      stickerSetId: int.tryParse(json['sticker_set_id']) ?? 0,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set_id': stickerSetId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
