import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a payload of a callback query
abstract class CallbackQueryPayload extends TdObject {
  const CallbackQueryPayload();

  static const String CONSTRUCTOR = 'callbackQueryPayload';

  /// Inherited by:
  /// [CallbackQueryPayloadData]
  /// [CallbackQueryPayloadDataWithPassword]
  /// [CallbackQueryPayloadGame]
  static CallbackQueryPayload? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CallbackQueryPayloadData.CONSTRUCTOR:
        return CallbackQueryPayloadData.fromJson(json);
      case CallbackQueryPayloadDataWithPassword.CONSTRUCTOR:
        return CallbackQueryPayloadDataWithPassword.fromJson(json);
      case CallbackQueryPayloadGame.CONSTRUCTOR:
        return CallbackQueryPayloadGame.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
