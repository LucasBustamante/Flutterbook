import 'package:flutter/material.dart';
// ignore: unused_import
import 'newaccount.dart';
import 'profile.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String user = 'usuario@email.com';
  String password = '1234';
  String validador = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff242527),
        body: SingleChildScrollView(
          child: Container(height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Image.asset('assets/capa1.jpg'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Português',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text('  •  ', style: TextStyle(color: Colors.grey)),
                    Text(
                      'Mais...',
                      style: TextStyle(color: Color(0xff0254b4)),
                    )
                  ],
                ),
                SizedBox(
                  height: 75,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
                  child: TextField(onChanged: (text){
                    user = text;
                  },
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Telefone ou email',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, bottom: 15),
                  child: TextField(onChanged: (text){
                    password = text;
                  },
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        hintText: 'Senha',
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                SizedBox(
                  width: 320,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xff2d87ff)),
                    onPressed: () {
                      if (user == 'usuario@email.com' && password == '1234') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Profile()));
                        }else {validador = 'Usuário ou senha errada';}
                    },
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: Color(0xff2d87ff),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(validador,style: TextStyle(color: Colors.red),),
                SizedBox(
                  height: 60,
                ),
                Text(
                  '───────── ou ─────────',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 240,
                  height: 38,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xff30a24b)),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NewAccount()));
                      },
                      child: Text(
                        'Criar nova conta no Facebook',
                        style: TextStyle(fontSize: 16),
                      )),
                ),

              ],
            ),
          ),
        ));
  }
}
