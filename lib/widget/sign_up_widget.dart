import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_tann_mann/provider/google_sign_in.dart';


class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildSignupWidget();
  }

  Widget BuildSignupWidget(){
    return Container(
      color: Colors.yellow,
      child: Column(
        children: <Widget>[
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 175,
              child:  Text(
                "Hey, Let's make a better World together",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Spacer(),
          button(),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text('Login to Continue'),
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton.icon(
      onPressed: (){
        final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
        provider.login();
      },
      label: Text(
        'Sign in with Google',
      ),
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      highlightedBorderColor: Colors.black,
      borderSide: BorderSide(color: Colors.black),
      textColor: Colors.black,
      icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
    );
  }
}

