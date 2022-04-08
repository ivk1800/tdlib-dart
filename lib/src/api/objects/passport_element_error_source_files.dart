import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The list of attached files contains an error. The error will be considered
/// resolved when the list of files changes
@immutable
class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  const PassportElementErrorSourceFiles();

  static const String constructor = 'passportElementErrorSourceFiles';

  static PassportElementErrorSourceFiles? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const PassportElementErrorSourceFiles();
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
