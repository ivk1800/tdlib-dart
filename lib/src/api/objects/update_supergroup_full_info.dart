import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some data in supergroupFullInfo has been changed
@immutable
class UpdateSupergroupFullInfo extends Update {
  const UpdateSupergroupFullInfo({
    required this.supergroupId,
    required this.supergroupFullInfo,
  });

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [supergroupFullInfo] New full information about the supergroup
  final SupergroupFullInfo supergroupFullInfo;

  static const String constructor = 'updateSupergroupFullInfo';

  static UpdateSupergroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSupergroupFullInfo(
      supergroupId: json['supergroup_id'] as int,
      supergroupFullInfo: SupergroupFullInfo.fromJson(
          json['supergroup_full_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'supergroup_full_info': supergroupFullInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
