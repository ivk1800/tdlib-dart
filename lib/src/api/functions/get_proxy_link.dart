import '../tdapi.dart';

/// Returns an HTTPS link, which can be used to add a proxy. Available only
/// for SOCKS5 and MTProto proxies. Can be called before authorization
/// Returns [HttpUrl]
class GetProxyLink extends TdFunction {
  GetProxyLink({required this.proxyId});

  /// [proxyId] Proxy identifier
  final int proxyId;

  static const String CONSTRUCTOR = 'getProxyLink';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'proxy_id': this.proxyId, '@type': CONSTRUCTOR};
}
