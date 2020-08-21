class CountdownStatus {
  static bool _isOn = false;

  static bool getStatus() {
    return _isOn;
  }

  static void turnOn() {
    _isOn = true;
  }

  static void turnOff() {
    _isOn = false;
  }
}
