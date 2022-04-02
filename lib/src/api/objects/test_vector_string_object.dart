import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A simple object containing a vector of objects that hold a string; for
/// testing only
class TestVectorStringObject extends TdObject {
  TestVectorStringObject({required this.value});

  /// [value] Vector of objects
  final List<TestString> value;

  static const String CONSTRUCTOR = 'testVectorStringObject';

  static TestVectorStringObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorStringObject(
        value: List<TestString>.from((json['value'] ?? [])
            .map((item) => TestString.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'value': value.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
