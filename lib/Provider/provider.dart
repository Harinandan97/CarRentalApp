import 'package:flutter/cupertino.dart';

import '../model/model.dart';


class CarProvider extends ChangeNotifier{



  bool isEyeClosed = true;

  String email='';


  void getUserName(String value){
    email=value;
    notifyListeners();
  }

 void ShowPassword(){
    isEyeClosed=!isEyeClosed;
    notifyListeners();
  }



  String? ValidateEmail  (String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    if (!value.contains('@') || !value.contains('.')) {
      return "Enter a valid email";
    }

    return null;
  }

  String? ValidatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password required";
    }
    if(value.length<6){
      return "Password must be at least 6 characters";
    }
    return null;
  }

  final List<Car> carList = [
    Car(
      name: "Toyota Fortuner",
      image: "Assets/Images/forturener.jpg",
      pricePerDay: 4500,
      available: true,
      fuel: "Diesel",
      seats: 7,
    ),
    Car(
      name: "Hyundai i20",
      image: "Assets/Images/i20.jpg",
      pricePerDay: 2500,
      available: false,
      fuel: "Petrol",
      seats: 5,
    ),
    Car(
      name: "Swift Dzire",
      image: "assets/images/dzire.png",
      pricePerDay: 2200,
      available: true,
      fuel: "Petrol",
      seats: 5,
    ),
    //////////////////////////
    Car(
      name: "Polo",
      image: "Assets/Images/forturener.jpg",
      pricePerDay: 4500,
      available: true,
      fuel: "Diesel",
      seats: 5,
    ),
    Car(
      name: "Honda City",
      image: "Assets/Images/forturener.jpg",
      pricePerDay: 4500,
      available: false,
      fuel: "Diesel",
      seats: 5,
    ), Car(
      name: "Civic",
      image: "Assets/Images/forturener.jpg",
      pricePerDay: 4500,
      available: true,
      fuel: "Diesel",
      seats: 5,
    ), Car(
      name: "Tata nexon",
      image: "Assets/Images/forturener.jpg",
      pricePerDay: 4500,
      available: false,
      fuel: "Diesel",
      seats: 5,
    ),

  ];



}