import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns gifts that can be sent to other users
/// Returns [Gifts]
@immutable
class GetAvailableGifts extends TdFunction {
  const GetAvailableGifts();

  static const String constructor = 'getAvailableGifts';

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
