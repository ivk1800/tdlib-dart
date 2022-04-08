import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents short information about a sticker set
@immutable
class StickerSetInfo extends TdObject {
  const StickerSetInfo({
    required this.id,
    required this.title,
    required this.name,
    this.thumbnail,
    required this.thumbnailOutline,
    required this.isInstalled,
    required this.isArchived,
    required this.isOfficial,
    required this.isAnimated,
    required this.isMasks,
    required this.isViewed,
    required this.size,
    required this.covers,
  });

  /// [id] Identifier of the sticker set
  final int id;

  /// [title] Title of the sticker set
  final String title;

  /// [name] Name of the sticker set
  final String name;

  /// [thumbnail] Sticker set thumbnail in WEBP or TGS format with width and
  /// height 100; may be null
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

  /// [isAnimated] True, is the stickers in the set are animated
  final bool isAnimated;

  /// [isMasks] True, if the stickers in the set are masks
  final bool isMasks;

  /// [isViewed] True for already viewed trending sticker sets
  final bool isViewed;

  /// [size] Total number of stickers in the set
  final int size;

  /// [covers] Up to the first 5 stickers from the set, depending on the
  /// context. If the application needs more stickers the full sticker set needs
  /// to be requested
  final List<Sticker> covers;

  static const String constructor = 'stickerSetInfo';

  static StickerSetInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StickerSetInfo(
      id: int.tryParse(json['id']) ?? 0,
      title: json['title'],
      name: json['name'],
      thumbnail: Thumbnail.fromJson(json['thumbnail']),
      thumbnailOutline: List<ClosedVectorPath>.from(
          (json['thumbnail_outline'] ?? [])
              .map((item) => ClosedVectorPath.fromJson(item))
              .toList()),
      isInstalled: json['is_installed'],
      isArchived: json['is_archived'],
      isOfficial: json['is_official'],
      isAnimated: json['is_animated'],
      isMasks: json['is_masks'],
      isViewed: json['is_viewed'],
      size: json['size'],
      covers: List<Sticker>.from((json['covers'] ?? [])
          .map((item) => Sticker.fromJson(item))
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
        'is_animated': isAnimated,
        'is_masks': isMasks,
        'is_viewed': isViewed,
        'size': size,
        'covers': covers.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
