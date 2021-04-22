import '../tdapi.dart';

/// A simple object containing a vector of strings; for testing only
class TestVectorString extends TdObject {
  TestVectorString({required this.value});

  /// [value] Vector of strings
  final List<String> value;

  static const String CONSTRUCTOR = 'testVectorString';

  static TestVectorString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorString(
        value: List<String>.from(
            (json['value'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'value': value.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
