import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class StartSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 190.0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.3,
            ),
            items: [
              buildCarouselItem('assets/Dilan.jpg', ' ', '    ,   '),
              buildCarouselItem('assets/172days.jpg', '  ', '     ,   '),
              buildCarouselItem('assets/onepiece.jpg', '  ', '   -      '),
              buildCarouselItem('assets/anakrantau.jpg', ' ', '    ,   '),
              buildCarouselItem('assets/Dilan.jpg', '  ', '     ,   '),
              buildCarouselItem('assets/172days.jpg', '  ', '   -      '),
              buildCarouselItem('assets/onepiece.jpg', ' ', '    ,   '),
              buildCarouselItem('assets/anakrantau.jpg', '  ', '     ,   '),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Vocational Book",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/tkj.png")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/tei.png")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/webooks.png")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/brf.png")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/animasibooks.png")),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                "Your Recently Borrowed Book",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/onepiece.jpg")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/Dilan.jpg")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/anakrantau.jpg")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/Dilan.jpg")),
                ),
                Container(
                  width: 150,
                  height: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Image.asset("assets/anakrantau.jpg")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCarouselItem(String imagePath, String title, String description) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
