import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The name can be set
@immutable
class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultOk();

  static const String constructor = 'checkStickerSetNameResultOk';

  static CheckStickerSetNameResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultOk();
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
