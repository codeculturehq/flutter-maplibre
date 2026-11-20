import 'dart:async';
import 'dart:ui';

import 'package:jni_flutter/jni_flutter.dart';
import 'package:maplibre_android/src/jni.g.dart';

/// After a blocking (non-`$async`) listener: jni's PortProxyBuilder calls it
/// directly on the merged UI/platform thread (dartjni.c), outside any isolate
/// message, so its microtasks wait for the next one — this timer is that one.
void wakeEventLoop() => Timer.run(() {});

/// Get the Android [Context].
Context getJContext() => androidApplicationContext.as(Context.type);

/// Get the Android [Activity].
Activity getJActivity() =>
    androidActivity(_engineId)?.as(Activity.type) ??
    (throw Exception(
      'No Android Activity is attached to the Flutter engine with id $_engineId. '
      'This usually means that the Flutter engine is running in a '
      'background context without an associated Activity.',
    ));

int get _engineId =>
    PlatformDispatcher.instance.engineId ??
    (throw Exception(
      'PlatformDispatcher.instance.engineId is null. '
      'This usually means that the code is being executed outside of a '
      'Flutter engine context.',
    ));
