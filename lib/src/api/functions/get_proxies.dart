import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the list of proxies that are currently set up. Can be called
/// before authorization
/// Returns [Proxies]
@immutable
class GetProxies extends TdFunction {
  const GetProxies();

  static const String constructor = 'getProxies';

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
