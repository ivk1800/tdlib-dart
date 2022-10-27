import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs server about a purchase through App Store. For official
/// applications only
/// Returns [Ok]
@immutable
class AssignAppStoreTransaction extends TdFunction {
  const AssignAppStoreTransaction({
    required this.receipt,
    required this.purpose,
  });

  /// [receipt] App Store receipt
  final String receipt;

  /// [purpose] Transaction purpose
  final StorePaymentPurpose purpose;

  static const String constructor = 'assignAppStoreTransaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'receipt': receipt,
        'purpose': purpose.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
