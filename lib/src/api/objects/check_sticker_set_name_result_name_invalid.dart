import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The name is invalid
@immutable
class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameInvalid();

  static const String constructor = 'checkStickerSetNameResultNameInvalid';

  static CheckStickerSetNameResultNameInvalid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameInvalid();
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
