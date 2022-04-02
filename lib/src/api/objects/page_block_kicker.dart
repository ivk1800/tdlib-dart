import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A kicker
class PageBlockKicker extends PageBlock {
  PageBlockKicker({required this.kicker});

  /// [kicker] Kicker
  final RichText kicker;

  static const String CONSTRUCTOR = 'pageBlockKicker';

  static PageBlockKicker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockKicker(kicker: RichText.fromJson(json['kicker'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'kicker': this.kicker.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
