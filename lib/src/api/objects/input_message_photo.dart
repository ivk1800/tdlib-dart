import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A photo message
@immutable
class InputMessagePhoto extends InputMessageContent {
  const InputMessagePhoto({
    required this.photo,
    this.thumbnail,
    required this.addedStickerFileIds,
    required this.width,
    required this.height,
    this.caption,
    this.selfDestructType,
    required this.hasSpoiler,
  });

  /// [photo] Photo to send. The photo must be at most 10 MB in size. The
  /// photo's width and height must not exceed 10000 in total. Width and height
  /// ratio must be at most 20
  final InputFile photo;

  /// [thumbnail] Photo thumbnail to be sent; pass null to skip thumbnail
  /// uploading. The thumbnail is sent to the other party only in secret chats
  final InputThumbnail? thumbnail;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo,
  /// if applicable
  final List<int> addedStickerFileIds;

  /// [width] Photo width
  final int width;

  /// [height] Photo height
  final int height;

  /// [caption] Photo caption; pass null to use an empty caption;
  /// 0-getOption("message_caption_length_max") characters
  final FormattedText? caption;

  /// [selfDestructType] Photo self-destruct type; pass null if none; private
  /// chats only
  final MessageSelfDestructType? selfDestructType;

  /// [hasSpoiler] True, if the photo preview must be covered by a spoiler
  /// animation; not supported in secret chats
  final bool hasSpoiler;

  static const String constructor = 'inputMessagePhoto';

  static InputMessagePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessagePhoto(
      photo: InputFile.fromJson(json['photo'] as Map<String, dynamic>?)!,
      thumbnail:
          InputThumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>?),
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
      width: json['width'] as int,
      height: json['height'] as int,
      caption: FormattedText.fromJson(json['caption'] as Map<String, dynamic>?),
      selfDestructType: MessageSelfDestructType.fromJson(
          json['self_destruct_type'] as Map<String, dynamic>?),
      hasSpoiler: json['has_spoiler'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'thumbnail': thumbnail?.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        'width': width,
        'height': height,
        'caption': caption?.toJson(),
        'self_destruct_type': selfDestructType?.toJson(),
        'has_spoiler': hasSpoiler,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
