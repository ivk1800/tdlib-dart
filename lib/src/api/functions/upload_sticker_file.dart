import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Uploads a file with a sticker; returns the uploaded file
/// Returns [File]
class UploadStickerFile extends TdFunction {
  UploadStickerFile({required this.userId, required this.sticker});

  /// [userId] Sticker file owner; ignored for regular users
  final int userId;

  /// [sticker] Sticker file to upload
  final InputSticker sticker;

  static const String CONSTRUCTOR = 'uploadStickerFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'sticker': this.sticker.toJson(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
