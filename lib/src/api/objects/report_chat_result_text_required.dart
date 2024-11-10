import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user must add additional text details to the report
@immutable
class ReportChatResultTextRequired extends ReportChatResult {
  const ReportChatResultTextRequired({
    required this.optionId,
    this.isOptional,
  });

  /// [optionId] Option identifier for the next reportChat request
  final String optionId;

  /// [isOptional] True, if the user can skip text adding
  final bool? isOptional;

  static const String constructor = 'reportChatResultTextRequired';

  static ReportChatResultTextRequired? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportChatResultTextRequired(
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
