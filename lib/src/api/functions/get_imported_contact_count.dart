import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns the total number of imported contacts
/// Returns [Count]
class GetImportedContactCount extends TdFunction {
  GetImportedContactCount();

  static const String CONSTRUCTOR = 'getImportedContactCount';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
