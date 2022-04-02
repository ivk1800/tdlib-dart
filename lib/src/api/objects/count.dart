import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Contains a counter
class Count extends TdObject {
  Count({required this.count});

  /// [count] Count
  final int count;

  static const String CONSTRUCTOR = 'count';

  static Count? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Count(count: json['count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'count': this.count, '@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
