import 'package:flutter/material.dart';

void main() {
      runApp(const MaterialApp(
      home: Contador(),
  ));
}
class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
 int count = 0;

  void decrement(){
    if(count>0){
      setState(() {
        count--;
      });      
    }    
  }

  void increment(){
    if(count<10){
      setState(() {
        count++;
      });
      
    }  
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/restaurant.jpg"),
            fit: BoxFit.cover)
         ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count < 10 ?"Pode entrar": "Lotado", style: TextStyle(fontSize: 30, color: Colors.white),),
           Text(count.toString(), style: TextStyle(fontSize: 30, color: Colors.white),),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: increment, 
                style:TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                  )
                  ), 
                child :Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.black)
                               ),                               
                ),
                SizedBox(width: 40,),
               TextButton(
                onPressed: decrement, 
                style:TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)
                  )
                  ), 
                child :Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.black)
                                )
                ), ],
           )
        ],
      ),
      )
    );
  }
}

