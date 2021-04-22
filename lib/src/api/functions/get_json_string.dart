import '../tdapi.dart';

/// Converts a JsonValue object to corresponding JSON-serialized string. Can
/// be called synchronously
/// Returns [Text]
class GetJsonString extends TdFunction {
  GetJsonString({required this.jsonValue});

  /// [jsonValue] The JsonValue object
  final JsonValue jsonValue;

  static const String CONSTRUCTOR = 'getJsonString';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'json_value': this.jsonValue.toJson(), '@type': CONSTRUCTOR};
}
