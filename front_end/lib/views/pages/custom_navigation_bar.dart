/*import 'package:flutter/material.dart';

class BarNavigation extends StatefulWidget {
  const BarNavigation({ key }) : super(key: key);
  @override
  _BarNavigationState createState() => _BarNavigationState();
}

class _BarNavigationState extends State<BarNavigation> {

  int currentTab = 2;
  final List<Widget> screens = [
    Regras(),
    SolicitacaoDoacao(),
    Maps(),
    Menu(),
    CampExper()
  ];

  final PageStorageBucket bucket= PageStorageBucket();
  Widget currentScreen = Menu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: Colors.white,
        
        child: Icon(Icons.home,color: currentTab ==2?Colors.pinkAccent[400] : Colors.grey[300],size: 35),
        onPressed: () {
         setState(() {
                      currentScreen = Menu();
                      currentTab = 2;                                             
                      });
        },
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin:5,
        child: Container(
          height: 60,
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                      currentScreen = SolicitacaoDoacao();
                      currentTab = 0;                                             
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Icon(Icons.favorite, color: currentTab ==0?Colors.pinkAccent[400] : Colors.grey[300],size: 31),
                          Text('Solicitações',style: TextStyle(color: currentTab==0? Colors.pinkAccent[400] : Colors.grey[300],fontSize: 13),)
                      ],
                    ),
                    ),


                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                      currentScreen = Maps();
                      currentTab = 1;                                             
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Icon(Icons.place, color: currentTab ==1?Colors.pinkAccent[400] : Colors.grey[300],size: 33),
                          Text('Mapa',style: TextStyle(color: currentTab==1? Colors.pinkAccent[400] : Colors.grey[300],fontSize: 13),)
                      ],
                    ),
                    ),

                  Container(width:33,
                  margin: EdgeInsets.only(right: 7,left:5),
                  ),
                 

                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                      currentScreen = Regras();
                      currentTab = 3;                                             
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Icon(Icons.library_books, color: currentTab ==3?Colors.pinkAccent[400] : Colors.grey[300],size: 29),
                          Text('Regras',style: TextStyle(color: currentTab==3? Colors.pinkAccent[400] : Colors.grey[300],fontSize: 13),)
                      ],
                    ),
                    ),

                  MaterialButton(
                    minWidth: 50,
                    onPressed: (){
                      setState(() {
                      currentScreen = CampExper();
                      currentTab = 4;                                             
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Icon(Icons.verified, color: currentTab ==4?Colors.pinkAccent[400] : Colors.grey[300],size: 29,),
                          Text('Campanhas',style: TextStyle(color: currentTab==4? Colors.pinkAccent[400] : Colors.grey[300],fontSize: 13),)
                      ],
                    ),
                    )
                  
                ]
        ),
                ]
      ),
        
    )));
  }
}*/