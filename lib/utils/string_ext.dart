extension NullStringExtension on String? {
  bool ifNotNullOrBlank() {
    return this != null && this!.isNotEmpty;
  }
}