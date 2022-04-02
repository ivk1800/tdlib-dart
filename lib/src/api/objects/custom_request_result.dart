import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains the result of a custom request
class CustomRequestResult extends TdObject {
  CustomRequestResult({required this.result});

  /// [result] A JSON-serialized result
  final String result;

  static const String CONSTRUCTOR = 'customRequestResult';

  static CustomRequestResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CustomRequestResult(result: json['result']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'result': this.result, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
