import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some data in basicGroupFullInfo has been changed
@immutable
class UpdateBasicGroupFullInfo extends Update {
  const UpdateBasicGroupFullInfo({
    required this.basicGroupId,
    required this.basicGroupFullInfo,
  });

  /// [basicGroupId] Identifier of a basic group
  final int basicGroupId;

  /// [basicGroupFullInfo] New full information about the group
  final BasicGroupFullInfo basicGroupFullInfo;

  static const String constructor = 'updateBasicGroupFullInfo';

  static UpdateBasicGroupFullInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBasicGroupFullInfo(
      basicGroupId: json['basic_group_id'] as int,
      basicGroupFullInfo: BasicGroupFullInfo.fromJson(
          json['basic_group_full_info'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'basic_group_id': basicGroupId,
        'basic_group_full_info': basicGroupFullInfo.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
