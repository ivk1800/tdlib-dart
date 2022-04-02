import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An object of this type is returned on a successful function call for
/// certain functions
class Ok extends TdObject {
  const Ok();

  static const String CONSTRUCTOR = 'ok';

  static Ok? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Ok();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
