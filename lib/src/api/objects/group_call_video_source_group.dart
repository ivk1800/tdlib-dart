import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes a group of video synchronization source identifiers
@immutable
class GroupCallVideoSourceGroup extends TdObject {
  const GroupCallVideoSourceGroup({
    required this.semantics,
    required this.sourceIds,
  });

  /// [semantics] The semantics of sources, one of "SIM" or "FID"
  final String semantics;

  /// [sourceIds] The list of synchronization source identifiers
  final List<int> sourceIds;

  static const String constructor = 'groupCallVideoSourceGroup';

  static GroupCallVideoSourceGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallVideoSourceGroup(
      semantics: json['semantics'] as String,
      sourceIds: List<int>.from(
          ((json['source_ids'] as List<dynamic>?) ?? <dynamic>[])
              .map((item) => item)
              .toList()),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'semantics': semantics,
        'source_ids': sourceIds.map((item) => item).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
