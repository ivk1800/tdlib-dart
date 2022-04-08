import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The call was ended because one of the parties hung up
@immutable
class CallDiscardReasonHungUp extends CallDiscardReason {
  const CallDiscardReasonHungUp();

  static const String constructor = 'callDiscardReasonHungUp';

  static CallDiscardReasonHungUp? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CallDiscardReasonHungUp();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
