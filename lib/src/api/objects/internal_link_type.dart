import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes an internal https://t.me or tg: link, which must be processed by
/// the app in a special way
abstract class InternalLinkType extends TdObject {
  const InternalLinkType();

  static const String CONSTRUCTOR = 'internalLinkType';

  /// Inherited by:
  /// [InternalLinkTypeActiveSessions]
  /// [InternalLinkTypeAuthenticationCode]
  /// [InternalLinkTypeBackground]
  /// [InternalLinkTypeBotStart]
  /// [InternalLinkTypeBotStartInGroup]
  /// [InternalLinkTypeChangePhoneNumber]
  /// [InternalLinkTypeChatInvite]
  /// [InternalLinkTypeFilterSettings]
  /// [InternalLinkTypeGame]
  /// [InternalLinkTypeLanguagePack]
  /// [InternalLinkTypeMessage]
  /// [InternalLinkTypeMessageDraft]
  /// [InternalLinkTypePassportDataRequest]
  /// [InternalLinkTypePhoneNumberConfirmation]
  /// [InternalLinkTypeProxy]
  /// [InternalLinkTypePublicChat]
  /// [InternalLinkTypeQrCodeAuthentication]
  /// [InternalLinkTypeSettings]
  /// [InternalLinkTypeStickerSet]
  /// [InternalLinkTypeTheme]
  /// [InternalLinkTypeThemeSettings]
  /// [InternalLinkTypeUnknownDeepLink]
  /// [InternalLinkTypeUnsupportedProxy]
  /// [InternalLinkTypeVideoChat]
  static InternalLinkType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InternalLinkTypeActiveSessions.CONSTRUCTOR:
        return InternalLinkTypeActiveSessions.fromJson(json);
      case InternalLinkTypeAuthenticationCode.CONSTRUCTOR:
        return InternalLinkTypeAuthenticationCode.fromJson(json);
      case InternalLinkTypeBackground.CONSTRUCTOR:
        return InternalLinkTypeBackground.fromJson(json);
      case InternalLinkTypeBotStart.CONSTRUCTOR:
        return InternalLinkTypeBotStart.fromJson(json);
      case InternalLinkTypeBotStartInGroup.CONSTRUCTOR:
        return InternalLinkTypeBotStartInGroup.fromJson(json);
      case InternalLinkTypeChangePhoneNumber.CONSTRUCTOR:
        return InternalLinkTypeChangePhoneNumber.fromJson(json);
      case InternalLinkTypeChatInvite.CONSTRUCTOR:
        return InternalLinkTypeChatInvite.fromJson(json);
      case InternalLinkTypeFilterSettings.CONSTRUCTOR:
        return InternalLinkTypeFilterSettings.fromJson(json);
      case InternalLinkTypeGame.CONSTRUCTOR:
        return InternalLinkTypeGame.fromJson(json);
      case InternalLinkTypeLanguagePack.CONSTRUCTOR:
        return InternalLinkTypeLanguagePack.fromJson(json);
      case InternalLinkTypeMessage.CONSTRUCTOR:
        return InternalLinkTypeMessage.fromJson(json);
      case InternalLinkTypeMessageDraft.CONSTRUCTOR:
        return InternalLinkTypeMessageDraft.fromJson(json);
      case InternalLinkTypePassportDataRequest.CONSTRUCTOR:
        return InternalLinkTypePassportDataRequest.fromJson(json);
      case InternalLinkTypePhoneNumberConfirmation.CONSTRUCTOR:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);
      case InternalLinkTypeProxy.CONSTRUCTOR:
        return InternalLinkTypeProxy.fromJson(json);
      case InternalLinkTypePublicChat.CONSTRUCTOR:
        return InternalLinkTypePublicChat.fromJson(json);
      case InternalLinkTypeQrCodeAuthentication.CONSTRUCTOR:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);
      case InternalLinkTypeSettings.CONSTRUCTOR:
        return InternalLinkTypeSettings.fromJson(json);
      case InternalLinkTypeStickerSet.CONSTRUCTOR:
        return InternalLinkTypeStickerSet.fromJson(json);
      case InternalLinkTypeTheme.CONSTRUCTOR:
        return InternalLinkTypeTheme.fromJson(json);
      case InternalLinkTypeThemeSettings.CONSTRUCTOR:
        return InternalLinkTypeThemeSettings.fromJson(json);
      case InternalLinkTypeUnknownDeepLink.CONSTRUCTOR:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);
      case InternalLinkTypeUnsupportedProxy.CONSTRUCTOR:
        return InternalLinkTypeUnsupportedProxy.fromJson(json);
      case InternalLinkTypeVideoChat.CONSTRUCTOR:
        return InternalLinkTypeVideoChat.fromJson(json);
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
