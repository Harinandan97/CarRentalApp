import 'package:flutter/material.dart';
import '../../Custom_Widgets/FAQ_Tile.dart';
import '../../Custom_Widgets/SupportTile.dart';


class HelpSupportPage extends StatelessWidget {
  const HelpSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: const Color(0xFFF7F7F7),
        appBar: AppBar(
          title: const Text("Help & Support"),
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Frequently Asked Questions",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),

              FaqTile(
                question: "How do I book a car?",
                answer:
                "Select a car, choose dates and location, then confirm your booking.",
              ),
              FaqTile(
                question: "Can I cancel my booking?",
                answer:
                "Yes, bookings can be cancelled up to 24 hours before pickup time.",
              ),
              FaqTile(
                question: "What documents are required?",
                answer:
                "You need a valid driving license and a government ID.",
              ),

              const SizedBox(height: 24),

              const Text(
                "Contact Support",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),

              SupportTile(
                icon: Icons.email,
                title: "Email Us",
                subtitle: "support@drivenow.com",
                onTap: () {},
              ),
              SupportTile(
                icon: Icons.phone,
                title: "Call Support",
                subtitle: "+91 9999 43210",
                onTap: () {},
              ),
              SupportTile(
                icon: Icons.chat,
                title: "Live Chat",
                subtitle: "Chat with our support team",
                onTap: () {},
              ),
            ],
          ),
        ),

    );
  }
}
