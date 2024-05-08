import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an internal https://t.me or tg: link, which must be processed by
/// the application in a special way
@immutable
abstract class InternalLinkType extends TdObject {
  const InternalLinkType();

  static const String constructor = 'internalLinkType';

  /// Inherited by:
  /// [InternalLinkTypeActiveSessions]
  /// [InternalLinkTypeAttachmentMenuBot]
  /// [InternalLinkTypeAuthenticationCode]
  /// [InternalLinkTypeBackground]
  /// [InternalLinkTypeBotAddToChannel]
  /// [InternalLinkTypeBotStartInGroup]
  /// [InternalLinkTypeBotStart]
  /// [InternalLinkTypeBusinessChat]
  /// [InternalLinkTypeChangePhoneNumber]
  /// [InternalLinkTypeChatBoost]
  /// [InternalLinkTypeChatFolderInvite]
  /// [InternalLinkTypeChatFolderSettings]
  /// [InternalLinkTypeChatInvite]
  /// [InternalLinkTypeDefaultMessageAutoDeleteTimerSettings]
  /// [InternalLinkTypeEditProfileSettings]
  /// [InternalLinkTypeGame]
  /// [InternalLinkTypeInstantView]
  /// [InternalLinkTypeInvoice]
  /// [InternalLinkTypeLanguagePack]
  /// [InternalLinkTypeLanguageSettings]
  /// [InternalLinkTypeMessageDraft]
  /// [InternalLinkTypeMessage]
  /// [InternalLinkTypePassportDataRequest]
  /// [InternalLinkTypePhoneNumberConfirmation]
  /// [InternalLinkTypePremiumFeatures]
  /// [InternalLinkTypePremiumGiftCode]
  /// [InternalLinkTypePremiumGift]
  /// [InternalLinkTypePrivacyAndSecuritySettings]
  /// [InternalLinkTypeProxy]
  /// [InternalLinkTypePublicChat]
  /// [InternalLinkTypeQrCodeAuthentication]
  /// [InternalLinkTypeRestorePurchases]
  /// [InternalLinkTypeSettings]
  /// [InternalLinkTypeSideMenuBot]
  /// [InternalLinkTypeStickerSet]
  /// [InternalLinkTypeStory]
  /// [InternalLinkTypeThemeSettings]
  /// [InternalLinkTypeTheme]
  /// [InternalLinkTypeUnknownDeepLink]
  /// [InternalLinkTypeUnsupportedProxy]
  /// [InternalLinkTypeUserPhoneNumber]
  /// [InternalLinkTypeUserToken]
  /// [InternalLinkTypeVideoChat]
  /// [InternalLinkTypeWebApp]
  static InternalLinkType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InternalLinkTypeActiveSessions.constructor:
        return InternalLinkTypeActiveSessions.fromJson(json);
      case InternalLinkTypeAttachmentMenuBot.constructor:
        return InternalLinkTypeAttachmentMenuBot.fromJson(json);
      case InternalLinkTypeAuthenticationCode.constructor:
        return InternalLinkTypeAuthenticationCode.fromJson(json);
      case InternalLinkTypeBackground.constructor:
        return InternalLinkTypeBackground.fromJson(json);
      case InternalLinkTypeBotAddToChannel.constructor:
        return InternalLinkTypeBotAddToChannel.fromJson(json);
      case InternalLinkTypeBotStart.constructor:
        return InternalLinkTypeBotStart.fromJson(json);
      case InternalLinkTypeBotStartInGroup.constructor:
        return InternalLinkTypeBotStartInGroup.fromJson(json);
      case InternalLinkTypeBusinessChat.constructor:
        return InternalLinkTypeBusinessChat.fromJson(json);
      case InternalLinkTypeChangePhoneNumber.constructor:
        return InternalLinkTypeChangePhoneNumber.fromJson(json);
      case InternalLinkTypeChatBoost.constructor:
        return InternalLinkTypeChatBoost.fromJson(json);
      case InternalLinkTypeChatFolderInvite.constructor:
        return InternalLinkTypeChatFolderInvite.fromJson(json);
      case InternalLinkTypeChatFolderSettings.constructor:
        return InternalLinkTypeChatFolderSettings.fromJson(json);
      case InternalLinkTypeChatInvite.constructor:
        return InternalLinkTypeChatInvite.fromJson(json);
      case InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.constructor:
        return InternalLinkTypeDefaultMessageAutoDeleteTimerSettings.fromJson(
            json);
      case InternalLinkTypeEditProfileSettings.constructor:
        return InternalLinkTypeEditProfileSettings.fromJson(json);
      case InternalLinkTypeGame.constructor:
        return InternalLinkTypeGame.fromJson(json);
      case InternalLinkTypeInstantView.constructor:
        return InternalLinkTypeInstantView.fromJson(json);
      case InternalLinkTypeInvoice.constructor:
        return InternalLinkTypeInvoice.fromJson(json);
      case InternalLinkTypeLanguagePack.constructor:
        return InternalLinkTypeLanguagePack.fromJson(json);
      case InternalLinkTypeLanguageSettings.constructor:
        return InternalLinkTypeLanguageSettings.fromJson(json);
      case InternalLinkTypeMessage.constructor:
        return InternalLinkTypeMessage.fromJson(json);
      case InternalLinkTypeMessageDraft.constructor:
        return InternalLinkTypeMessageDraft.fromJson(json);
      case InternalLinkTypePassportDataRequest.constructor:
        return InternalLinkTypePassportDataRequest.fromJson(json);
      case InternalLinkTypePhoneNumberConfirmation.constructor:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);
      case InternalLinkTypePremiumFeatures.constructor:
        return InternalLinkTypePremiumFeatures.fromJson(json);
      case InternalLinkTypePremiumGift.constructor:
        return InternalLinkTypePremiumGift.fromJson(json);
      case InternalLinkTypePremiumGiftCode.constructor:
        return InternalLinkTypePremiumGiftCode.fromJson(json);
      case InternalLinkTypePrivacyAndSecuritySettings.constructor:
        return InternalLinkTypePrivacyAndSecuritySettings.fromJson(json);
      case InternalLinkTypeProxy.constructor:
        return InternalLinkTypeProxy.fromJson(json);
      case InternalLinkTypePublicChat.constructor:
        return InternalLinkTypePublicChat.fromJson(json);
      case InternalLinkTypeQrCodeAuthentication.constructor:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);
      case InternalLinkTypeRestorePurchases.constructor:
        return InternalLinkTypeRestorePurchases.fromJson(json);
      case InternalLinkTypeSettings.constructor:
        return InternalLinkTypeSettings.fromJson(json);
      case InternalLinkTypeSideMenuBot.constructor:
        return InternalLinkTypeSideMenuBot.fromJson(json);
      case InternalLinkTypeStickerSet.constructor:
        return InternalLinkTypeStickerSet.fromJson(json);
      case InternalLinkTypeStory.constructor:
        return InternalLinkTypeStory.fromJson(json);
      case InternalLinkTypeTheme.constructor:
        return InternalLinkTypeTheme.fromJson(json);
      case InternalLinkTypeThemeSettings.constructor:
        return InternalLinkTypeThemeSettings.fromJson(json);
      case InternalLinkTypeUnknownDeepLink.constructor:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);
      case InternalLinkTypeUnsupportedProxy.constructor:
        return InternalLinkTypeUnsupportedProxy.fromJson(json);
      case InternalLinkTypeUserPhoneNumber.constructor:
        return InternalLinkTypeUserPhoneNumber.fromJson(json);
      case InternalLinkTypeUserToken.constructor:
        return InternalLinkTypeUserToken.fromJson(json);
      case InternalLinkTypeVideoChat.constructor:
        return InternalLinkTypeVideoChat.fromJson(json);
      case InternalLinkTypeWebApp.constructor:
        return InternalLinkTypeWebApp.fromJson(json);
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
