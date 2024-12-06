import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mineapp/conquistas.dart';


class Mineapp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    double avatarRadius = 50.0;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle_rounded),
          //leadingWidth: 20,
          actions:<Widget> [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          ],
          titleSpacing: -10,
          title: const Padding(
            padding: EdgeInsets.fromLTRB(8,8,0,0),
            child: Text('Meu Perfil', style: TextStyle(
              fontFamily: 'Minecraft',
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          backgroundColor: Colors.lightGreen.shade900,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 275,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://i.ibb.co/bdqWgL6/pngtree-minecraft-castle-in-the-middle-of-the-mountains-picture-image-3136285.png'),
              fit: BoxFit.cover,
              opacity: 0.95,
            ),
          ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(130,16,0,4),
                        child: CircleAvatar(
                          radius: avatarRadius,
                          backgroundImage: AssetImage('images/Herobrine.jpeg'),
                          ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,65,3,0),
                            child: IconButton(onPressed: (){},
                              icon:Icon(Icons.add_photo_alternate,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(47,0,0,15),
                        child: Text('Guilherme_Herobrine',
                          style: TextStyle(
                            fontFamily: 'Minecraft',
                          color: Colors.white,
                          fontSize: 27,
                        ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,15),
                            child: IconButton(onPressed: (){},
                                icon:Icon(Icons.edit,
                                color: Colors.white,
                                ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.fromLTRB(27,0,0,0),
                           child: Icon(Icons.how_to_reg, color: Colors.white,),
                         ),
                       ],
                     ),
                      ElevatedButton(onPressed: (){},
                        child: Text('Seguindo',
                          style: TextStyle(
                            fontFamily: 'Minecraft',
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green.shade900)
                        ),
                      ),
                      SizedBox(width: 6,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(27,0,0,0),
                        child: Icon(Icons.favorite, color: Colors.red,),
                      ),
                      ElevatedButton(onPressed: (){},
                        child: Text('Seguidores',
                          style: TextStyle(
                            fontFamily: 'Minecraft',
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green.shade900)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
             Container(
               height: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/textura.jpg'),
                    fit: BoxFit.fill,
                    opacity: 0.9,
                  ),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0,0,0,22),
                      child: Icon(Icons.workspace_premium,
                      color: Colors.white,
                        size: 55,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(1,5,0,0),
                      child: Text('SUAS CONQUISTAS',
                      style: TextStyle(
                        fontFamily: 'Minecraft',
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,0,0,0),
                      child: Container(
                        width: 78,
                        height: 78,
                        child: Image.asset('images/mine.png'),
                        ),
                      ),

                  ],
                ),
              ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade900,
                ),
                child: ListView(
                  children: [
                    conquistas(),
                    conquistas1(),
                    conquistas2(),
                    conquistas3(),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(250, 5, 5, 5),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items:const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Início'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'Loja'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin),
                label: 'Meu Perfil'
            ),
          ],
        ),
        ),
    );
  }
}