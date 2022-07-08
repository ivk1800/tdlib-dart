import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns examples of premium stickers for demonstration purposes
/// Returns [Stickers]
@immutable
class GetPremiumStickers extends TdFunction {
  const GetPremiumStickers();

  static const String constructor = 'getPremiumStickers';

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
