import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A simple object containing a string; for testing only
class TestString extends TdObject {
  TestString({required this.value});

  /// [value] String
  final String value;

  static const String CONSTRUCTOR = 'testString';

  static TestString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestString(value: json['value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
