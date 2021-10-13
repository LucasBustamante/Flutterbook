import 'package:flutter/material.dart';
import 'main.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff242527),
      body: Column(children: [
        SizedBox(height: 40,),
          Row(
                children: [
                  SizedBox(height: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset('assets/logoface.png'),
                      ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 105),
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(color: Color(0xff393939),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.search, color: Colors.white,),
                    ),
                  ),
          SizedBox(width: 15,),
          GestureDetector(
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(color: Color(0xff393939),
                shape: BoxShape.circle,
              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/mensager.png'),
                ),
            ),
            onTap: (){},
          ),
                ],
              ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Row(children: [
            Icon(Icons.home, color: Color(0xff2d87ff),size: 35,),
            SizedBox(width: 30,),
            Icon(Icons.people_outline_rounded, color: Color(0xffffffff),size: 35,)
          ],),
        )
              ],),
    );
  }
}
