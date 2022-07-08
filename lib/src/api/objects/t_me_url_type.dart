import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of a URL linking to an internal Telegram entity
@immutable
abstract class TMeUrlType extends TdObject {
  const TMeUrlType();

  static const String constructor = 'tMeUrlType';

  /// Inherited by:
  /// [TMeUrlTypeChatInvite]
  /// [TMeUrlTypeStickerSet]
  /// [TMeUrlTypeSupergroup]
  /// [TMeUrlTypeUser]
  static TMeUrlType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case TMeUrlTypeChatInvite.constructor:
        return TMeUrlTypeChatInvite.fromJson(json);
      case TMeUrlTypeStickerSet.constructor:
        return TMeUrlTypeStickerSet.fromJson(json);
      case TMeUrlTypeSupergroup.constructor:
        return TMeUrlTypeSupergroup.fromJson(json);
      case TMeUrlTypeUser.constructor:
        return TMeUrlTypeUser.fromJson(json);
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
