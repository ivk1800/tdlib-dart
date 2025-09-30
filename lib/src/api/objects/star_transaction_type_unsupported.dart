import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The transaction is a transaction of an unsupported type
@immutable
class StarTransactionTypeUnsupported extends StarTransactionType {
  const StarTransactionTypeUnsupported();

  static const String constructor = 'starTransactionTypeUnsupported';

  static StarTransactionTypeUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const StarTransactionTypeUnsupported();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
