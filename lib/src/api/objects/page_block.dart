import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes a block of an instant view web page
abstract class PageBlock extends TdObject {
  const PageBlock();

  static const String CONSTRUCTOR = 'pageBlock';

  /// Inherited by:
  /// [PageBlockTitle]
  /// [PageBlockSubtitle]
  /// [PageBlockAuthorDate]
  /// [PageBlockHeader]
  /// [PageBlockSubheader]
  /// [PageBlockKicker]
  /// [PageBlockParagraph]
  /// [PageBlockPreformatted]
  /// [PageBlockFooter]
  /// [PageBlockDivider]
  /// [PageBlockAnchor]
  /// [PageBlockList]
  /// [PageBlockBlockQuote]
  /// [PageBlockPullQuote]
  /// [PageBlockAnimation]
  /// [PageBlockAudio]
  /// [PageBlockPhoto]
  /// [PageBlockVideo]
  /// [PageBlockVoiceNote]
  /// [PageBlockCover]
  /// [PageBlockEmbedded]
  /// [PageBlockEmbeddedPost]
  /// [PageBlockCollage]
  /// [PageBlockSlideshow]
  /// [PageBlockChatLink]
  /// [PageBlockTable]
  /// [PageBlockDetails]
  /// [PageBlockRelatedArticles]
  /// [PageBlockMap]
  static PageBlock? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PageBlockTitle.CONSTRUCTOR:
        return PageBlockTitle.fromJson(json);
      case PageBlockSubtitle.CONSTRUCTOR:
        return PageBlockSubtitle.fromJson(json);
      case PageBlockAuthorDate.CONSTRUCTOR:
        return PageBlockAuthorDate.fromJson(json);
      case PageBlockHeader.CONSTRUCTOR:
        return PageBlockHeader.fromJson(json);
      case PageBlockSubheader.CONSTRUCTOR:
        return PageBlockSubheader.fromJson(json);
      case PageBlockKicker.CONSTRUCTOR:
        return PageBlockKicker.fromJson(json);
      case PageBlockParagraph.CONSTRUCTOR:
        return PageBlockParagraph.fromJson(json);
      case PageBlockPreformatted.CONSTRUCTOR:
        return PageBlockPreformatted.fromJson(json);
      case PageBlockFooter.CONSTRUCTOR:
        return PageBlockFooter.fromJson(json);
      case PageBlockDivider.CONSTRUCTOR:
        return PageBlockDivider.fromJson(json);
      case PageBlockAnchor.CONSTRUCTOR:
        return PageBlockAnchor.fromJson(json);
      case PageBlockList.CONSTRUCTOR:
        return PageBlockList.fromJson(json);
      case PageBlockBlockQuote.CONSTRUCTOR:
        return PageBlockBlockQuote.fromJson(json);
      case PageBlockPullQuote.CONSTRUCTOR:
        return PageBlockPullQuote.fromJson(json);
      case PageBlockAnimation.CONSTRUCTOR:
        return PageBlockAnimation.fromJson(json);
      case PageBlockAudio.CONSTRUCTOR:
        return PageBlockAudio.fromJson(json);
      case PageBlockPhoto.CONSTRUCTOR:
        return PageBlockPhoto.fromJson(json);
      case PageBlockVideo.CONSTRUCTOR:
        return PageBlockVideo.fromJson(json);
      case PageBlockVoiceNote.CONSTRUCTOR:
        return PageBlockVoiceNote.fromJson(json);
      case PageBlockCover.CONSTRUCTOR:
        return PageBlockCover.fromJson(json);
      case PageBlockEmbedded.CONSTRUCTOR:
        return PageBlockEmbedded.fromJson(json);
      case PageBlockEmbeddedPost.CONSTRUCTOR:
        return PageBlockEmbeddedPost.fromJson(json);
      case PageBlockCollage.CONSTRUCTOR:
        return PageBlockCollage.fromJson(json);
      case PageBlockSlideshow.CONSTRUCTOR:
        return PageBlockSlideshow.fromJson(json);
      case PageBlockChatLink.CONSTRUCTOR:
        return PageBlockChatLink.fromJson(json);
      case PageBlockTable.CONSTRUCTOR:
        return PageBlockTable.fromJson(json);
      case PageBlockDetails.CONSTRUCTOR:
        return PageBlockDetails.fromJson(json);
      case PageBlockRelatedArticles.CONSTRUCTOR:
        return PageBlockRelatedArticles.fromJson(json);
      case PageBlockMap.CONSTRUCTOR:
        return PageBlockMap.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
