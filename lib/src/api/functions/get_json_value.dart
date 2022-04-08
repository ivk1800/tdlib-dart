import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Converts a JSON-serialized string to corresponding JsonValue object. Can
/// be called synchronously
/// Returns [JsonValue]
@immutable
class GetJsonValue extends TdFunction {
  const GetJsonValue({
    required this.json,
  });

  /// [json] The JSON-serialized string
  final String json;

  static const String constructor = 'getJsonValue';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'json': json,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
