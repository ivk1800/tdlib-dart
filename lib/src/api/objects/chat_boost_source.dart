import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes source of a chat boost
@immutable
abstract class ChatBoostSource extends TdObject {
  const ChatBoostSource();

  static const String constructor = 'chatBoostSource';

  /// Inherited by:
  /// [ChatBoostSourceGiftCode]
  /// [ChatBoostSourceGiveaway]
  /// [ChatBoostSourcePremium]
  static ChatBoostSource? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatBoostSourceGiftCode.constructor:
        return ChatBoostSourceGiftCode.fromJson(json);
      case ChatBoostSourceGiveaway.constructor:
        return ChatBoostSourceGiveaway.fromJson(json);
      case ChatBoostSourcePremium.constructor:
        return ChatBoostSourcePremium.fromJson(json);
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
