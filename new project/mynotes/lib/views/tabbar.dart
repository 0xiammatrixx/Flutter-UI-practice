import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold( backgroundColor: Colors.white,
        appBar: AppBar( backgroundColor: Colors.blue,
          title: const Text('MyApp'),
          bottom: const TabBar(indicatorColor: Colors.black,
          //isScrollable: true,
            
            tabs: [Tab(icon: Icon(Icons.chat),
          text: 'CHATS',),
          Tab(icon: Icon(Icons.search),
          text: 'SEARCH',),
          Tab(icon: Icon(Icons.group),
          text: 'GROUPS',),],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text('Chats', style: GoogleFonts.merriweather(fontSize: 30,),)),
          Center(child: Text('Search', style: GoogleFonts.dancingScript(fontSize: 30, fontWeight: FontWeight.bold),)),
          Center(child: Text('Groups',  style: GoogleFonts.roboto(fontSize: 30) )),
        ],),
      ),
    );
  }
}
