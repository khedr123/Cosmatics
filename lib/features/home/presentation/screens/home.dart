import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
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
              SizedBox(height: 12),
              Image.asset('assets/images/home_pic.png'),
              SizedBox(height: 26),
              Text(
                'Top rated products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.headLineTextColor,
                ),
              ),
              SizedBox(height: 14),
              Expanded(
                child: GridView.builder(itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,mainAxisSpacing: 20

                  ),
                  itemBuilder: (context, index) {
                    return Card(margin: EdgeInsets.symmetric(horizontal:8 ),
                      child: Column(spacing: 11,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            'https://cdn.pixabay.com/photo/2018/06/20/06/21/cosmetics-3485914_1280.jpg',
                          ),Text('   Face tint / lip tint'),Text("   44.99")
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
