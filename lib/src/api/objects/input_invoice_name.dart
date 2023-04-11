import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// An invoice from a link of the type internalLinkTypeInvoice
@immutable
class InputInvoiceName extends InputInvoice {
  const InputInvoiceName({
    required this.name,
  });

  /// [name] Name of the invoice
  final String name;

  static const String constructor = 'inputInvoiceName';

  static InputInvoiceName? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInvoiceName(
      name: json['name'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
