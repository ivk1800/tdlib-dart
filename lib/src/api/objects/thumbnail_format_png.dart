import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The thumbnail is in PNG format. It will be used only for background
/// patterns
@immutable
class ThumbnailFormatPng extends ThumbnailFormat {
  const ThumbnailFormatPng();

  static const String constructor = 'thumbnailFormatPng';

  static ThumbnailFormatPng? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const ThumbnailFormatPng();
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
