class TmdbException implements Exception {
  final String message;
  TmdbException(this.message);

  String toString() {
    if (message == null) return "Exception";
    return "Exception: $message";
  }
}