import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The reverse side of the document contains an error. The error will be
/// considered resolved when the file with the reverse side changes
@immutable
class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {
  const PassportElementErrorSourceReverseSide();

  static const String constructor = 'passportElementErrorSourceReverseSide';

  static PassportElementErrorSourceReverseSide? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceReverseSide();
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
