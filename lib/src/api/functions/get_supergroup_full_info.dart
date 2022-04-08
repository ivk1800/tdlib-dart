import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns full information about a supergroup or a channel by its
/// identifier, cached for up to 1 minute
/// Returns [SupergroupFullInfo]
@immutable
class GetSupergroupFullInfo extends TdFunction {
  const GetSupergroupFullInfo({
    required this.supergroupId,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  static const String constructor = 'getSupergroupFullInfo';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
