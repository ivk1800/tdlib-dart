import '../tdapi.dart';

/// Returns database statistics
/// Returns [DatabaseStatistics]
class GetDatabaseStatistics extends TdFunction {
  GetDatabaseStatistics();

  static const String CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
