import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The list of supported dice emojis has changed
class UpdateDiceEmojis extends Update {
  UpdateDiceEmojis({required this.emojis});

  /// [emojis] The new list of supported dice emojis
  final List<String> emojis;

  static const String CONSTRUCTOR = 'updateDiceEmojis';

  static UpdateDiceEmojis? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateDiceEmojis(
        emojis: List<String>.from(
            (json['emojis'] ?? []).map((item) => item).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'emojis': emojis.map((item) => item).toList(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
