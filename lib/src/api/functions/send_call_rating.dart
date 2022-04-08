import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Sends a call rating
/// Returns [Ok]
@immutable
class SendCallRating extends TdFunction {
  const SendCallRating({
    required this.callId,
    required this.rating,
    this.comment,
    required this.problems,
  });

  /// [callId] Call identifier
  final int callId;

  /// [rating] Call rating; 1-5
  final int rating;

  /// [comment] An optional user comment if the rating is less than 5
  final String? comment;

  /// [problems] List of the exact types of problems with the call, specified by
  /// the user
  final List<CallProblem> problems;

  static const String constructor = 'sendCallRating';

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'call_id': callId,
        'rating': rating,
        'comment': comment,
        'problems': problems.map((item) => item.toJson()).toList(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
