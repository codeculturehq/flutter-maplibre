## 0.3.6-cc.3 (codeculturehq fork)

- fix(android): wake the Dart event loop after the blocking map callbacks
  (click, long click, style loaded, map ready). They run synchronously on
  the merged UI/platform thread, so the work they queue (bloc events,
  awaited futures) used to wait for the next input or frame.

## 0.3.6

[Check the maplibre changelog](https://pub.dev/packages/maplibre/changelog#036)

## 0.3.5

[Check the maplibre changelog](https://pub.dev/packages/maplibre/changelog#035)

## 0.3.4+1

[Check the maplibre changelog](https://pub.dev/packages/maplibre/changelog#034+1)

## 0.3.4

[Check the maplibre changelog](https://pub.dev/packages/maplibre/changelog#034)
