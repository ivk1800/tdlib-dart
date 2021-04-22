import '../tdapi.dart';

/// Describes a photo
class Photo extends TdObject {
  Photo({required this.hasStickers, this.minithumbnail, required this.sizes});

  /// [hasStickers] True, if stickers were added to the photo. The list of
  /// corresponding sticker sets can be received using getAttachedStickerSets
  final bool hasStickers;

  /// [minithumbnail] Photo minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// [sizes] Available variants of the photo, in different sizes
  final List<PhotoSize> sizes;

  static const String CONSTRUCTOR = 'photo';

  static Photo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Photo(
        hasStickers: json['has_stickers'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        sizes: List<PhotoSize>.from((json['sizes'] ?? [])
            .map((item) => PhotoSize.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'has_stickers': this.hasStickers,
        'minithumbnail': this.minithumbnail?.toJson(),
        'sizes': sizes.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
