import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The thumbnail is in WEBP format. It will be used only for some stickers
@immutable
class ThumbnailFormatWebp extends ThumbnailFormat {
  const ThumbnailFormatWebp();

  static const String constructor = 'thumbnailFormatWebp';

  static ThumbnailFormatWebp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatWebp();
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
