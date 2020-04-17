import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Publicacion extends StatefulWidget {
  @override
  _PublicacionState createState() => _PublicacionState();
}

class _PublicacionState extends State<Publicacion> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> imagenes = [
      'lib/src/imagenes/bread-2796393_640.jpg',
      'lib/src/imagenes/hamburger-494706_640.jpg'
    ];
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child:Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                  child: Text('AH'),
                  radius: 27,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Text('Nombre',style: TextStyle(fontWeight: FontWeight.bold, fontSize:17.0 )),
                      Text('Ubicación',style: TextStyle(fontSize:15.0)),
                      Text('\$200000', style: TextStyle(fontSize:15.0)),
                    ]
                  ),
                  margin: EdgeInsets.only(left:5.0),
                )
              ],
            ),
            margin: EdgeInsets.only(bottom:5.0)
          ),
          Container(
            width: double.infinity,
            height: 300.0,
            child: Swiper(
              itemBuilder: (BuildContext context,int index){
                // return Image.network(imagenes[index],fit: BoxFit.fill,);
                return Image.asset(imagenes[index],fit: BoxFit.fill);
              },
              itemCount: 2,
              pagination: SwiperPagination(),
              control: SwiperControl(),
            )
          ),
          Row(children: <Widget>[
                IconButton(icon: Icon(Icons.favorite_border, color:Colors.black), iconSize:30.0, onPressed: null),
                Text('Hace 2 horas')
              ]
          )
        ]
      ),
      margin: EdgeInsets.only(top: 10.0)
    );
  }
}