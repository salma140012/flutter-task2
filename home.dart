import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       backgroundColor: Colors.blueGrey,
        title: Text('employees'),

      ),
      body: Center(
        child: ListView(
          children: [
            ContactCard(name: 'Salma',mail: 'salmaayman@gmail.com',phone: '0111111111',position: 'team leader',image:'https://image.freepik.com/free-vector/young-woman-avatar-character-vector-illustration-design_24877-18520.jpg',),
            ContactCard(name: 'Nour',mail: 'nourayman@gmail.com',phone: '0100000000',position: 'employee',image:'https://image.freepik.com/free-vector/young-woman-avatar-character-vector-illustration-design_24877-18537.jpg',),
            ContactCard(name: 'Farida',mail: 'faridaayman@gmail.com',phone: '01200000000',position: 'manger',image:'https://img.freepik.com/vecteurs-libre/jeune-femme-avatar-caractere-vector-illustration-design_24877-18471.jpg?size=338&ext=jpg',),

          ],
        ) ,
      ),
    );
  }
}

class ContactCard extends StatelessWidget {


  final String name,mail,phone,position,image;
  ContactCard({required this.name,required this.mail,required this.phone,required this.position,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 350.0,
      height: 180.0,
      margin: EdgeInsets.fromLTRB(20.0, 55.0, 20.0, 8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Colors.white,
          width: 0.5,

        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(image),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                Row(
                  children: [
                    Icon(Icons.mail,color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(mail,style: TextStyle(color: Colors.white),),

                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB( 5.0,  2.0,  0.0, 20.0,),
                    child: Icon(CupertinoIcons.phone_solid,color: Colors.white,),),
                    Padding(
                      padding: EdgeInsets.fromLTRB( 5.0,  2.0,  0.0, 20.0,),

                      child: Text(phone,style: TextStyle(color: Colors.white),),



                    ),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.favorite_border,color: Colors.white,),
                    Icon(Icons.favorite_border,color: Colors.white,),
                    Icon(Icons.favorite_border,color: Colors.white,),
                    Icon(Icons.work,color: Colors.white,),
                    Text(position,style: TextStyle(color: Colors.white),),


                    Padding(
                      padding: EdgeInsets.only(left: 5.0),



                    ),
                  ],
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.delete,color: Colors.white,),
                )
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
