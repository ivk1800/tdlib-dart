import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs server about an in-store purchase. For official applications only
/// Returns [Ok]
@immutable
class AssignStoreTransaction extends TdFunction {
  const AssignStoreTransaction({
    required this.transaction,
    required this.purpose,
  });

  /// [transaction] Information about the transaction
  final StoreTransaction transaction;

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  static const String constructor = 'assignStoreTransaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'transaction': transaction.toJson(),
    'purpose': purpose.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
