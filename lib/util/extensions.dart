
extension Truncate on String {
  String truncate({required int max}) {
    return length < max
        ? this
        : substring(0, max);
  }
}