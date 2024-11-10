import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must add additional text details to the report
@immutable
class ReportStoryResultTextRequired extends ReportStoryResult {
  const ReportStoryResultTextRequired({
    required this.optionId,
    this.isOptional,
  });

  /// [optionId] Option identifier for the next reportStory request
  final String optionId;

  /// [isOptional] True, if the user can skip text adding
  final bool? isOptional;

  static const String constructor = 'reportStoryResultTextRequired';

  static ReportStoryResultTextRequired? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportStoryResultTextRequired(
      optionId: json['option_id'] as String,
      isOptional: json['is_optional'] as bool?,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'option_id': optionId,
        'is_optional': isOptional,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
