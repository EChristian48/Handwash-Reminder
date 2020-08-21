class CountdownStatus {
  bool _isOn = false;

  bool getStatus() {
    return _isOn;
  }

  void turnOn() {
    _isOn = true;
  }

  void turnOff() {
    _isOn = false;
  }
}
