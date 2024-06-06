import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_widget.dart';

class ProductsList extends StatelessWidget{
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Scaffold(
      appBar: AppBar(
        title: const Text('Products_List')
        ,
      ),
      drawer:const DrawerWidget(),
      body: Column (
 

      
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text aligned to the left
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Primera equipacion de Ecuador',
// Suggested code may be subject to a license. Learn more: ~LicenseLog:676824946.
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold  , fontStyle: FontStyle.italic),
                
                ),
                
              ),
              // Image aligned to the right
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu3ErhNty2r38s-0I3JXcS3W2QEtr1GoY5uw&s',
                height: 200,
                width: size.width * 0.60,
                fit: BoxFit.cover,
              ),
            ],
      )]
    ),
  );
    
  }


}