import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Some data of a basic group has changed. This update is guaranteed to come
/// before the basic group identifier is returned to the application
class UpdateBasicGroup extends Update {
  UpdateBasicGroup({required this.basicGroup});

  /// [basicGroup] New data about the group
  final BasicGroup basicGroup;

  static const String CONSTRUCTOR = 'updateBasicGroup';

  static UpdateBasicGroup? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateBasicGroup(
        basicGroup: BasicGroup.fromJson(json['basic_group'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'basic_group': this.basicGroup.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
