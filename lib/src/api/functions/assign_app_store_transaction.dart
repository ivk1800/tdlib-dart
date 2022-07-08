import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Informs server about a Telegram Premium purchase through App Store. For
/// official applications only
/// Returns [Ok]
@immutable
class AssignAppStoreTransaction extends TdFunction {
  const AssignAppStoreTransaction({
    required this.receipt,
    required this.isRestore,
  });

  /// [receipt] App Store receipt
  final String receipt;

  /// [isRestore] Pass true if this is a restore of a Telegram Premium purchase
  final bool isRestore;

  static const String constructor = 'assignAppStoreTransaction';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'receipt': receipt,
        'is_restore': isRestore,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
