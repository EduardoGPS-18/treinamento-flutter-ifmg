import 'dart:async';

import 'counter_page_controller_contract.dart';

class CounterPageController implements ICounterPageController {
  final _counterCountroller = StreamController<int>();
  @override
  Stream<int> get counterStream => _counterCountroller.stream;

  int _counter = 10;
  @override
  int get counter => _counter;

  @override
  void inc() => _counterCountroller.sink.add(++_counter);
  @override
  void dec() => _counterCountroller.sink.add(--_counter);
}
