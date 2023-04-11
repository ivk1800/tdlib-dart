import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a number; for testing only
@immutable
class TestInt extends TdObject {
  const TestInt({
    required this.value,
  });

  /// [value] Number
  final int value;

  static const String constructor = 'testInt';

  static TestInt? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestInt(
      value: json['value'] as int,
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
