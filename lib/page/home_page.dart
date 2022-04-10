import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:justhere/widget/planet/planet_widget.dart';

class HomeAdvertisingArea extends StatelessWidget {
  const HomeAdvertisingArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HomeAdvertisingClipPath(),
      child: Container(
        height: 210,
        width: double.infinity,
        child: Image.asset(
          'assets/images/home2.jpeg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class HomeAdvertisingClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class HomeMajorChooseArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Color(0xFFE5E5E5))),
        child: DropdownButton(
            value: "旅游",
            isExpanded: true,
            underline: SizedBox(),
            items: ['旅游', '食品'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (value) {}));
  }
}

class ProvinceChoose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: DropdownButton(
            value: "广东省",
            isExpanded: true,
            underline: SizedBox(),
            items: ['广东省', '湖北省'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (value) {}));
  }
}

class CityChoose extends StatelessWidget {
  CityChoose({required this.province});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: DropdownButton(
            value: "广州市",
            isExpanded: true,
            underline: SizedBox(),
            items: ['广州市', '汕头市'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
            onChanged: (value) {}));
  }

  final String province;
}

class HomePlaceChooseArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: double.infinity,
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Color(0xFFE5E5E5))),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ProvinceChoose(),
            SizedBox(width: 30),
            CityChoose(province: "广东省"),
          ],
        ));
  }
}

class PlanetElementWidget extends StatelessWidget {
  PlanetElementWidget({required this.city, this.colorValue = 0xFFFFE082}) {}

  final String city;
  final int colorValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(Size(30, 30)),
      child: Column(children: [
        ClipOval(
            child: Container(color: Color(colorValue), width: 12, height: 12)),
        Text(
          "广州",
          style: TextStyle(fontSize: 10),
        )
      ]),
    );
  }
}

class HomePlanetArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: 300,
      width: double.infinity,
      child: PlanetWidget(children: [
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
        PlanetElementWidget(city: "广州市"),
      ]),
    );
  }
}

class RandomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 50,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Expanded(
            child: ElevatedButton(child: Text("开始随机"), onPressed: () {})));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JustHere", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: _onMenuButtonPressed,
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/message.svg'),
            onPressed: _onMessageButtonPressed,
          )
        ],
      ),
      body: Column(
        children: [
          HomeAdvertisingArea(),
          HomeMajorChooseArea(),
          SizedBox(height: 8),
          HomePlaceChooseArea(),
          HomePlanetArea(),
          RandomButton()
        ],
      ),
    );
  }

  void _onMenuButtonPressed() {}
  void _onMessageButtonPressed() {}
}
