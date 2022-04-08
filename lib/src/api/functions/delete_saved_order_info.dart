import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes saved order info
/// Returns [Ok]
@immutable
class DeleteSavedOrderInfo extends TdFunction {
  const DeleteSavedOrderInfo();

  static const String constructor = 'deleteSavedOrderInfo';

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
