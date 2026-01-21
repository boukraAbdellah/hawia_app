class Region {
  final int regionId;
  final String nameAr;
  final String nameEn;
  final String? code;
  final int? population;

  Region({
    required this.regionId,
    required this.nameAr,
    required this.nameEn,
    this.code,
    this.population,
  });

  factory Region.fromJson(Map<String, dynamic> json) {
    try {
      print('  🔍 Parsing Region: region_id=${json['region_id']}, type=${json['region_id'].runtimeType}');
      return Region(
        regionId: int.parse(json['region_id'].toString()),
        nameAr: json['name_ar'] as String,
        nameEn: json['name_en'] as String,
        code: json['code'] as String?,
        population: json['population'] != null ? int.parse(json['population'].toString()) : null,
      );
    } catch (e) {
      print('  ❌ Error in Region.fromJson: $e');
      print('  ❌ JSON data: $json');
      rethrow;
    }
  }
}

class City {
  final int cityId;
  final int regionId;
  final String nameAr;
  final String nameEn;
  final List<double>? center;

  City({
    required this.cityId,
    required this.regionId,
    required this.nameAr,
    required this.nameEn,
    this.center,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    try {
      final cityId = json['city_id'];
      final regionId = json['region_id'];
      final center = json['center'];
      
      return City(
        cityId: int.parse(cityId.toString()),
        regionId: int.parse(regionId.toString()),
        nameAr: json['name_ar'] as String,
        nameEn: json['name_en'] as String,
        center: center != null 
          ? (center as List).map((x) => double.parse(x.toString())).toList()
          : null,
      );
    } catch (e) {
      print('  ❌ Error in City.fromJson: $e');
      print('  ❌ JSON data: $json');
      rethrow;
    }
  }
}

