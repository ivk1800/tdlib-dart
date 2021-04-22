import '../tdapi.dart';

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
}
