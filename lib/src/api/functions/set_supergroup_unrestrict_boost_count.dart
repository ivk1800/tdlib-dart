import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes the number of times the supergroup must be boosted by a user to
/// ignore slow mode and chat permission restrictions; requires
/// can_restrict_members administrator right
/// Returns [Ok]
@immutable
class SetSupergroupUnrestrictBoostCount extends TdFunction {
  const SetSupergroupUnrestrictBoostCount({
    required this.supergroupId,
    required this.unrestrictBoostCount,
  });

  /// [supergroupId] Identifier of the supergroup
  final int supergroupId;

  /// [unrestrictBoostCount] New value of the unrestrict_boost_count supergroup
  /// setting; 0-8. Use 0 to remove the setting
  final int unrestrictBoostCount;

  static const String constructor = 'setSupergroupUnrestrictBoostCount';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'unrestrict_boost_count': unrestrictBoostCount,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
