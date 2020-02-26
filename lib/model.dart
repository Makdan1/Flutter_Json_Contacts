
import 'dart:convert';

YourModelClass yourModelClassFromJson(String str) => YourModelClass.fromJson(json.decode(str));

String yourModelClassToJson(YourModelClass data) => json.encode(data.toJson());

class YourModelClass {
  List<dynamic> apusFindgoGalleryImages;

  YourModelClass({
    this.apusFindgoGalleryImages,
  });

  factory YourModelClass.fromJson(List<dynamic> json) => YourModelClass(
    //apusFindgoGalleryImages: Map.from(json).map(( v) => List<dynamic>(k, v)),
  );

  Map<String, dynamic> toJson() => {
  //  "": Map.from(apusFindgoGalleryImages).map((k, v) => List< dynamic>(k, v)),
  };
}