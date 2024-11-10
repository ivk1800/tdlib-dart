import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The media is a photo. The photo must be at most 10 MB in size. The photo's
/// width and height must not exceed 10000 in total. Width and height ratio
/// must be at most 20
@immutable
class InputPaidMediaTypePhoto extends InputPaidMediaType {
  const InputPaidMediaTypePhoto();

  static const String constructor = 'inputPaidMediaTypePhoto';

  static InputPaidMediaTypePhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const InputPaidMediaTypePhoto();
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
