import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A photo story
@immutable
class InputStoryContentPhoto extends InputStoryContent {
  const InputStoryContentPhoto({
    required this.photo,
    required this.addedStickerFileIds,
  });

  /// [photo] Photo to send. The photo must be at most 10 MB in size. The photo
  /// size must be 1080x1920
  final InputFile photo;

  /// [addedStickerFileIds] File identifiers of the stickers added to the photo,
  /// if applicable
  final List<int> addedStickerFileIds;

  static const String constructor = 'inputStoryContentPhoto';

  static InputStoryContentPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputStoryContentPhoto(
      photo: InputFile.fromJson(json['photo'] as Map<String, dynamic>?)!,
      addedStickerFileIds: List<int>.from(
          ((json['added_sticker_file_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'photo': photo.toJson(),
        'added_sticker_file_ids':
            addedStickerFileIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
