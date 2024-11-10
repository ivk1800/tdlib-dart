import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes type of link preview
@immutable
abstract class LinkPreviewType extends TdObject {
  const LinkPreviewType();

  static const String constructor = 'linkPreviewType';

  /// Inherited by:
  /// [LinkPreviewTypeAlbum]
  /// [LinkPreviewTypeAnimation]
  /// [LinkPreviewTypeApp]
  /// [LinkPreviewTypeArticle]
  /// [LinkPreviewTypeAudio]
  /// [LinkPreviewTypeBackground]
  /// [LinkPreviewTypeChannelBoost]
  /// [LinkPreviewTypeChat]
  /// [LinkPreviewTypeDocument]
  /// [LinkPreviewTypeEmbeddedAnimationPlayer]
  /// [LinkPreviewTypeEmbeddedAudioPlayer]
  /// [LinkPreviewTypeEmbeddedVideoPlayer]
  /// [LinkPreviewTypeExternalAudio]
  /// [LinkPreviewTypeExternalVideo]
  /// [LinkPreviewTypeInvoice]
  /// [LinkPreviewTypeMessage]
  /// [LinkPreviewTypePhoto]
  /// [LinkPreviewTypePremiumGiftCode]
  /// [LinkPreviewTypeShareableChatFolder]
  /// [LinkPreviewTypeStickerSet]
  /// [LinkPreviewTypeSticker]
  /// [LinkPreviewTypeStory]
  /// [LinkPreviewTypeSupergroupBoost]
  /// [LinkPreviewTypeTheme]
  /// [LinkPreviewTypeUnsupported]
  /// [LinkPreviewTypeUser]
  /// [LinkPreviewTypeVideoChat]
  /// [LinkPreviewTypeVideoNote]
  /// [LinkPreviewTypeVideo]
  /// [LinkPreviewTypeVoiceNote]
  /// [LinkPreviewTypeWebApp]
  static LinkPreviewType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case LinkPreviewTypeAlbum.constructor:
        return LinkPreviewTypeAlbum.fromJson(json);
      case LinkPreviewTypeAnimation.constructor:
        return LinkPreviewTypeAnimation.fromJson(json);
      case LinkPreviewTypeApp.constructor:
        return LinkPreviewTypeApp.fromJson(json);
      case LinkPreviewTypeArticle.constructor:
        return LinkPreviewTypeArticle.fromJson(json);
      case LinkPreviewTypeAudio.constructor:
        return LinkPreviewTypeAudio.fromJson(json);
      case LinkPreviewTypeBackground.constructor:
        return LinkPreviewTypeBackground.fromJson(json);
      case LinkPreviewTypeChannelBoost.constructor:
        return LinkPreviewTypeChannelBoost.fromJson(json);
      case LinkPreviewTypeChat.constructor:
        return LinkPreviewTypeChat.fromJson(json);
      case LinkPreviewTypeDocument.constructor:
        return LinkPreviewTypeDocument.fromJson(json);
      case LinkPreviewTypeEmbeddedAnimationPlayer.constructor:
        return LinkPreviewTypeEmbeddedAnimationPlayer.fromJson(json);
      case LinkPreviewTypeEmbeddedAudioPlayer.constructor:
        return LinkPreviewTypeEmbeddedAudioPlayer.fromJson(json);
      case LinkPreviewTypeEmbeddedVideoPlayer.constructor:
        return LinkPreviewTypeEmbeddedVideoPlayer.fromJson(json);
      case LinkPreviewTypeExternalAudio.constructor:
        return LinkPreviewTypeExternalAudio.fromJson(json);
      case LinkPreviewTypeExternalVideo.constructor:
        return LinkPreviewTypeExternalVideo.fromJson(json);
      case LinkPreviewTypeInvoice.constructor:
        return LinkPreviewTypeInvoice.fromJson(json);
      case LinkPreviewTypeMessage.constructor:
        return LinkPreviewTypeMessage.fromJson(json);
      case LinkPreviewTypePhoto.constructor:
        return LinkPreviewTypePhoto.fromJson(json);
      case LinkPreviewTypePremiumGiftCode.constructor:
        return LinkPreviewTypePremiumGiftCode.fromJson(json);
      case LinkPreviewTypeShareableChatFolder.constructor:
        return LinkPreviewTypeShareableChatFolder.fromJson(json);
      case LinkPreviewTypeSticker.constructor:
        return LinkPreviewTypeSticker.fromJson(json);
      case LinkPreviewTypeStickerSet.constructor:
        return LinkPreviewTypeStickerSet.fromJson(json);
      case LinkPreviewTypeStory.constructor:
        return LinkPreviewTypeStory.fromJson(json);
      case LinkPreviewTypeSupergroupBoost.constructor:
        return LinkPreviewTypeSupergroupBoost.fromJson(json);
      case LinkPreviewTypeTheme.constructor:
        return LinkPreviewTypeTheme.fromJson(json);
      case LinkPreviewTypeUnsupported.constructor:
        return LinkPreviewTypeUnsupported.fromJson(json);
      case LinkPreviewTypeUser.constructor:
        return LinkPreviewTypeUser.fromJson(json);
      case LinkPreviewTypeVideo.constructor:
        return LinkPreviewTypeVideo.fromJson(json);
      case LinkPreviewTypeVideoChat.constructor:
        return LinkPreviewTypeVideoChat.fromJson(json);
      case LinkPreviewTypeVideoNote.constructor:
        return LinkPreviewTypeVideoNote.fromJson(json);
      case LinkPreviewTypeVoiceNote.constructor:
        return LinkPreviewTypeVoiceNote.fromJson(json);
      case LinkPreviewTypeWebApp.constructor:
        return LinkPreviewTypeWebApp.fromJson(json);
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
