import 'package:agora/main.dart';
import 'package:flutter/material.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xff242527),
        appBar: AppBar(backgroundColor: Color(0xff242527),
          shadowColor: Colors.white,
          title: Text('Criar conta'),
        ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 220,
                child: Image.asset('assets/criar.png')),
            SizedBox(height: 50,),
            Text('Participe do Facebook', style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('Ajudaremos você a criar uma nova conta em algumas \n '
                  'etapas simples.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white,

              )),
            ),SizedBox(height: 50,),
            SizedBox(
                width: 330,height: 50,
                child: ElevatedButton(onPressed: (){}, child: Text('Avançar',
                style: TextStyle(fontSize: 18),))),
            SizedBox(height: 245,),
            GestureDetector(child: Text('Já tem uma conta?',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff2d87ff)
            ),),
              onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> Home()));
              },
            ),
          ],
        ),
      ),
    );
  }
}


