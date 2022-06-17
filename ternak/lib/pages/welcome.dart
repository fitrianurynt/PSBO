import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 180,
                left: 30,
                right: 30,
                child: Column(
                  children: [
                   
                    Image.asset(
                      "images/sapi.png",
                      width: 320,
                      height: 300,
                    ),
                    const Text(
                      'Halo! Mau cari hewan apa hari ini?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
             ],
           ),
         ),      
       ),
     );
   }
}
