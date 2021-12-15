abstract class ICounterPageController {
  Stream<int> get counterStream;

  int get counter;

  void inc();
  void dec();
}
