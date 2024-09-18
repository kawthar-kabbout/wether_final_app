class City {
  bool isSelected;
  final String city;
  final String country;
  final bool isDefault;

  City({
    required this.isSelected,
    required this.city,
    required this.country,
    required this.isDefault,
  });

  ///la liste des city

  static List<City> citiesList = [
    City(
        isSelected: false,
        city: 'London',
        country: 'United Kingdom',
        isDefault: true),
    City(isSelected: false, city: 'Paris', country: 'France', isDefault: false),
    City(
        isSelected: false,
        city: 'New York',
        country: 'United States',
        isDefault: false),
    City(isSelected: false, city: 'Tokyo', country: 'Japan', isDefault: false),
    City(
        isSelected: false,
        city: 'Sydney',
        country: 'Australia',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Berlin',
        country: 'Germany',
        isDefault: false),
    City(
        isSelected: false, city: 'Moscow', country: 'Russia', isDefault: false),
    City(
        isSelected: false, city: 'Beijing', country: 'China', isDefault: false),
    City(
        isSelected: false,
        city: 'Rio de Janeiro',
        country: 'Brazil',
        isDefault: false),
    City(isSelected: false, city: 'Cairo', country: 'Egypt', isDefault: false),
    City(isSelected: false, city: 'Mumbai', country: 'India', isDefault: false),
    City(
        isSelected: false,
        city: 'Cape Town',
        country: 'South Africa',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Mexico City',
        country: 'Mexico',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Toronto',
        country: 'Canada',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Buenos Aires',
        country: 'Argentina',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Istanbul',
        country: 'Turkey',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Seoul',
        country: 'South Korea',
        isDefault: false),
    City(
        isSelected: false,
        city: 'Bangkok',
        country: 'Thailand',
        isDefault: false),
    City(
        isSelected: false, city: 'Nairobi', country: 'Kenya', isDefault: false),
    City(isSelected: false, city: 'Rome', country: 'Italy', isDefault: false),
  ];

  /////get selected country
  ///
  ///
  static List<City> getSelectedCities() {
    List<City> selectedCities = City.citiesList;
    return selectedCities.where((city) => city.isSelected == true).toList();
  }
}
