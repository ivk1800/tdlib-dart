import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents content of a gift received by a user or a channel chat
@immutable
abstract class SentGift extends TdObject {
  const SentGift();

  static const String constructor = 'sentGift';

  /// Inherited by:
  /// [SentGiftRegular]
  /// [SentGiftUpgraded]
  static SentGift? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SentGiftRegular.constructor:
        return SentGiftRegular.fromJson(json);
      case SentGiftUpgraded.constructor:
        return SentGiftUpgraded.fromJson(json);
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
