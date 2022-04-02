import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Changes the period of inactivity after which the account of the current
/// user will automatically be deleted
/// Returns [Ok]
class SetAccountTtl extends TdFunction {
  SetAccountTtl({required this.ttl});

  /// [ttl] New account TTL
  final AccountTtl ttl;

  static const String CONSTRUCTOR = 'setAccountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'ttl': this.ttl.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
