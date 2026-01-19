import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Custom_Widgets/CustomElevetedButton.dart';
import '../../Custom_Widgets/Customtile.dart';
import '../../Provider/provider.dart';
import '../Booking/Booking.dart';

class Cardetails extends StatelessWidget {
  const Cardetails({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.watch<CarProvider>();
    final details = data.CarDetails;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Image.asset(
                  details.image,
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      details.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 8),


                    Text(
                      "₹ ${details.pricePerDay} / day",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 20),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoTile(icon: Icons.local_gas_station, text:details.fuel.toString()),
                InfoTile(icon: Icons.event_seat, text: "${details.seats} Seats"),
                        InfoTile(
                          icon: details.available
                              ? Icons.check_circle
                              : Icons.cancel,
                          text: details.available ? "Available" : "Unavailable",
                          color: details.available ? Colors.green : Colors.red,
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),


                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                        OnPressed: details.available ?
                            () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>BookingFormPage()));
                            }
                            : null,
                        txt: details.available ? "Book Now" : "Unavailable",
                        clr: details.available ? Colors.green : Colors.grey,

                      ),
                    )



                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



}
