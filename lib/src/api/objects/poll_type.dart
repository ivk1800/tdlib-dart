import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the type of a poll
@immutable
abstract class PollType extends TdObject {
  const PollType();

  static const String constructor = 'pollType';

  /// Inherited by:
  /// [PollTypeQuiz]
  /// [PollTypeRegular]
  static PollType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case PollTypeQuiz.constructor:
        return PollTypeQuiz.fromJson(json);
      case PollTypeRegular.constructor:
        return PollTypeRegular.fromJson(json);
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
