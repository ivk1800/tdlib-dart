import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The verification state of an encrypted group call has changed; for group
/// calls not bound to a chat only
@immutable
class UpdateGroupCallVerificationState extends Update {
  const UpdateGroupCallVerificationState({
    required this.groupCallId,
    required this.generation,
    required this.emojis,
  });

  /// [groupCallId] Identifier of the group call
  final int groupCallId;

  /// [generation] The call state generation to which the emoji corresponds. If
  /// generation is different for two users, then their emoji may be also
  /// different
  final int generation;

  /// [emojis] Group call state fingerprint represented as 4 emoji; may be empty
  /// if the state isn't verified yet
  final List<String> emojis;

  static const String constructor = 'updateGroupCallVerificationState';

  static UpdateGroupCallVerificationState? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return UpdateGroupCallVerificationState(
      groupCallId: json['group_call_id'] as int,
      generation: json['generation'] as int,
      emojis: List<String>.from(
        ((json['emojis'] as List<dynamic>?) ?? <dynamic>[])
            .map((item) => item)
            .toList(),
      ),
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'group_call_id': groupCallId,
    'generation': generation,
    'emojis': emojis.map((item) => item).toList(),
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
