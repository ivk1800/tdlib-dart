import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some data of a basic group has changed. This update is guaranteed to come
/// before the basic group identifier is returned to the application
@immutable
class UpdateBasicGroup extends Update {
  const UpdateBasicGroup({
    required this.basicGroup,
  });

  /// [basicGroup] New data about the group
  final BasicGroup basicGroup;

  static const String constructor = 'updateBasicGroup';

  static UpdateBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBasicGroup(
      basicGroup: BasicGroup.fromJson(json['basic_group'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'basic_group': basicGroup.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
