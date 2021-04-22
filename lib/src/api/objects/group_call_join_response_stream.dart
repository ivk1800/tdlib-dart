import '../tdapi.dart';

/// Describes that group call needs to be joined as a stream
class GroupCallJoinResponseStream extends GroupCallJoinResponse {
  const GroupCallJoinResponseStream();

  static const String CONSTRUCTOR = 'groupCallJoinResponseStream';

  static GroupCallJoinResponseStream? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const GroupCallJoinResponseStream();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
