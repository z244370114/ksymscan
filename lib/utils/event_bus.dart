import 'dart:async';

class EventBus {
  static EventBus? _instance;
  late StreamController _streamController;

  // 订阅者集合, <key:list<StreamSubscription>> <订阅者实体对象:StreamSubscription 列表>
  late Map<dynamic, List<StreamSubscription>> subscriptionsMap;

  factory EventBus.getDefault({bool sync = false}) {
    return _instance ??= EventBus._init(sync);
  }

  EventBus._init(bool sync) {
    _streamController = StreamController.broadcast(sync: sync);
    subscriptionsMap = <dynamic, List<StreamSubscription>>{};
  }

  StreamSubscription<T>? register<T>(
      dynamic subscriber, void Function(T event)? onData) {
    StreamSubscription<T>? subscription;

    Stream<T> stream =
        _streamController.stream.where((type) => type is T).cast<T>();
    subscription = stream.listen(onData);

    List<StreamSubscription>? list = subscriptionsMap[subscriber];
    if (list == null) {
      list = [];
      subscriptionsMap[subscriber] = list;
    }
    list.add(subscription);

    return subscription;
  }

  void post(event) {
    _streamController.add(event);
  }

  void unregister(dynamic subscriber) {
    List<StreamSubscription>? list = subscriptionsMap[subscriber];
    if (list != null) {
      for (StreamSubscription subscription in list) {
        subscription.cancel();
      }
      subscriptionsMap.remove(subscriber);
    }
  }
}
