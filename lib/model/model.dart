class Car {
  final String name;
  final String image;
  final double pricePerDay;
  final bool available;
  final String fuel;
  final int seats;

  Car({
    required this.name,
    required this.image,
    required this.pricePerDay,
    required this.available,
    required this.fuel,
    required this.seats,
  });
}


class BookingData{
  final String StartDate;
  final String EndDate;
  final String personName;
  final String Location;

  BookingData({
    required this.StartDate,
    required this.EndDate,
    required this.personName,required this.Location});
}
