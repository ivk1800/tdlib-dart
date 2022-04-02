import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Deletes saved order info
/// Returns [Ok]
class DeleteSavedOrderInfo extends TdFunction {
  DeleteSavedOrderInfo();

  static const String CONSTRUCTOR = 'deleteSavedOrderInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
