import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The link is a link to a sticker set. Call searchStickerSet with the given
/// sticker set name to process the link and show the sticker set
@immutable
class InternalLinkTypeStickerSet extends InternalLinkType {
  const InternalLinkTypeStickerSet({
    required this.stickerSetName,
  });

  /// [stickerSetName] Name of the sticker set
  final String stickerSetName;

  static const String constructor = 'internalLinkTypeStickerSet';

  static InternalLinkTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStickerSet(
      stickerSetName: json['sticker_set_name'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'sticker_set_name': stickerSetName,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
