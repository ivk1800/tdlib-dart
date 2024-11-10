import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is outgoing and decreases the number of owned Telegram
/// Stars
@immutable
class StarTransactionDirectionOutgoing extends StarTransactionDirection {
  const StarTransactionDirectionOutgoing();

  static const String constructor = 'starTransactionDirectionOutgoing';

  static StarTransactionDirectionOutgoing? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionDirectionOutgoing();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
