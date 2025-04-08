/*
Exercise 2: Smart Home Automation
A smart home system controls different devices such as lights,
air conditioners, and security
cameras.
Each device has an on and off functionality.
Some devices have additional functionalities, e.g.,
 adjusting temperature or motion detection.
The system should allow multiple devices to be controlled together.
Question:
How would you design a system where different devices
 share common functionalities but also have
unique behaviors?
*/
abstract class Device {
  void turnOn();
  void turnOff();
}

class Light extends Device {
  @override
  void turnOn() => print("Light turned on");

  @override
  void turnOff() => print("Light turned off");
}

class AirConditioner extends Device {
  int temperature = 24;

  @override
  void turnOn() => print("AC turned on");

  @override
  void turnOff() => print("AC turned off");

  void setTemperature(int temp) {
    temperature = temp;
    print("Temperature set to $temperature°C");
  }
}

class SecurityCamera extends Device {
  @override
  void turnOn() => print("Camera activated");

  @override
  void turnOff() => print("Camera deactivated");

  void enableMotionDetection() {
    print("Motion detection enabled");
  }
}

class SmartHomeController {
  List<Device> devices = [];

  void addDevice(Device device) {
    devices.add(device);
  }

  void turnAllOn() {
    for (var device in devices) {
      device.turnOn();
    }
  }

  void turnAllOff() {
    for (var device in devices) {
      device.turnOff();
    }
  }
}

void main() {
  var light = Light();
  var ac = AirConditioner();
  var camera = SecurityCamera();

  var controller = SmartHomeController();
  controller.addDevice(light);
  controller.addDevice(ac);
  controller.addDevice(camera);

  controller.turnAllOn();

  ac.setTemperature(22);
  camera.enableMotionDetection();

  controller.turnAllOff();
}
