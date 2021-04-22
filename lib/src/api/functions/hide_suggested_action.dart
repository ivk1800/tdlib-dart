import '../tdapi.dart';

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
}
