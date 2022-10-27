import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The sticker is a video in WEBM format
@immutable
class StickerFormatWebm extends StickerFormat {
  const StickerFormatWebm();

  static const String constructor = 'stickerFormatWebm';

  static StickerFormatWebm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StickerFormatWebm();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
