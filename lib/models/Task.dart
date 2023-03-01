// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final String name;
  bool isdone;
  Task({
    required this.name,
    this.isdone = false,
  });
  void doneChange() {
    isdone = !isdone;
  }
}
