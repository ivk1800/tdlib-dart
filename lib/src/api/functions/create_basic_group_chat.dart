import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Returns an existing chat corresponding to a known basic group
/// Returns [Chat]
class CreateBasicGroupChat extends TdFunction {
  CreateBasicGroupChat({required this.basicGroupId, required this.force});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  /// [force] If true, the chat will be created without network request. In this
  /// case all information about the chat except its type, title and photo can
  /// be incorrect
  final bool force;

  static const String CONSTRUCTOR = 'createBasicGroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'basic_group_id': this.basicGroupId,
        'force': this.force,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
