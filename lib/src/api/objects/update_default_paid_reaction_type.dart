import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The type of default paid reaction has changed
@immutable
class UpdateDefaultPaidReactionType extends Update {
  const UpdateDefaultPaidReactionType({required this.type});

  /// [type] The new type of the default paid reaction
  final PaidReactionType type;

  static const String constructor = 'updateDefaultPaidReactionType';

  static UpdateDefaultPaidReactionType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDefaultPaidReactionType(
      type: PaidReactionType.fromJson(json['type'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'type': type.toJson(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
