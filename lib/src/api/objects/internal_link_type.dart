import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes an internal https://t.me or tg: link, which must be processed by
/// the app in a special way
@immutable
abstract class InternalLinkType extends TdObject {
  const InternalLinkType();

  static const String constructor = 'internalLinkType';

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

    switch (json['@type']) {
      case InternalLinkTypeActiveSessions.constructor:
        return InternalLinkTypeActiveSessions.fromJson(json);
      case InternalLinkTypeAuthenticationCode.constructor:
        return InternalLinkTypeAuthenticationCode.fromJson(json);
      case InternalLinkTypeBackground.constructor:
        return InternalLinkTypeBackground.fromJson(json);
      case InternalLinkTypeBotStart.constructor:
        return InternalLinkTypeBotStart.fromJson(json);
      case InternalLinkTypeBotStartInGroup.constructor:
        return InternalLinkTypeBotStartInGroup.fromJson(json);
      case InternalLinkTypeChangePhoneNumber.constructor:
        return InternalLinkTypeChangePhoneNumber.fromJson(json);
      case InternalLinkTypeChatInvite.constructor:
        return InternalLinkTypeChatInvite.fromJson(json);
      case InternalLinkTypeFilterSettings.constructor:
        return InternalLinkTypeFilterSettings.fromJson(json);
      case InternalLinkTypeGame.constructor:
        return InternalLinkTypeGame.fromJson(json);
      case InternalLinkTypeLanguagePack.constructor:
        return InternalLinkTypeLanguagePack.fromJson(json);
      case InternalLinkTypeMessage.constructor:
        return InternalLinkTypeMessage.fromJson(json);
      case InternalLinkTypeMessageDraft.constructor:
        return InternalLinkTypeMessageDraft.fromJson(json);
      case InternalLinkTypePassportDataRequest.constructor:
        return InternalLinkTypePassportDataRequest.fromJson(json);
      case InternalLinkTypePhoneNumberConfirmation.constructor:
        return InternalLinkTypePhoneNumberConfirmation.fromJson(json);
      case InternalLinkTypeProxy.constructor:
        return InternalLinkTypeProxy.fromJson(json);
      case InternalLinkTypePublicChat.constructor:
        return InternalLinkTypePublicChat.fromJson(json);
      case InternalLinkTypeQrCodeAuthentication.constructor:
        return InternalLinkTypeQrCodeAuthentication.fromJson(json);
      case InternalLinkTypeSettings.constructor:
        return InternalLinkTypeSettings.fromJson(json);
      case InternalLinkTypeStickerSet.constructor:
        return InternalLinkTypeStickerSet.fromJson(json);
      case InternalLinkTypeTheme.constructor:
        return InternalLinkTypeTheme.fromJson(json);
      case InternalLinkTypeThemeSettings.constructor:
        return InternalLinkTypeThemeSettings.fromJson(json);
      case InternalLinkTypeUnknownDeepLink.constructor:
        return InternalLinkTypeUnknownDeepLink.fromJson(json);
      case InternalLinkTypeUnsupportedProxy.constructor:
        return InternalLinkTypeUnsupportedProxy.fromJson(json);
      case InternalLinkTypeVideoChat.constructor:
        return InternalLinkTypeVideoChat.fromJson(json);
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
