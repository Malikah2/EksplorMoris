import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Align(
              alignment: Alignment.topCenter,

            ),
            Text("CODE", style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),),
            Text("verification".toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold,),),
            const SizedBox(height: 15,),
            Text("Enter the verification code sent to you.", textAlign: TextAlign.center, ),
            const SizedBox(height: 15,),
            OtpTextField(
              numberOfFields: 4,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){ print("OTP is => $code");},
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}