class Country {

  String idCountry;
  String countryName;
  Country({
    required this.idCountry,
    required this.countryName,
  });


  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Country &&
      other.idCountry == idCountry &&
      other.countryName == countryName;
  }

  @override
  int get hashCode => idCountry.hashCode ^ countryName.hashCode;
}
