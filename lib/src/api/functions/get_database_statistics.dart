import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns database statistics
/// Returns [DatabaseStatistics]
class GetDatabaseStatistics extends TdFunction {
  GetDatabaseStatistics();

  static const String CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
