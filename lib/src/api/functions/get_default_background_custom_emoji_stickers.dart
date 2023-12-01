import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns default list of custom emoji stickers for reply background
/// Returns [Stickers]
@immutable
class GetDefaultBackgroundCustomEmojiStickers extends TdFunction {
  const GetDefaultBackgroundCustomEmojiStickers();

  static const String constructor = 'getDefaultBackgroundCustomEmojiStickers';

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
