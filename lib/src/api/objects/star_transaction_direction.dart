import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes direction of a transaction with Telegram Stars
@immutable
abstract class StarTransactionDirection extends TdObject {
  const StarTransactionDirection();

  static const String constructor = 'starTransactionDirection';

  /// Inherited by:
  /// [StarTransactionDirectionIncoming]
  /// [StarTransactionDirectionOutgoing]
  static StarTransactionDirection? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case StarTransactionDirectionIncoming.constructor:
        return StarTransactionDirectionIncoming.fromJson(json);
      case StarTransactionDirectionOutgoing.constructor:
        return StarTransactionDirectionOutgoing.fromJson(json);
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
