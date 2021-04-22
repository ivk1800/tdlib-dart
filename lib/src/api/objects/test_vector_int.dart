import '../tdapi.dart';

/// A simple object containing a vector of numbers; for testing only
class TestVectorInt extends TdObject {
  TestVectorInt({required this.value});

  /// [value] Vector of numbers
  final List<int> value;

  static const String CONSTRUCTOR = 'testVectorInt';

  static TestVectorInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorInt(
        value:
            List<int>.from((json['value'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'value': value.map((item) => item).toList(), '@type': CONSTRUCTOR};
}
