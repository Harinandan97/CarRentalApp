import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Custom_Widgets/CustomElevetedButton.dart';
import '../../Custom_Widgets/profileTile.dart';
import '../../Provider/provider.dart';
import '../BookingSummary/summary.dart';
import '../help and support/support.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.watch<CarProvider>();


    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: AppBar(automaticallyImplyLeading: false,

        title: const Text("Profile"),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [


            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(
                      "Assets/Images/person.jpg",
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    data.email.trim(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 20),


            ProfileTile(
              icon: Icons.car_rental,
              title: "My Bookings",
              onTap: () {

                Navigator.push(context, MaterialPageRoute(builder: (_)=>BookingSummaryPage()));

              },
            ),

            ProfileTile(
              icon: Icons.help_outline,
              title: "Help & Support",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>HelpSupportPage()));

              },
            ),

            const SizedBox(height: 20),


            SizedBox(
              width: double.infinity,
              child:
              CustomButton(
                clr: Colors.red,
                txt: "Logout",
                OnPressed: () {Navigator.pop(context);},


              ),
            ),
          ],
        ),
      ),
    );
  }
}

