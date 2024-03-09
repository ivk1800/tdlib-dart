import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Send away messages always
@immutable
class BusinessAwayMessageScheduleAlways extends BusinessAwayMessageSchedule {
  const BusinessAwayMessageScheduleAlways();

  static const String constructor = 'businessAwayMessageScheduleAlways';

  static BusinessAwayMessageScheduleAlways? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const BusinessAwayMessageScheduleAlways();
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
