import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether a name can be used for a new sticker
/// set
@immutable
abstract class CheckStickerSetNameResult extends TdObject {
  const CheckStickerSetNameResult();

  static const String constructor = 'checkStickerSetNameResult';

  /// Inherited by:
  /// [CheckStickerSetNameResultNameInvalid]
  /// [CheckStickerSetNameResultNameOccupied]
  /// [CheckStickerSetNameResultOk]
  static CheckStickerSetNameResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CheckStickerSetNameResultNameInvalid.constructor:
        return CheckStickerSetNameResultNameInvalid.fromJson(json);
      case CheckStickerSetNameResultNameOccupied.constructor:
        return CheckStickerSetNameResultNameOccupied.fromJson(json);
      case CheckStickerSetNameResultOk.constructor:
        return CheckStickerSetNameResultOk.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
