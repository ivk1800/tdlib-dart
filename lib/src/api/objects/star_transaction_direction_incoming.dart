import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is incoming and increases the number of owned Telegram
/// Stars
@immutable
class StarTransactionDirectionIncoming extends StarTransactionDirection {
  const StarTransactionDirectionIncoming();

  static const String constructor = 'starTransactionDirectionIncoming';

  static StarTransactionDirectionIncoming? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionDirectionIncoming();
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
