import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
