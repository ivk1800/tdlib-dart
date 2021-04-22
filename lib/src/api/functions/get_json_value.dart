import '../tdapi.dart';

/// Converts a JSON-serialized string to corresponding JsonValue object. Can
/// be called synchronously
/// Returns [JsonValue]
class GetJsonValue extends TdFunction {
  GetJsonValue({required this.json});

  /// [json] The JSON-serialized string
  final String json;

  static const String CONSTRUCTOR = 'getJsonValue';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'json': this.json, '@type': CONSTRUCTOR};
}
