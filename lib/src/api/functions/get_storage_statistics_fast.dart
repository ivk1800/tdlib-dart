import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Quickly returns approximate storage usage statistics. Can be called before
/// authorization
/// Returns [StorageStatisticsFast]
class GetStorageStatisticsFast extends TdFunction {
  GetStorageStatisticsFast();

  static const String CONSTRUCTOR = 'getStorageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
