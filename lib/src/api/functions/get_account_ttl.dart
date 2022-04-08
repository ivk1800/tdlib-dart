import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the period of inactivity after which the account of the current
/// user will automatically be deleted
/// Returns [AccountTtl]
@immutable
class GetAccountTtl extends TdFunction {
  const GetAccountTtl();

  static const String constructor = 'getAccountTtl';

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
