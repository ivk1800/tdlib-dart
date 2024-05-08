import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns greeting stickers from regular sticker sets that can be used for
/// the start page of other users
/// Returns [Stickers]
@immutable
class GetGreetingStickers extends TdFunction {
  const GetGreetingStickers();

  static const String constructor = 'getGreetingStickers';

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
