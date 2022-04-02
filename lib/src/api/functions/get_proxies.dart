import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns list of proxies that are currently set up. Can be called before
/// authorization
/// Returns [Proxies]
class GetProxies extends TdFunction {
  GetProxies();

  static const String CONSTRUCTOR = 'getProxies';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
