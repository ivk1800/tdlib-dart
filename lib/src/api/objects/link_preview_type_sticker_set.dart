import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a sticker set
@immutable
class LinkPreviewTypeStickerSet extends LinkPreviewType {
  const LinkPreviewTypeStickerSet({
    required this.stickers,
  });

  /// [stickers] Up to 4 stickers from the sticker set
  final List<Sticker> stickers;

  static const String constructor = 'linkPreviewTypeStickerSet';

  static LinkPreviewTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeStickerSet(
      stickers: List<Sticker>.from(
          ((json['stickers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Sticker.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'stickers': stickers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
