import 'package:cosmatics_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
            color: AppColors.headLineTextColor,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                labelText: 'Search',
              ),
            ),
            SizedBox(height: 32,),
            ListTile(trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios)),
              leading: ClipRRect(borderRadius: BorderRadiusGeometry.circular(10),
                child: SizedBox(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/06/20/06/21/cosmetics-3485914_1280.jpg',
                  ),
                ),
              ),
              title: Text('Title', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
    );
  }
}
