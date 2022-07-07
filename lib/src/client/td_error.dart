class TdError extends Error {
  TdError(this.message);

  final String message;

  @override
  String toString() => message;
}
