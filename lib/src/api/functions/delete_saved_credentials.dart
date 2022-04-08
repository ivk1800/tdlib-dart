import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Deletes saved credentials for all payment provider bots
/// Returns [Ok]
@immutable
class DeleteSavedCredentials extends TdFunction {
  const DeleteSavedCredentials();

  static const String constructor = 'deleteSavedCredentials';

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
