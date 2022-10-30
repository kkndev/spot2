Future<int> howMuchTimeTakeRequest(Function callback) async {
  var stopWatch = Stopwatch();
  stopWatch.start();
  await callback();
  stopWatch.stop();
  var elapsedTime = stopWatch.elapsed.inMilliseconds;
  return elapsedTime;
}
