import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a null JSON value
@immutable
class JsonValueNull extends JsonValue {
  const JsonValueNull();

  static const String constructor = 'jsonValueNull';

  static JsonValueNull? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const JsonValueNull();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
