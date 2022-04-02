import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns saved order info, if any
/// Returns [OrderInfo]
class GetSavedOrderInfo extends TdFunction {
  GetSavedOrderInfo();

  static const String CONSTRUCTOR = 'getSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
