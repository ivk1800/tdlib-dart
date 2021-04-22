import '../tdapi.dart';

/// Returns application config, provided by the server. Can be called before
/// authorization
/// Returns [JsonValue]
class GetApplicationConfig extends TdFunction {
  GetApplicationConfig();

  static const String CONSTRUCTOR = 'getApplicationConfig';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
