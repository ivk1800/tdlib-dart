import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes the type of a URL linking to an internal Telegram entity
abstract class TMeUrlType extends TdObject {
  const TMeUrlType();

  static const String CONSTRUCTOR = 'tMeUrlType';

  /// Inherited by:
  /// [TMeUrlTypeUser]
  /// [TMeUrlTypeSupergroup]
  /// [TMeUrlTypeChatInvite]
  /// [TMeUrlTypeStickerSet]
  static TMeUrlType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case TMeUrlTypeUser.CONSTRUCTOR:
        return TMeUrlTypeUser.fromJson(json);
      case TMeUrlTypeSupergroup.CONSTRUCTOR:
        return TMeUrlTypeSupergroup.fromJson(json);
      case TMeUrlTypeChatInvite.CONSTRUCTOR:
        return TMeUrlTypeChatInvite.fromJson(json);
      case TMeUrlTypeStickerSet.CONSTRUCTOR:
        return TMeUrlTypeStickerSet.fromJson(json);
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
