import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_widget.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:475906733.
class HomeView extends StatelessWidget {
  const HomeView({super.key });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        
      ),
      drawer:const DrawerWidget(),
      body: Center (
 

      
        child:Column(
        children: [
          
          // Add the image with a fixed height and expanded width
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://www.eluniverso.com/resizer/hsXqOSIcaOevAKtPbxqo9NEbX0o=/1004x670/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/T3A2XBKAQZGMZIO3VMK2HVXEQE.jpg',
            height: 200,
            width: 290,
            fit: BoxFit.cover,
          ),
          )
          ,
          // Rest of the body content
          const Center(

            child: Text('La mejor ropa de la historia'),
            
          ),
          const Spacer(),
          const Text ('para moverse entre las paginas presione en las 3 lineas de la parte superio izquierda ' ,
          textAlign:TextAlign.center 
          ,
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
          ))
        ],
      ),
   

      )
      );
  }



} 