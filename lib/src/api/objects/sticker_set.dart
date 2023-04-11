import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a sticker set
@immutable
class StickerSet extends TdObject {
  const StickerSet({
    required this.id,
    required this.title,
    required this.name,
    this.thumbnail,
    required this.thumbnailOutline,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    required this.stickerFormat,
    required this.stickerType,
    required this.isViewed,
    required this.stickers,
    required this.emojis,
  });

  /// [id] Identifier of the sticker set
  final int id;

  /// [title] Title of the sticker set
  final String title;

  /// [name] Name of the sticker set
  final String name;

  /// [thumbnail] Sticker set thumbnail in WEBP, TGS, or WEBM format with width
  /// and height 100; may be null. The file can be downloaded only before the
  /// thumbnail is changed
  final Thumbnail? thumbnail;

  /// [thumbnailOutline] Sticker set thumbnail's outline represented as a list
  /// of closed vector paths; may be empty. The coordinate system origin is in
  /// the upper-left corner
  final List<ClosedVectorPath> thumbnailOutline;

  /// [isInstalled] True, if the sticker set has been installed by the current
  /// user
  final bool isInstalled;

  /// [isArchived] True, if the sticker set has been archived. A sticker set
  /// can't be installed and archived simultaneously
  final bool isArchived;

  /// [isOfficial] True, if the sticker set is official
  final bool isOfficial;

  /// [stickerFormat] Format of the stickers in the set
  final StickerFormat stickerFormat;

  /// [stickerType] Type of the stickers in the set
  final StickerType stickerType;

  /// [isViewed] True for already viewed trending sticker sets
  final bool isViewed;

  /// [stickers] List of stickers in this set
  final List<Sticker> stickers;

  /// [emojis] A list of emoji corresponding to the stickers in the same order.
  /// The list is only for informational purposes, because a sticker is always
  /// sent with a fixed emoji from the corresponding Sticker object
  final List<Emojis> emojis;

  static const String constructor = 'stickerSet';

  static StickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSet(
      id: int.tryParse(json['id']) ?? 0,
      title: json['title'] as String,
      name: json['name'] as String,
      thumbnail: Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      thumbnailOutline: List<ClosedVectorPath>.from(
          ((json['thumbnail_outline'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => ClosedVectorPath.fromJson(item))
              .toList()),
      isInstalled: json['is_installed'] as bool,
      isArchived: json['is_archived'] as bool,
      isOfficial: json['is_official'] as bool,
      stickerFormat: StickerFormat.fromJson(
          json['sticker_format'] as Map<String, dynamic>?)!,
      stickerType:
          StickerType.fromJson(json['sticker_type'] as Map<String, dynamic>?)!,
      isViewed: json['is_viewed'] as bool,
      stickers: List<Sticker>.from(
          ((json['stickers'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Sticker.fromJson(item))
              .toList()),
      emojis: List<Emojis>.from(
          ((json['emojis'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => Emojis.fromJson(item))
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'name': name,
        'thumbnail': thumbnail?.toJson(),
        'thumbnail_outline':
            thumbnailOutline.map((item) => item.toJson()).toList(),
        'is_installed': isInstalled,
        'is_archived': isArchived,
        'is_official': isOfficial,
        'sticker_format': stickerFormat.toJson(),
        'sticker_type': stickerType.toJson(),
        'is_viewed': isViewed,
        'stickers': stickers.map((item) => item.toJson()).toList(),
        'emojis': emojis.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
