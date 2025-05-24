// coverage:ignore-file
import 'dart:async';

/// Dispatches events to listeners using the Dart [Stream] API. The [EventBus]
/// enables decoupled applications. It allows objects to interact without
/// requiring to explicitly define listeners and keeping track of them.
///
/// Not all events should be broadcasted through the [EventBus] but only those
/// of general interest.
///
/// Events are normal Dart objects. By specifying a class, listeners can
/// filter events.
abstract class EventBus<E> {
  /// Creates an [EventBus].
  ///
  /// If [sync] is true, events are passed directly to the stream's listeners
  /// during a [add] call. If false (the default), the event will be passed to
  /// the listeners at a later time, after the code creating the event has
  /// completed.
  EventBus({bool sync = false})
      : _streamController = StreamController.broadcast(sync: sync);

  final StreamController<E> _streamController;

  /// Controller for the event bus stream.
  StreamController<E> get streamController => _streamController;

  /// Listens for events of Type [T] and its subtypes.
  ///
  /// The method is called like this: myEventBus.on<MyType>();
  ///
  /// If the method is called without a type parameter, the [Stream]
  /// contains every event of this [EventBus].
  ///
  /// The returned [Stream] is a broadcast stream so multiple subscriptions are
  /// allowed.
  ///
  /// Each listener is handled independently, and if they pause, only
  /// the pausing listener is affected. A paused listener will buffer
  /// events internally until unpaused or canceled. So it's usually
  /// better to just cancel and later subscribe again (avoids memory leak).
  Stream<T> on<T>() {
    if (T == dynamic) {
      return streamController.stream as Stream<T>;
    } else {
      return streamController.stream.where((event) => event is T).cast<T>();
    }
  }

  /// Fires a new event on the event bus with the specified [event].
  void add(E event) {
    streamController.add(event);
  }

  /// Destroy this [EventBus]. This is generally only in a testing context.
  void destroy() {
    _streamController.close();
  }
}
