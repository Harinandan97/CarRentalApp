import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/model.dart';



class CarProvider extends ChangeNotifier{


//hidePassword
  bool isEyeClosed = true;

  //userName
  String email='';

  //Details of car
  dynamic CarDetails='';


  //bookingData
  String personName="";
  String Locations="";
  String Fdate="";
  String LD="";

  List<BookingData>booking=[];



  //booking summary
  void summary(String Name,String location,String date,String l){
    personName=Name;
    Locations=location;
    Fdate=date;
    LD=l;
    notifyListeners();

  }


  //single car info
  Details(Car value){
    CarDetails=value;
    notifyListeners();
  }

  //login username
  void getUserName(String value){
    email=value;
    notifyListeners();
  }



//HidePassword
 void ShowPassword(){
    isEyeClosed=!isEyeClosed;
    notifyListeners();
  }


  //Booking Validation
String? BookingName(String? value){
  if (value == null || value.isEmpty) {
    return "Name is required";
  }return null;
}

//Booking location validation
String? LocationValidate(String? value){
  if (value == null || value.isEmpty) {
    return "Location is required";
  }
  return null;
}

//email validation
  String? ValidateEmail  (String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    if (!value.contains('@') || !value.contains('.')) {
      return "Enter a valid email";
    }

    return null;
  }

  //password validation
  String? ValidatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password required";
    }
    if(value.length<6){
      return "Password must be at least 6 characters";
    }
    return null;
  }


  //dummy data
  final List<Car> carList = [
    Car(
      name: "Toyota Fortuner",
      image: "Assets/Images/forturener.jpg",
      pricePerDay: 6000,
      available: true,
      fuel: "Diesel",
      seats: 7,
    ),
    Car(
      name: "Hyundai i20",
      image: "Assets/Images/i20.jpg",
      pricePerDay: 1500,
      available: false,
      fuel: "Petrol",
      seats: 5,
    ),
    Car(
      name: "Swift Dzire",
      image: "Assets/Images/dezier.jpg",
      pricePerDay: 2000,
      available: true,
      fuel: "Petrol",
      seats: 5,
    ),

    Car(
      name: "Polo",
      image: "Assets/Images/polo.jpg",
      pricePerDay: 3500,
      available: true,
      fuel: "Diesel",
      seats: 5,
    ),
    Car(
      name: "Honda City",
      image: "Assets/Images/city.jpg",
      pricePerDay: 2000,
      available: false,
      fuel: "Diesel",
      seats: 5,
    ), Car(
      name: "Civic",
      image: "Assets/Images/civic.jpg",
      pricePerDay: 4500,
      available: true,
      fuel: "Diesel",
      seats: 5,
    ), Car(
      name: "Baleno",
      image: "Assets/Images/baleno.jpg",
      pricePerDay: 3500,
      available: true,
      fuel: "Diesel",
      seats: 5,
    ),
    Car(
      name: "Tata nexon",
      image: "Assets/Images/nexon.jpg",
      pricePerDay: 4500,
      available: true,
      fuel: "Diesel",
      seats: 5,
    ),Car(
      name: "Tata harrier",
      image: "Assets/Images/harrier.jpg",
      pricePerDay: 5000,
      available: false,
      fuel: "Diesel",
      seats: 5,
    ),Car(
      name: "Ford eco Sport",
      image: "Assets/Images/eco.jpg",
      pricePerDay: 4500,
      available: true,
      fuel: "Diesel",
      seats: 5,
    ),
  ];




  //List of booking data
  void addBookingData() {
    booking.add(
      BookingData(
        personName: personName,
        Location: Locations, Edate: Fdate, Sdate: LD,
      ),
    );
    notifyListeners();
  }

  //delete Booking
  void deleteBooking(int index) {
    booking.removeAt(index);
    notifyListeners();
  }



}