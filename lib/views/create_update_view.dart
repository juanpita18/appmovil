import 'package:flutter/material.dart';
import 'package:myapp/widgets/drawer_widget.dart';
class CreateUpdateView extends StatelessWidget {
  const CreateUpdateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const DrawerWidget(),
      appBar: AppBar(
        title: Text('Create/Update'),
      ),
      body: Container(
      padding: EdgeInsets.all(20.0),
    child: Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(labelText: 'Name'),
        ),
        TextFormField(
          decoration:
 InputDecoration(labelText: 'Stock'),
          keyboardType: TextInputType.number,
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Price'),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'URL Image'),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'Description'),
          maxLines: 3,
        ),
         ElevatedButton(
  onPressed: () {
    // Acción a realizar cuando se presiona el botón, 
    // por ejemplo, navegar a una pantalla de pago.
    
  },
  child: const Text('Guardar'),
),

      ],
      
    ),
   
   )
   );
  }
}