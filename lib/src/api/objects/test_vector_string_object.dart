import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a vector of objects that hold a string; for
/// testing only
@immutable
class TestVectorStringObject extends TdObject {
  const TestVectorStringObject({
    required this.value,
  });

  /// [value] Vector of objects
  final List<TestString> value;

  static const String constructor = 'testVectorStringObject';

  static TestVectorStringObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestVectorStringObject(
      value: List<TestString>.from((json['value'] ?? [])
          .map((item) => TestString.fromJson(item))
          .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
