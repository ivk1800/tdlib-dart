import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns application config, provided by the server. Can be called before
/// authorization
/// Returns [JsonValue]
@immutable
class GetApplicationConfig extends TdFunction {
  const GetApplicationConfig();

  static const String constructor = 'getApplicationConfig';

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
