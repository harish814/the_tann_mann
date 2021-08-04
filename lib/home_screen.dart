import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:the_tann_mann/provider/google_sign_in.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//BF:D0:C9:C9:D6:36:DF:5A:AB:65:A8:54:82:69:96:8A:7C:D1:0A:51
//E7:40:E8:13:39:FB:0F:6B:1E:81:6C:AB:2A:8D:22:3C:5F:10:EE:36:AA:B3:02:81:D5:9E:F1:E6:4C:E5:0F:B4
class HomePage extends StatelessWidget {
  openUrl(url) async {
    String urll = url;
    if (await canLaunch(urll)) {
      await launch(urll);
      print('over');
    } else {
      throw 'Could not open url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffE1E8EB),
        appBar: AppBar(
          title: Text(
            'The Tann Mann',
            style: TextStyle(
              color: Color(0xff343A40),
            ),
          ),
          backgroundColor: Color(0xffFFC107),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('About Us'),
              ),
              Tab(
                child: Text('Solutions'),
              ),
              Tab(
                child: Text('Contact Us'),
              ),
            ],
          ),
        ),
        drawerScrimColor: Color(0xffFFC107),
        endDrawer: SafeArea(
          child: Drawer(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: NetworkImage(user.photoURL),
                ),
                TextButton(
                    onPressed: () async {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.logout();
                    },
                    child: Text('Logout'))
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Image.asset(
                'images/tannmanngadi.jpg',
                fit: BoxFit.contain,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Wellness on Wheels',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Padauk',
                  ),
                ),
              )),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            child: Text(
                              'About The Tann Mann Gaadi',
                              style: TextStyle(
                                color: Color(0xff343A40),
                                fontSize: 26,
                                fontFamily: 'CrimsonText',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 35,
                              color: Color(0xffFFC107),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'We are a "Not for Profit" trust venture building Wellness on wheels (The Tann Mann Gaadi) to address the serious problem of open defecation which is a major health risk for all in developing countries.',
                        style: TextStyle(fontSize: 16, fontFamily: 'Padauk'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'We are in the mission of integrating technology with our social cause.',
                        style: TextStyle(fontSize: 16, fontFamily: 'Padauk'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'We are in the process of providing a holistic approach to social responsibility keeping health, sensitization, safety and Eco-friendly solutions',
                        style: TextStyle(fontSize: 16, fontFamily: 'Padauk'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 35,
                                      color: Color(0xffFFC107),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: Text(
                                    'Why Tann Mann Gaadi',
                                    style: TextStyle(
                                      color: Color(0xff343A40),
                                      fontSize: 26,
                                      fontFamily: 'CrimsonText',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(child: Text('• ')),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'Open defecation which is a major health risk globally',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Padauk'),
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(child: Text('• ')),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'Inaccessibility of Hygienic & Safe public conveniences',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Padauk'),
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(child: Text('• ')),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'Un-safe environment for women, children, differently abled & the elderly',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Padauk'),
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(child: Text('• ')),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'Lack of potable and  clean water',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Padauk'),
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(child: Text('• ')),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'Un-availability of basic health facilities & amenities',
                                      style: TextStyle(
                                          fontSize: 16, fontFamily: 'Padauk'),
                                      softWrap: true,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Color(0xffFFC107),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'CONTACT US',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Paduak',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff343A40),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            ' +91- 934 192 1581',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Paduak',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff343A40),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              launch('wecare@thetannmanngaadi.org');
                            },
                            child: Text(
                              'wecare@thetannmanngaadi.org',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Paduak',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff343A40),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      Column(
                        //icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                        children: <Widget>[
                          InkWell(
                              onTap: () {
                                openUrl('https://www.instagram.com/thetannmaangaadi/');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: (){
                              openUrl('https://www.facebook.com/The-Tann-Mann-Gaadi-101514085248498');
                            },
                              child: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Colors.black,
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                              onTap: (){
                                openUrl('https://twitter.com/TtMGaadi');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                              onTap: (){
                                openUrl('https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2Fthe-tann-mann-gaadi%2Fabout%2F');
                              },
                              child: FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1.8,
                              child: Text(
                                'Our Solution',
                                style: TextStyle(
                                  color: Color(0xff343A40),
                                  fontSize: 26,
                                  fontFamily: 'CrimsonText',
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 35,
                                color: Color(0xffFFC107),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(child: Text('• ')),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'State of the art toilets available on wheels at strategic locations',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Padauk'),
                                  softWrap: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(child: Text('• ')),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'Safe facility for women, children, differently abled & the elderly',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Padauk'),
                                  softWrap: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(child: Text('• ')),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'Provide basic sanitation products',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Padauk'),
                                  softWrap: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(child: Text('• ')),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'Availability of clean potable water',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Padauk'),
                                  softWrap: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(child: Text('• ')),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'Health Kiosk for first aid & generic testing center',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Padauk'),
                                  softWrap: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(child: Text('• ')),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  'Eco-friendly project solutions',
                                  style: TextStyle(
                                      fontSize: 16, fontFamily: 'Padauk'),
                                  softWrap: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 15),
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Text('Drop a Message',
              style: TextStyle(
                fontFamily: 'CrimsonText',
                fontSize: 18,
                color: Colors.black87
              ),),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Name'),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Add a Message'),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext context) {
                      return new AlertDialog(
                        title: new Text("Thank you"),
                      );
                    });
                  },
                  child: Text('Submit'),
              )
            ],
          )
        ]),
      ),
    );
  }
}
