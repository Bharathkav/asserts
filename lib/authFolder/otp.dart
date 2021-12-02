import 'package:assertaroundyou/const.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';

class Otp extends StatelessWidget {
   final  TextEditingController emailform ;
Otp({Key? key, required this.emailform}) : super(key: key);
 final TextEditingController verifotp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    EmailAuth emailAuth = EmailAuth(sessionName: "Team Asserts Around You");
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              controller: verifotp,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: Text(enterotp),
              ),
            ),
            const SizedBox(height: 10.0),
            InkWell(
              onTap: () async {
                if (emailAuth.validateOtp(
                    recipientMail: emailform.value.text,
                    userOtp: verifotp.value.text)) {
                  await Navigator.of(context)
                      .pushNamed('password', arguments: emailform);
                } else {
                  //we want to give ripple effects
                }
              },
              child: Text(verifyotp),
            ),
          ],
        ),
      ),
    );
  }
}
