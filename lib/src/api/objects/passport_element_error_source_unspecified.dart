import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The element contains an error in an unspecified place. The error will be
/// considered resolved when new data is added
@immutable
class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  const PassportElementErrorSourceUnspecified();

  static const String constructor = 'passportElementErrorSourceUnspecified';

  static PassportElementErrorSourceUnspecified? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceUnspecified();
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
