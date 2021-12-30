import '../tdapi.dart';

/// Some data in supergroupFullInfo has been changed
class UpdateSupergroupFullInfo extends Update {
  UpdateSupergroupFullInfo(
      {required this.supergroupId, required this.supergroupFullInfo});

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [supergroupFullInfo] New full information about the supergroup
  final SupergroupFullInfo supergroupFullInfo;

  static const String CONSTRUCTOR = 'updateSupergroupFullInfo';

  static UpdateSupergroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateSupergroupFullInfo(
        supergroupId: json['supergroup_id'],
        supergroupFullInfo:
            SupergroupFullInfo.fromJson(json['supergroup_full_info'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'supergroup_full_info': this.supergroupFullInfo.toJson(),
        '@type': CONSTRUCTOR
      };
}
