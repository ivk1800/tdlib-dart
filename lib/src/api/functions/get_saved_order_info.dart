import '../tdapi.dart';

/// Returns saved order info, if any
/// Returns [OrderInfo]
class GetSavedOrderInfo extends TdFunction {
  GetSavedOrderInfo();

  static const String CONSTRUCTOR = 'getSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
