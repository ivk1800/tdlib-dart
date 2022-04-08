import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a block of an instant view web page
@immutable
abstract class PageBlock extends TdObject {
  const PageBlock();

  static const String constructor = 'pageBlock';

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

    switch (json['@type']) {
      case PageBlockTitle.constructor:
        return PageBlockTitle.fromJson(json);
      case PageBlockSubtitle.constructor:
        return PageBlockSubtitle.fromJson(json);
      case PageBlockAuthorDate.constructor:
        return PageBlockAuthorDate.fromJson(json);
      case PageBlockHeader.constructor:
        return PageBlockHeader.fromJson(json);
      case PageBlockSubheader.constructor:
        return PageBlockSubheader.fromJson(json);
      case PageBlockKicker.constructor:
        return PageBlockKicker.fromJson(json);
      case PageBlockParagraph.constructor:
        return PageBlockParagraph.fromJson(json);
      case PageBlockPreformatted.constructor:
        return PageBlockPreformatted.fromJson(json);
      case PageBlockFooter.constructor:
        return PageBlockFooter.fromJson(json);
      case PageBlockDivider.constructor:
        return PageBlockDivider.fromJson(json);
      case PageBlockAnchor.constructor:
        return PageBlockAnchor.fromJson(json);
      case PageBlockList.constructor:
        return PageBlockList.fromJson(json);
      case PageBlockBlockQuote.constructor:
        return PageBlockBlockQuote.fromJson(json);
      case PageBlockPullQuote.constructor:
        return PageBlockPullQuote.fromJson(json);
      case PageBlockAnimation.constructor:
        return PageBlockAnimation.fromJson(json);
      case PageBlockAudio.constructor:
        return PageBlockAudio.fromJson(json);
      case PageBlockPhoto.constructor:
        return PageBlockPhoto.fromJson(json);
      case PageBlockVideo.constructor:
        return PageBlockVideo.fromJson(json);
      case PageBlockVoiceNote.constructor:
        return PageBlockVoiceNote.fromJson(json);
      case PageBlockCover.constructor:
        return PageBlockCover.fromJson(json);
      case PageBlockEmbedded.constructor:
        return PageBlockEmbedded.fromJson(json);
      case PageBlockEmbeddedPost.constructor:
        return PageBlockEmbeddedPost.fromJson(json);
      case PageBlockCollage.constructor:
        return PageBlockCollage.fromJson(json);
      case PageBlockSlideshow.constructor:
        return PageBlockSlideshow.fromJson(json);
      case PageBlockChatLink.constructor:
        return PageBlockChatLink.fromJson(json);
      case PageBlockTable.constructor:
        return PageBlockTable.fromJson(json);
      case PageBlockDetails.constructor:
        return PageBlockDetails.fromJson(json);
      case PageBlockRelatedArticles.constructor:
        return PageBlockRelatedArticles.fromJson(json);
      case PageBlockMap.constructor:
        return PageBlockMap.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
