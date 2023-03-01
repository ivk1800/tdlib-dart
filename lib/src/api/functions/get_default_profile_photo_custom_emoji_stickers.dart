import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default list of custom emoji stickers for placing on a profile
/// photo
/// Returns [Stickers]
@immutable
class GetDefaultProfilePhotoCustomEmojiStickers extends TdFunction {
  const GetDefaultProfilePhotoCustomEmojiStickers();

  static const String constructor = 'getDefaultProfilePhotoCustomEmojiStickers';

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
