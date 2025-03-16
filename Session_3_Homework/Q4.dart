import 'dart:io';

Map<String, Map<String, dynamic>> weatherData = {
  "Cairo": {"temperature": 28, "humidity": 60, "condition": "Sunny"},
  "Aswan": {"temperature": 35, "humidity": 50, "condition": "Hot"},
  "Tanta": {"temperature": 15, "humidity": 80, "condition": "Rainy"},
  "Mansoura": {"temperature": 22, "humidity": 70, "condition": "Cloudy"},
};

// Function to retrieve and print weather details
void getWeather(String Mycity) {
  for (var city in weatherData.keys) {
    if (city == Mycity) {
      var data = weatherData[city]!;
      print("\n Weather in ${city}:");
      print("Temperature: ${data["temperature"]}°C");
      print(" Humidity: ${data["humidity"]}%");
      print(" Condition: ${data["condition"]}");
      return;
    }
  }
}

void main() {
  stdout.write("Enter city name: ");
  String? city = stdin.readLineSync();

  getWeather(city!);
}
