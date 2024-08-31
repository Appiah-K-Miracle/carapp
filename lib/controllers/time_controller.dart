import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

class TimeController extends GetxController {
  final _hours = 0.obs;
  final _minutes = 0.obs;
  final _isTimerRunning = false.obs;
  final _remainingSeconds = 0.obs;

  final player = AudioPlayer();

  int get hours => _hours.value;
  int get minutes => _minutes.value;
  bool get isTimerRunning => _isTimerRunning.value;
  int get remainingSeconds => _remainingSeconds.value;

  void updateHours(int hour) {
    _hours.value = hour;
  }

  void updateMinutes(int minute) {
    _minutes.value = minute;
  }

  void startTimer() async {
    int totalSeconds = (hours * 60 * 60) + (minutes * 60);
    _remainingSeconds.value = totalSeconds;
    _isTimerRunning.value = true;

    while (_remainingSeconds.value > 0) {
      await Future.delayed(const Duration(seconds: 1));
      _remainingSeconds.value -= 1;
    }

    _isTimerRunning.value = false;

      playSound();

  }

  void stopTime(){
    _isTimerRunning.value = false;
    stopSound();
  }

  Future<void> playSound() async {
    String audioPath = 'music4.mp3';

      await player.play(AssetSource(audioPath));


  }

  Future<void> stopSound() async {
    await player.stop();
  }


}