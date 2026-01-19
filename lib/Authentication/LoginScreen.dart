import 'package:car_rental_app/BottomNavigationbar/BottomNavigationbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Custom_Widgets/CustomElevetedButton.dart';
import '../Custom_Widgets/TextFormfield.dart';
import '../Provider/provider.dart';

void main(){
  runApp(MaterialApp(home: Loginscreen(),debugShowCheckedModeBanner: false,));
}
class Loginscreen extends StatefulWidget {




  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

  final GlobalKey<FormState>CarKey=GlobalKey<FormState>();
  final TextEditingController email=TextEditingController();

  @override
  Widget build(BuildContext context) {


    final data = context.watch<CarProvider>();

    return Scaffold(resizeToAvoidBottomInset: true,
        body:
       SafeArea(child:  Container(color: Colors.white,child:
       Form(key:CarKey ,
         child: Column(children: [
           Padding(
             padding: const EdgeInsets.only(top: 25,left: 8),
             child: Align(
                 alignment: .topLeft,
                 child: Text("LoginAccount",style:
                 TextStyle(fontSize: 24,fontWeight: FontWeight.w700,fontFamily: "Montserrat"),)),
           ),
           SizedBox(height: 100,),

           Center(
             child: Container(width:MediaQuery.of(context).size.width*0.9,
               child: CustomTextField(
                 label: "Email",
                 controller: email,
                 validator:data.ValidateEmail,
               ),

             ),
           ),

           SizedBox(height: 80,),
           Center(
             child: Container(width:MediaQuery.of(context).size.width*0.9,

               child:
               CustomTextField(
                 label: "Password",
                 obscureText:data.isEyeClosed,
                 Icon:IconButton(onPressed: data.ShowPassword,
                     icon: Icon(
                   data.isEyeClosed?Icons.visibility_off:Icons.visibility,
                 )),
                 validator: data.ValidatePassword,
               ),

             ),
           ),
           SizedBox(height: 100,),
           SizedBox(width: MediaQuery.of(context).size.width*0.9,
             child: CustomButton(txt: 'Login',OnPressed: ()
             {
               if(CarKey.currentState!.validate()){
                 data.getUserName(email.text);
                 print(email.text);
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>home()));
               }

             },) ,
           ),SizedBox(height: 100,),
         ],),
       ),))

    );

  }
}
