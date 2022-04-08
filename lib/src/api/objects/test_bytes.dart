import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A simple object containing a sequence of bytes; for testing only
@immutable
class TestBytes extends TdObject {
  const TestBytes({
    required this.value,
  });

  /// [value] Bytes
  final String value;

  static const String constructor = 'testBytes';

  static TestBytes? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TestBytes(
      value: json['value'],
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
