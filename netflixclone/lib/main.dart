import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/components/listItems.dart';
import 'package:netflixclone/components/sliderItems.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'components/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetFlix(),
    );
  }
}

class NetFlix extends StatefulWidget {
  const NetFlix({Key? key}) : super(key: key);

  @override
  State<NetFlix> createState() => _NetFlixState();
}

class _NetFlixState extends State<NetFlix> {
  List<String> carousselUrl = [
    "https://uhdwallpapers.org/uploads/converted/19/09/21/joker-4k-poster-1600x900_666674-mm-90.jpg",
    "https://financerewind.com/wp-content/uploads/2020/07/cursed-season-2-netflix-renewal-status-1200x675.png",
    "https://miro.medium.com/max/2800/0*6dysw-Riawp4PO6u",
  ];
  List<String> movieTitle = [
    "JOKER",
    "Cursed",
    "Kimetsu no yaiba : Mugen Train"
  ];
  List<String> movieImgUrl = [
    "https://lumiere-a.akamaihd.net/v1/images/p_mulan2020_20204_b005decc.jpeg?region=0,0,540,810",
    "https://upload.wikimedia.org/wikipedia/en/2/21/Kimetsu_no_Yaiba_Mugen_Ressha_Hen_Poster.jpg",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSa4t8Yz7dxTAWBZtbNhmpEYepiV_Yw8KMRf69NyjtPqbPm-LPr",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROKKn9ftbhxcRQf0NSSW4YfXPex6eyY95FrhEfU7OoTiDYRpky",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTkZO-tgLmMFndFVdrFSetlssgOYf4M_i1kSfZ62vJRuBCtShRc",
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff121212),
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Text(
          'Netflix',
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print(height);
              print(width);
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent Movies & Series',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 12.0 / 816 * height,
              ),
              CarouselSlider(
                items: [
                  sliderItems(
                    carousselUrl[0],
                    movieTitle[0],
                  ),
                  sliderItems(
                    carousselUrl[1],
                    movieTitle[1],
                  ),
                  sliderItems(
                    carousselUrl[2],
                    movieTitle[2],
                  ),
                ],
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  height: .34 * height,
                  enlargeCenterPage: true,
                ),
              ),
              Text(
                'Recomndation',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10.0 / 816 * height,
              ),
              Container(
                height: 360 / 816 * height,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListItems(movieImgUrl[0], 'Mulan'),
                    ListItems(movieImgUrl[1], 'Demon Slyaer Infinite Train'),
                    ListItems(movieImgUrl[2], 'Ragnarok'),
                    ListItems(movieImgUrl[3], 'The Letter for the King'),
                    ListItems(movieImgUrl[4], 'Cursed'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff212121),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff212121),
            icon: Icon(Icons.file_download),
            label: 'Downloaded',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff212121),
            icon: Icon(Icons.playlist_play),
            label: 'Playlist',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff212121),
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
