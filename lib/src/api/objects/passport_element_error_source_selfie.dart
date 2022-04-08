import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The selfie with the document contains an error. The error will be
/// considered resolved when the file with the selfie changes
@immutable
class PassportElementErrorSourceSelfie extends PassportElementErrorSource {
  const PassportElementErrorSourceSelfie();

  static const String constructor = 'passportElementErrorSourceSelfie';

  static PassportElementErrorSourceSelfie? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceSelfie();
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
