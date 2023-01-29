import 'package:location/location.dart';
class DataModel {
  final String title;
  final String imageName;
  final String text;




  DataModel(
      this.title,
      this.imageName,
      this.text,

      );
}

List<DataModel> dataList = [
  DataModel("Saudi Arabia map ", "images/a.png", "NearBy"),
  DataModel("Gravity well", "images/c.png", "1m"),
  DataModel("Oil Tube", "images/r.png", "5m"),
  DataModel("Heart Exhibit", "images/h.png", "10m"),
  DataModel("Manual Excavator", "images/t.png", "12m"),

];
