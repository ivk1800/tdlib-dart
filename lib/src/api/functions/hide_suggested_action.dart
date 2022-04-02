import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Hides a suggested action
/// Returns [Ok]
class HideSuggestedAction extends TdFunction {
  HideSuggestedAction({required this.action});

  /// [action] Suggested action to hide
  final SuggestedAction action;

  static const String CONSTRUCTOR = 'hideSuggestedAction';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'action': this.action.toJson(), '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
