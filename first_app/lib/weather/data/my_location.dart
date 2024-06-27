import 'package:geolocator/geolocator.dart' as geolocator;

class MyLocation {
  late double latitude2;
  late double longitude2;

  Future<void> getMyCurrentLocation() async {
    try {
      await geolocator.Geolocator.requestPermission();
      geolocator.Position position =
          await geolocator.Geolocator.getCurrentPosition(
              desiredAccuracy: geolocator.LocationAccuracy.high);
      latitude2 = position.latitude;
      longitude2 = position.longitude;
      print("position $position");
      print("latitude2 $latitude2");
      print("longitude2 $longitude2");
    } catch (e) {
      print("인터넷 연결에 문제가 생겼습니다.");
    }
  }
}
