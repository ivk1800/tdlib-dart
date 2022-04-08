import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns database statistics
/// Returns [DatabaseStatistics]
@immutable
class GetDatabaseStatistics extends TdFunction {
  const GetDatabaseStatistics();

  static const String constructor = 'getDatabaseStatistics';

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
