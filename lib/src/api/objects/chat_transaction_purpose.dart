import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes purpose of a transaction with a supergroup or a channel
@immutable
abstract class ChatTransactionPurpose extends TdObject {
  const ChatTransactionPurpose();

  static const String constructor = 'chatTransactionPurpose';

  /// Inherited by:
  /// [ChatTransactionPurposeGiveaway]
  /// [ChatTransactionPurposeJoin]
  /// [ChatTransactionPurposePaidMedia]
  /// [ChatTransactionPurposeReaction]
  static ChatTransactionPurpose? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case ChatTransactionPurposeGiveaway.constructor:
        return ChatTransactionPurposeGiveaway.fromJson(json);
      case ChatTransactionPurposeJoin.constructor:
        return ChatTransactionPurposeJoin.fromJson(json);
      case ChatTransactionPurposePaidMedia.constructor:
        return ChatTransactionPurposePaidMedia.fromJson(json);
      case ChatTransactionPurposeReaction.constructor:
        return ChatTransactionPurposeReaction.fromJson(json);
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
