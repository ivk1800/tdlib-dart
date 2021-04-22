import '../tdapi.dart';

/// Contains data needed to join the group call with WebRTC
class GroupCallJoinResponseWebrtc extends GroupCallJoinResponse {
  GroupCallJoinResponseWebrtc(
      {required this.payload, required this.candidates});

  /// [payload] Group call payload to pass to tgcalls
  final GroupCallPayload payload;

  /// [candidates] Join response candidates to pass to tgcalls
  final List<GroupCallJoinResponseCandidate> candidates;

  static const String CONSTRUCTOR = 'groupCallJoinResponseWebrtc';

  static GroupCallJoinResponseWebrtc? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallJoinResponseWebrtc(
        payload: GroupCallPayload.fromJson(json['payload'])!,
        candidates: List<GroupCallJoinResponseCandidate>.from(
            (json['candidates'] ?? [])
                .map((item) => GroupCallJoinResponseCandidate.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'payload': this.payload.toJson(),
        'candidates': candidates.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };
}
