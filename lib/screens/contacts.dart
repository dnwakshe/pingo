// //import 'package:contacts_service/contacts_service.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter_contact/contact.dart';
// //import 'package:flutter_contact/contacts.dart' ;  
// import 'package:flutter_contacts/flutter_contacts.dart';


// class ContactsPage extends StatefulWidget {
//   @override
//   _ContactsPageState createState() => _ContactsPageState();
// }

// class _ContactsPageState extends State<ContactsPage> {
//   List<Contact> contactlist= [];
//   @override
//   void initState(){
//     super.initState();
//     getAllConttats();
//   }

//   getAllConttats() async {
//      // List<Contact> _contacts =(await ContactsService.getContacts()).toList();
//     // List<Contact> contactsList = (await ContactsService.getContacts()).toList(); 
//     List<Contact> contacts = (await FlutterContacts.getContacts()).toList();
//       print(contacts.toString());
//       setState(() {
        
//          contactlist=   contacts;
              
//       });
//   }
//  @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: (Text('Contacts')),
//       ),
//     body: Container(
//       child: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("this is list"),
//             //Contact (id: );

//             ListView.builder(
//               shrinkWrap:true,
//               itemCount: contactlist.length,
//               itemBuilder: (BuildContext  context,intndex){
           
               
//                 return ListTile(
//                  title:  Text(contactlist.toString()),
                 
//                 );
//               },
              
//               )
//           ],
//         ),
//       ),),
//     );
//   }
// }

