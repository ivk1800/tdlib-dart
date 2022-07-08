import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an existing chat corresponding to a known basic group
/// Returns [Chat]
@immutable
class CreateBasicGroupChat extends TdFunction {
  const CreateBasicGroupChat({
    required this.basicGroupId,
    required this.force,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  /// [force] Pass true to create the chat without a network request. In this
  /// case all information about the chat except its type, title and photo can
  /// be incorrect
  final bool force;

  static const String constructor = 'createBasicGroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'basic_group_id': basicGroupId,
        'force': force,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
