import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Returns an existing chat corresponding to a known supergroup or channel
/// Returns [Chat]
@immutable
class CreateSupergroupChat extends TdFunction {
  const CreateSupergroupChat({
    required this.supergroupId,
    required this.force,
  });

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// [force] If true, the chat will be created without network request. In this
  /// case all information about the chat except its type, title and photo can
  /// be incorrect
  final bool force;

  static const String constructor = 'createSupergroupChat';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'supergroup_id': supergroupId,
        'force': force,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
