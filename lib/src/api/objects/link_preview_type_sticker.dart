import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a sticker
@immutable
class LinkPreviewTypeSticker extends LinkPreviewType {
  const LinkPreviewTypeSticker({
    required this.sticker,
  });

  /// [sticker] The sticker. It can be an arbitrary WEBP image and can have
  /// dimensions bigger than 512
  final Sticker sticker;

  static const String constructor = 'linkPreviewTypeSticker';

  static LinkPreviewTypeSticker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LinkPreviewTypeSticker(
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker': sticker.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
