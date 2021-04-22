import '../tdapi.dart';

/// Describes a group call join response
abstract class GroupCallJoinResponse extends TdObject {
  const GroupCallJoinResponse();

  static const String CONSTRUCTOR = 'groupCallJoinResponse';

  /// Inherited by:
  /// [GroupCallJoinResponseWebrtc]
  /// [GroupCallJoinResponseStream]
  static GroupCallJoinResponse? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case GroupCallJoinResponseWebrtc.CONSTRUCTOR:
        return GroupCallJoinResponseWebrtc.fromJson(json);
      case GroupCallJoinResponseStream.CONSTRUCTOR:
        return GroupCallJoinResponseStream.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
