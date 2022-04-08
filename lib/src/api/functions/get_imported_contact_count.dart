import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns the total number of imported contacts
/// Returns [Count]
@immutable
class GetImportedContactCount extends TdFunction {
  const GetImportedContactCount();

  static const String constructor = 'getImportedContactCount';

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
