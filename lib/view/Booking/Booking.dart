import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../BottomNavigationbar/BottomNavigationbar.dart';
import '../../Custom_Widgets/CustomElevetedButton.dart';
import '../../Custom_Widgets/TextFormfield.dart';
import '../../Provider/provider.dart';

class BookingFormPage extends StatefulWidget {
  const BookingFormPage({super.key});

  @override
  State<BookingFormPage> createState() => _BookingFormPageState();
}

class _BookingFormPageState extends State<BookingFormPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController StartDate=TextEditingController();
  final TextEditingController Enddate=TextEditingController();



  @override
  Widget build(BuildContext context) {
    final data = context.watch<CarProvider>();

    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        title: const Text("Booking Details"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [


              CustomTextField(
                label: "Full Name",
                controller: _nameController,
                validator: data.BookingName,
              ),
              const SizedBox(height: 36),


              CustomTextField(
                label: "Pickup Location",
                controller: _locationController,
                validator: data.LocationValidate,
              ),
              const SizedBox(height: 80),

              CustomTextField(
                label: "Start Date",
                controller: StartDate,
                validator: data.DateValidate,
              ),
              const SizedBox(height: 80),
              CustomTextField(
                label: "End Date",
                controller: Enddate,
                validator: data.DateValidate,
              ),
              const SizedBox(height: 80),




              const SizedBox(height: 120),


              CustomButton(
                txt: "Confirm Booking",
                OnPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>home()));
                    data.summary(_nameController.text, _locationController.text,StartDate.text,Enddate.text);
                    data.addBookingData();
                    print(_nameController.text);



                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            "Booking confirmed for ${_nameController.text}!"),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
