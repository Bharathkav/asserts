import 'package:assertaroundyou/const.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/email_auth.dart';
import 'package:email_validator/email_validator.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  final TextEditingController _createmail = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    EmailAuth emailAuth = EmailAuth(sessionName: "Team Asserst Around You");
    return SingleChildScrollView(
      child: SafeArea(
        child: Scaffold(
          body: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: _createmail,
                  validator: _validator,
                ),
                InkWell(
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      bool result = await emailAuth.sendOtp(
                          recipientMail: _createmail.value.text, otpLength: 5);
                      if (result == true) {
                        Navigator.of(context).pushNamed('/otp');
                      } else {}
                    }
                  },
                  child: Text(
                    otpgenrate,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _validator(formString) {
    if (formString == null) {
      return "please enter mail";
    } else if (!EmailValidator.validate(formString)) {
      return "please enter the valid Email";
    } else {
      return null;
    }
  }
}
