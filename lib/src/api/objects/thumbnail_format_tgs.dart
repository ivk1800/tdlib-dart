import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The thumbnail is in TGS format. It will be used only for TGS sticker sets
@immutable
class ThumbnailFormatTgs extends ThumbnailFormat {
  const ThumbnailFormatTgs();

  static const String constructor = 'thumbnailFormatTgs';

  static ThumbnailFormatTgs? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatTgs();
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
