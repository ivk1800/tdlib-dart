import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The name is occupied
class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  const CheckStickerSetNameResultNameOccupied();

  static const String CONSTRUCTOR = 'checkStickerSetNameResultNameOccupied';

  static CheckStickerSetNameResultNameOccupied? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckStickerSetNameResultNameOccupied();
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
