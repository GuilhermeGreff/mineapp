import 'package:flutter/material.dart';

class conquistas extends StatelessWidget {

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 3,
              ),
                left: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
              right: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              top: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,0,0),
                child: Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('images/conquista1.webp'),
                ),
              ),
              TextButton(onPressed: (){},
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0,0,0,0),
                        child: Text('FAZENDO IVENTÁRIO',
                          style: TextStyle(
                            fontFamily: 'Minecraft',
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0,0,42,0),
                                child: Text('Abra seu inventário.',
                                  style: TextStyle(
                                    fontFamily: 'Minecraft',
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0,0,96,2),
                                    child: Text('98% concluiram.',
                                      style: TextStyle(
                                        fontFamily: 'Minecraft',
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class conquistas1 extends StatelessWidget {

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              left: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              right: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              top: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5,5,0,5),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/conquista2.jpg'),
                      fit: BoxFit.fill,

                    )
                  ),
                ),
              ),
              TextButton(onPressed: (){},
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,0,46,0),
                      child: Text('HORA DE MINERAR!',
                        style: TextStyle(
                          fontFamily: 'Minecraft',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,0,42,0),
                              child: Text('Faça sua primeira picareta.',
                                style: TextStyle(
                                  fontFamily: 'Minecraft',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,126,2),
                                  child: Text('92% concluiram.',
                                    style: TextStyle(
                                      fontFamily: 'Minecraft',
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class conquistas2 extends StatelessWidget {

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              left: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              right: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              top: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,0,0),
                child: Container(
                  width: 80,
                  height: 80,
                  child: Image.asset('images/conquista3.webp'),
                ),
              ),
              TextButton(onPressed: (){},
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,0,120,0),
                      child: Text('DIAMANTES!!',
                        style: TextStyle(
                          fontFamily: 'Minecraft',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,0,42,0),
                              child: Text('Pegue seu primeiro diamante',
                                style: TextStyle(
                                  fontFamily: 'Minecraft',
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,128,2),
                                  child: Text('70% concluiram.',
                                    style: TextStyle(
                                      fontFamily: 'Minecraft',
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class conquistas3 extends StatelessWidget {

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              left: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              right: BorderSide(
                color: Colors.white,
                width: 3,
              ),
              top: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5,5,0,5),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/conquista4.webp'),
                        fit: BoxFit.fill,
                      ),
                  ),
                ),
              ),
              TextButton(onPressed: (){},
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,0,130,0),
                      child: Text('THE END!!',
                        style: TextStyle(
                          fontFamily: 'Minecraft',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0,0,40,0),
                              child: Text('Mate o Ender Dragon.',
                                style: TextStyle(
                                  fontFamily: 'Minecraft',
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0,0,105,2),
                                  child: Text('44% concluiram.',
                                    style: TextStyle(
                                      fontFamily: 'Minecraft',
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}