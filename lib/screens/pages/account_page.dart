import 'package:flutter/material.dart';
import 'package:instagram_ui/components/bubble_stories.dart';
import 'package:instagram_ui/components/explored_grid.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300], shape: BoxShape.circle)),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '257',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text('Publicaciones')
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '5878',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text('Seguidores')
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '412',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                              Text('Siguiendo')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sergio',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'He desarrollado varios proyectos',
                        ),
                        Text(
                          'github.com/sergiocamilocastillo',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text('Editar perfil'),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text('Configuración'),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text('Editar perfil'),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: Row(
                  children: [
                    BubbleStories(text: 'Historia 1'),
                    BubbleStories(text: 'Historia 2'),
                    BubbleStories(text: 'Historia 3')
                  ],
                ),
              ),
              TabBar(tabs: [
                Tab(icon: Icon(Icons.grid_3x3_outlined)),
                Tab(icon: Icon(Icons.video_call)),
                Tab(icon: Icon(Icons.shop)),
                Tab(icon: Icon(Icons.person))
              ]),
              Expanded(
                  child: TabBarView(
                children: [
                  ExploredGrid(),
                  ExploredGrid(),
                  ExploredGrid(),
                  ExploredGrid()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
