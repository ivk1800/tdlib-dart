import '../tdapi.dart';

/// Returns the period of inactivity after which the account of the current
/// user will automatically be deleted
/// Returns [AccountTtl]
class GetAccountTtl extends TdFunction {
  GetAccountTtl();

  static const String CONSTRUCTOR = 'getAccountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
