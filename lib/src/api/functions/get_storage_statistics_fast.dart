import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Quickly returns approximate storage usage statistics. Can be called before
/// authorization
/// Returns [StorageStatisticsFast]
@immutable
class GetStorageStatisticsFast extends TdFunction {
  const GetStorageStatisticsFast();

  static const String constructor = 'getStorageStatisticsFast';

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
