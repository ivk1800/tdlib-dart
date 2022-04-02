import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A poll was updated; for bots only
class UpdatePoll extends Update {
  UpdatePoll({required this.poll});

  /// [poll] New data about the poll
  final Poll poll;

  static const String CONSTRUCTOR = 'updatePoll';

  static UpdatePoll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdatePoll(poll: Poll.fromJson(json['poll'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'poll': this.poll.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
