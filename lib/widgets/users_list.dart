
import 'package:flutter/material.dart';
import 'package:part_9/models/User.dart';
import 'package:part_9/screens/UserDetailScreen.dart';

List<User> usersList = [
  User(
    age: 16,
    firstName: 'Иван',
    lastName: 'Иванов',
    phone: '78005553535',
    email: 'example@mail.ru',
    avatar: 'https://i.pinimg.com/564x/48/fd/87/48fd8782309c48954c3ae02076b8a7af.jpg'),
    User(
    age: 16,
    firstName: 'Иван',
    lastName: 'Иванов',
    phone: '78005553535',
    email: 'example@mail.ru',
    avatar: ''),
    User(
    age: 16,
    firstName: 'Иван',
    lastName: 'Иванов',
    phone: '78005553535',
    email: 'example@mail.ru',
    avatar: 'https://i.pinimg.com/564x/bc/3c/b6/bc3cb6fb5df03fbb30876eccac348ff1.jpg'),
];

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usersList.length, 
      itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
          MaterialPageRoute(
            builder: (context) => UserDetailScreen(
              user: usersList[index],
          ),
          ),
          );
        },
        child: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: usersList[index].avatar == ''
                        ? Image.network('http://cdn.onlinewebfonts.com/svg/img_207975.png')
                        : Image.network(usersList[index].avatar,
                            fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Имя: ' + usersList[index].firstName,
                        textAlign: TextAlign.left,
                        ),
                        Text('Фамилия: ' + usersList[index].lastName),
                        Text('Возраст: ' + usersList[index].age.toString()),
                        Text('Телефон: ' + usersList[index].phone),
                        Text('Email: ' + usersList[index].email),
                      ],
                    ),
                  ),
                ],
              )
          ],
        ),
        ),
      );
    });
  }
}