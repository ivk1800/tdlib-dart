import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The link is a link to a sticker set. Call searchStickerSet with the given
/// sticker set name to process the link and show the sticker set
class InternalLinkTypeStickerSet extends InternalLinkType {
  InternalLinkTypeStickerSet({required this.stickerSetName});

  /// [stickerSetName] Name of the sticker set
  final String stickerSetName;

  static const String CONSTRUCTOR = 'internalLinkTypeStickerSet';

  static InternalLinkTypeStickerSet? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalLinkTypeStickerSet(stickerSetName: json['sticker_set_name']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'sticker_set_name': this.stickerSetName, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
