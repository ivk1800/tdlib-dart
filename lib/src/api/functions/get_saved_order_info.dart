import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns saved order information. Returns a 404 error if there is no saved
/// order information
/// Returns [OrderInfo]
@immutable
class GetSavedOrderInfo extends TdFunction {
  const GetSavedOrderInfo();

  static const String constructor = 'getSavedOrderInfo';

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
