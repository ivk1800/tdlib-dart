import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A purchase through App Store
@immutable
class StoreTransactionAppStore extends StoreTransaction {
  const StoreTransactionAppStore({required this.receipt});

  /// [receipt] App Store receipt
  final String receipt;

  static const String constructor = 'storeTransactionAppStore';

  static StoreTransactionAppStore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StoreTransactionAppStore(receipt: json['receipt'] as String);
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'receipt': receipt,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
