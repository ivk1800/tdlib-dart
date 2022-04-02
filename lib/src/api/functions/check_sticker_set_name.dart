import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Checks whether a name can be used for a new sticker set
/// Returns [CheckStickerSetNameResult]
class CheckStickerSetName extends TdFunction {
  CheckStickerSetName({required this.name});

  /// [name] Name to be checked
  final String name;

  static const String CONSTRUCTOR = 'checkStickerSetName';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'name': this.name, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
