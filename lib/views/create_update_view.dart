import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/providers/product_provider.dart';
import 'package:myapp/types/product.dart';
import 'package:myapp/widgets/drawer_widget.dart';


class CreateUpdateView extends ConsumerStatefulWidget {
  const CreateUpdateView({super.key});

  @override
  ConsumerState<CreateUpdateView> createState() => _CreateUpdateViewState();
}

class _CreateUpdateViewState extends ConsumerState<CreateUpdateView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _urlImageController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  Future<void> _createProduct() async {
    try {
      final String name = _nameController.text;
      final int stock = int.parse(_stockController.text);
      final double price = double.parse(_priceController.text);
      final String urlImage = _urlImageController.text;
      final String description = _descriptionController.text;

      final product = Product(
        id: '',
        name: name,
        stock: stock,
        price: price,
        urlImage: urlImage,
        description: description,
        v: 0,
      );

      print("Creating product: ${product.toJson()}");

      final createProduct = ref.read(createProductProvider);

      await createProduct(product);

      print("Product created successfully");
      
      // Navegar a la lista de productos después de crear el producto
      Navigator.of(context).pop();
    } catch (e) {
      print("Failed to create product: $e");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to create product: $e'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        title: Text('Create/Update'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: _stockController,
              decoration: InputDecoration(labelText: 'Stock'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            TextFormField(
              controller: _urlImageController,
              decoration: InputDecoration(labelText: 'URL Image'),
            ),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
            ElevatedButton(
              onPressed: _createProduct,
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
  }
}
