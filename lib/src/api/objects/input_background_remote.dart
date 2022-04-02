import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A background from the server
class InputBackgroundRemote extends InputBackground {
  InputBackgroundRemote({required this.backgroundId});

  /// [backgroundId] The background identifier
  final int backgroundId;

  static const String CONSTRUCTOR = 'inputBackgroundRemote';

  static InputBackgroundRemote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputBackgroundRemote(
        backgroundId: int.tryParse(json['background_id']) ?? 0);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'background_id': this.backgroundId, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
