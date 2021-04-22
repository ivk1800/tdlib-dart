import '../tdapi.dart';

/// Describes the type of a poll
abstract class PollType extends TdObject {
  const PollType();

  static const String CONSTRUCTOR = 'pollType';

  /// Inherited by:
  /// [PollTypeRegular]
  /// [PollTypeQuiz]
  static PollType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case PollTypeRegular.CONSTRUCTOR:
        return PollTypeRegular.fromJson(json);
      case PollTypeQuiz.CONSTRUCTOR:
        return PollTypeQuiz.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
