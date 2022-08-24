import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 4, 
    
    child: Scaffold
    (

        appBar:AppBar(
      centerTitle: false,
      title: const Text('WhatsApp'),
    
      bottom: const TabBar(
        tabs: [
          Tab(
            child:  Icon(Icons.camera_alt),
            
             ),
       Tab(child:
          Text('CHATS'),
       ),
      
      Tab(
        child:  Text('STATUS'),
      
      ),
       
       Tab(child: Text('CALLS'),
       
       ),
        

      ]
      
      ),
     actions:  [
       const Icon(Icons.search),
        const SizedBox(width: 20,),

       PopupMenuButton(
        icon: const Icon(Icons.more_vert_outlined),
        itemBuilder: (context,)=> [
        
          const PopupMenuItem(
            value: '1',
            child: Text('New group'),
           ),
       
          const PopupMenuItem(
            value: '2',
            child: Text('New brodcast'),
           ),
       
          const PopupMenuItem(
            value: '3',
            child: Text('Linked Devices'),
           ),
       
       
        ]
       
        ),
        const SizedBox(width: 20,),
     ],
    ),

         body:  TabBarView(
      children: [
      const Text('Camera'),
      ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index)
         {
          return const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/65024078?v=4'),
            ),
            title: Text('Hamza Momin'),
            subtitle: Text('I made WhatsApp UI in Flutter'),
            trailing: Text('12:22 am'),
          );
        }

      ),
      
     ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index)
         {
          return const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/65024078?v=4'),
            ),
            title: Text('Hamza Momin'),
            subtitle: Text('Status'),
           
          );
        }

      ),

     ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index)
         {
          return const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/65024078?v=4'),
            ),
            title: Text('Hamza Momin'),
            subtitle: Text('Missed Call'),
            trailing: Icon(Icons.phone_missed ),
          );
        }

      ),


    ]
    
    ) ,
   
    ),
    


    );
    
    
  }
}