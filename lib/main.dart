import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Assessment Flutter UI 28 November 2025';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey.shade200,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // popular data
  final List<Map<String, dynamic>> popular = [
    {
      'name': 'Expert Plumbing',
      'price': 45,
      'duration': "",
      'rating': 4.5,
      'viewers': 120,
      'category': 'Plumber',
      'logo':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqg_VCu6kmdT5z2A0ay0MXTvxWOZMc5YVFuA&s',
    },
    {
      'name': 'Electrical Services',
      'price': 40,
      'duration': "/hour",
      'rating': 4.9,
      'viewers': 250,
      'category': 'Electrician',
      'logo':
          'https://png.pngtree.com/thumb_back/fh260/background/20220205/pngtree-young-technician-working-on-broken-computer-device-technician-cpu-photo-image_29061486.jpg',
    },
    {
      'name': 'Deep Home Cleaning',
      'price': 55,
      'duration': "/session",
      'rating': 4.5,
      'viewers': 120,
      'category': 'Cleaner',
      'logo':
          'https://plus.unsplash.com/premium_photo-1661645250316-bba92bb37db0?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
  ];

  // small cards
  final List<Map<String, dynamic>> smallCards = [
    {'icon': Icons.plumbing, 'label': 'Plumber'},
    {'icon': Icons.electric_bolt, 'label': 'Electrician'},
    {'icon': Icons.construction, 'label': 'Carpenter'},
    {'icon': Icons.format_paint, 'label': 'Painter'},
    {'icon': Icons.handyman, 'label': 'Mason'},
    {'icon': Icons.build, 'label': 'Welder'},
    {'icon': Icons.local_florist, 'label': 'Rooter'},
    {'icon': Icons.more_horiz, 'label': 'More'},
  ];

  @override
  Widget build(BuildContext context) {
    final double avatarSize = 48;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          children: [
            // header
            Row(
              children: [
                CircleAvatar(
                  radius: avatarSize / 2,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, 🤚',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      Text(
                        'Khoyum Masalik',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Icon(Icons.notifications_none),
                ),
              ],
            ),
            SizedBox(height: 16),

            // search + filter
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search services, locations, etc...',
                              border: InputBorder.none,
                              isDense: true,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.search, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // big promo card
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1496317899792-9d7dbcd928a1?auto=format&fit=crop&w=1400&q=80',
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [Colors.black45, Colors.transparent],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 0,
                    bottom: 0,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Special Weekend Offer',
                              style: TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Exclusive Discounts on Home Service',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 12),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Book Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),

            // most booked services
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Most Booked Services',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text('View all')),
              ],
            ),
            SizedBox(height: 8),

            // small cards grid
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: smallCards.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final item = smallCards[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(12),
                      child: Icon(item['icon'], size: 24),
                    ),
                    SizedBox(height: 6),
                    Text(
                      item['label'],
                      style: TextStyle(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),

            SizedBox(height: 18),

            // popular near you
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Near You',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text('View all')),
              ],
            ),
            SizedBox(height: 8),

            Column(
              children: popular.map((p) {
                return PopularCard(
                  name: p['name'],
                  price: p['price'],
                  rating: p['rating'],
                  duration: p['duration'],
                  viewers: p['viewers'],
                  logo: p['logo'],
                  category: p['category'],
                );
              }).toList(),
            ),

            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class PopularCard extends StatelessWidget {
  final String name;
  final double price;
  final double rating;
  final int viewers;
  final String duration;
  final String logo;
  final String category;

  const PopularCard({
    Key? key,
    required this.name,
    required this.price,
    required this.rating,
    required this.viewers,
    required this.duration,
    required this.logo,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double imageSize = 72;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  logo,
                  width: imageSize,
                  height: imageSize,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 16,
                          color: Colors.grey.shade700,
                        ),
                        // SizedBox(width: 4),
                        Text(
                          '${price.toStringAsFixed(0)}',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '${duration}',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(Icons.star, size: 16, color: Colors.amber),
                        SizedBox(width: 4),
                        Text(
                          '${rating.toStringAsFixed(1)} ($viewers viewers)',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: Text(
                  category,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.person_outline, color: Colors.black),
                  label: Text(
                    'View Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart, color: Colors.white),
                  label: Text(
                    'Book Now',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
