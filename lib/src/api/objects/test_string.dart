import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a string; for testing only
@immutable
class TestString extends TdObject {
  const TestString({
    required this.value,
  });

  /// [value] String
  final String value;

  static const String constructor = 'testString';

  static TestString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestString(
      value: json['value'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'value': value,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
