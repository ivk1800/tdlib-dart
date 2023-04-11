import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A poll was updated; for bots only
@immutable
class UpdatePoll extends Update {
  const UpdatePoll({
    required this.poll,
  });

  /// [poll] New data about the poll
  final Poll poll;

  static const String constructor = 'updatePoll';

  static UpdatePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePoll(
      poll: Poll.fromJson(json['poll'] as Map<String, dynamic>?)!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'poll': poll.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
