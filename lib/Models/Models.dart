class DataModel {
  final String title;
  final String imageName;
  final String text;
  final String loc;

  DataModel(this.title, this.imageName, this.loc, this.text);
}

List<DataModel> dataList = [
  DataModel(
      "Saudi Arabia map ",
      "images/a.png",
      "This exhibit shows the geography of the Kingdom of Saudi Arabia and i ts surface features, including mountains, plateaus and seas, in addition to defining the thirteen administrative regions and the most prominent cultural and civilizational manifestations in each region. It also highlights the most important ministries in the Kingdom, such as education and health, and their achievements.",
      "NearBy"),
  DataModel("Gravity well", "images/c.png", "", "1m"),
  DataModel("Oil Tube", "images/r.png", "hlllekejdjfjdks", "5m"),
  DataModel("Heart Exhibit", "images/h.png", "hlllekejdjfjdks", "10m"),
  DataModel("Manual Excavator", "images/t.png", "hlllekejdjfjdks", "12m"),
];

var title=[
  "Saudi Arabia map ",
  "Gravity well",
  "Oil Tube",
  "Heart Exhibit",
  "Manual Excavator",
];
var im=[
  "images/a.png",
  "images/c.png",
  "images/r.png",
  "images/h.png",
  "images/t.png",
];
var close=[
  "NearBy",
  "1m",
  "6m",
  "10m",
  "12m",

];