import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns name of a sticker set by its identifier
/// Returns [Text]
@immutable
class GetStickerSetName extends TdFunction {
  const GetStickerSetName({
    required this.setId,
  });

  /// [setId] Identifier of the sticker set
  final int setId;

  static const String constructor = 'getStickerSetName';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'set_id': setId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
