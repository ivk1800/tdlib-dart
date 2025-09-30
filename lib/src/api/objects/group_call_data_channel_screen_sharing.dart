import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The data channel for screen sharing
@immutable
class GroupCallDataChannelScreenSharing extends GroupCallDataChannel {
  const GroupCallDataChannelScreenSharing();

  static const String constructor = 'groupCallDataChannelScreenSharing';

  static GroupCallDataChannelScreenSharing? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const GroupCallDataChannelScreenSharing();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
