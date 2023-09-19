import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The thumbnail is in static GIF format. It will be used only for some bot
/// inline query results
@immutable
class ThumbnailFormatGif extends ThumbnailFormat {
  const ThumbnailFormatGif();

  static const String constructor = 'thumbnailFormatGif';

  static ThumbnailFormatGif? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatGif();
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
