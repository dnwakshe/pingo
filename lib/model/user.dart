import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
class UserField {
  static final String lastMessageTime = 'lastMessageTime';
}
class User {
  final int idUser;
  final String name;
  final String urlAvatar;
  
  const User({
    required this.idUser,
    required this.name,
    required this.urlAvatar,
    
  });
}