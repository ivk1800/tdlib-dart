import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an HTTPS link, which can be used to add a proxy. Available only
/// for SOCKS5 and MTProto proxies. Can be called before authorization
/// Returns [HttpUrl]
@immutable
class GetProxyLink extends TdFunction {
  const GetProxyLink({
    required this.proxyId,
  });

  /// [proxyId] Proxy identifier
  final int proxyId;

  static const String constructor = 'getProxyLink';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'proxy_id': proxyId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
