import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns full information about a basic group by its identifier
/// Returns [BasicGroupFullInfo]
@immutable
class GetBasicGroupFullInfo extends TdFunction {
  const GetBasicGroupFullInfo({
    required this.basicGroupId,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  static const String constructor = 'getBasicGroupFullInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'basic_group_id': basicGroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
