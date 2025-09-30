import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes data channel for a group call
@immutable
abstract class GroupCallDataChannel extends TdObject {
  const GroupCallDataChannel();

  static const String constructor = 'groupCallDataChannel';

  /// Inherited by:
  /// [GroupCallDataChannelMain]
  /// [GroupCallDataChannelScreenSharing]
  static GroupCallDataChannel? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case GroupCallDataChannelMain.constructor:
        return GroupCallDataChannelMain.fromJson(json);
      case GroupCallDataChannelScreenSharing.constructor:
        return GroupCallDataChannelScreenSharing.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
