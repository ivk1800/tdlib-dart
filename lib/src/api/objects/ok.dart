import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An object of this type is returned on a successful function call for
/// certain functions
@immutable
class Ok extends TdObject {
  const Ok();

  static const String constructor = 'ok';

  static Ok? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Ok();
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
