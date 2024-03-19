import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text('same photos',style: TextStyle(
          fontSize: 20,color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),

      ),
      body: const Imagepage() ,
    ),
  ));
}
class Imagepage extends StatefulWidget {
  const Imagepage({super.key});

  @override
  State<Imagepage> createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  int leftimage = 1;
  int rhiteimage=2;
  void changeimage(){
    leftimage=Random().nextInt(8)+1;
    rhiteimage=Random().nextInt(8)+1;
  }
  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text(
          leftimage == rhiteimage
              ? 'yes you win' :
          'Try again please',
           style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeimage();


                    });

                  },
                  child: Image.asset('assests/image/i-$leftimage.jpg'),
                ),
              ),
              const SizedBox(width: 20,),

              Expanded(child: TextButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });

                  },
                  child:  Image.asset('assests/image/i-$rhiteimage.jpg'))),
            ],
          ),
        )
      ],
    );
  }
}
