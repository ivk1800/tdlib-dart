import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The thumbnail is in TGS format. It will be used only for animated sticker
/// sets
class ThumbnailFormatTgs extends ThumbnailFormat {
  const ThumbnailFormatTgs();

  static const String CONSTRUCTOR = 'thumbnailFormatTgs';

  static ThumbnailFormatTgs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatTgs();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
