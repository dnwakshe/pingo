import 'package:pingo/model/user.dart';

class Message {
  late final User sender;
  late final String time;
  late final String text;
  late bool isLiked;
  late bool unread;
  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });  

}
final User currentUser = User(
  idUser: 0,
  name: 'Current User',
  urlAvatar: "https://www.whatsappimages.in/wp-content/uploads/2020/11/Boys-Free-Feeling-Sad-Pics-Images-Download-300x205.jpg",
 ); 
 final User ganesh = User(
  idUser: 1,
  name: 'Ganesh',
  urlAvatar: "assets/images/ganesh.JPG",
 ); 
  final User dnyaneshwar = User(
  idUser: 2,
  name: 'Dnyaneshwar',
  urlAvatar: "assets/images/d1.jpg",
 ); 
 final User omkar = User(
  idUser: 3,
  name: 'Omkar',
  urlAvatar: "assets/images/omkar.JPG",
 ); 
 final User chaitanya = User(
  idUser: 4,
  name: 'Chaitanya',
  urlAvatar: "assets/images/chaitanya.jpg",
 ); 
 final User aniket = User(
  idUser: 5,
  name: 'Aniket',
  urlAvatar: "assets/images/aniket.jpg",
 ); 
  final User qaiser = User(
  idUser: 6,
  name: 'Qaiser',
  urlAvatar: "assets/images/qaiser.JPG",
 ); 
 final User satyam = User(
  idUser: 7,
  name: 'Satyam',
  urlAvatar: "assets/images/satyam.png",
 ); 
final User aarush = User(
  idUser: 8,
  name: 'Aarush',
  urlAvatar: "assets/images/aarush.jpg",
 ); 
 final User abrar = User(
  idUser: 9,
  name: 'Abrar',
  urlAvatar: "assets/images/abrar.png",
 ); 
// Example for user list 
List<Message> chats =[
  Message(sender: omkar, time: "1:00 PM", text: "Hello , I am Omkar", isLiked: false, unread: false),
  Message(sender: ganesh, time: "2:00 pm", text: "hey how are u?", isLiked: false, unread: true),
  Message(sender: qaiser, time: "3:00 pm", text: "Kaise ho?", isLiked: false, unread: true),
  Message(sender: dnyaneshwar, time: "4:00 PM", text: "okay.", isLiked: false, unread: false),
  Message(sender: aniket, time: "5:00 PM", text: "mg ks kaya chally", isLiked: true, unread: true),
  Message(sender: satyam, time: "5:10 PM", text: "kaise ho bhai?", isLiked: false, unread: true),
  Message(sender: aarush, time: "5:20 PM", text: "hello from MH?", isLiked: false, unread: true),
   Message(sender: abrar, time: "5:50 PM", text: "kas ky bhau bara ahe na?", isLiked: false, unread: true),
];
// Example message for chatting screen
List<Message> messages =[
  Message(sender: currentUser, time: "12:30 PM", text: "Hello , I am user", isLiked: false, unread: true),
  Message(sender: omkar, time: "1:00 PM", text: "Hello , I am Omkar", isLiked: true, unread: true),
  Message(sender: ganesh, time: "2:00 pm", text: "hey how are u?", isLiked: true, unread: true),
   Message(sender: currentUser, time: "12:30 PM", text: "एक नंबर भावा .. ", isLiked: true, unread: true),
  Message(sender: qaiser, time: "3:00 pm", text: "Kaise ho?", isLiked: false, unread: true),
  Message(sender: dnyaneshwar, time: "4:00 PM", text: "okay.", isLiked: false, unread: true),
  Message(sender: aniket, time: "5:00 PM", text: "mg ks kaya chally", isLiked: false, unread: true),

];
// Example of favourit list
List<User> favourit =[omkar,ganesh,qaiser,aniket,dnyaneshwar,aarush,satyam,abrar];


