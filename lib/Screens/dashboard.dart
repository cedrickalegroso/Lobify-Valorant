import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;

  // Get a reference your Supabase client
  final supabase = Supabase.instance.client;

  test() async {
    final data = await supabase.from('users').select('geh');

    print("DATAAAA!!");
    print(data);
  }

  @override
  void initState() {
    super.initState();
    test();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0A0A),
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIconTheme: const IconThemeData(color: Color(0xffE42F2F)),
              indicatorColor: const Color(0xff1D1D1D),
              backgroundColor: const Color(0xff1D1D1D),
              selectedIndex: _selectedIndex,
              groupAlignment: groupAlignment,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: labelType,
              leading: showLeading
                  ? FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: const Icon(Icons.add),
                    )
                  : const SizedBox(),
              trailing: showTrailing
                  ? IconButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      icon: const Icon(Icons.more_horiz_rounded),
                    )
                  : const SizedBox(),
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.favorite_border),
                  selectedIcon: Icon(Icons.favorite),
                  label: Text('First'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bookmark_border),
                  selectedIcon: Icon(Icons.book),
                  label: Text('Second'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.star_border),
                  selectedIcon: Icon(Icons.star),
                  label: Text('Third'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            const Expanded(child: LookingToPlayPage())
          ],
        ),
      ),
    );
  }
}

class LookingToPlayPage extends StatefulWidget {
  const LookingToPlayPage({Key? key}) : super(key: key);

  @override
  _LookingToPlayPagePageState createState() => _LookingToPlayPagePageState();
}

class _LookingToPlayPagePageState extends State<LookingToPlayPage> {
  @override
  void initState() {
    super.initState();
  }

  //282828

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0A0A),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.width / 24,
        title: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 32,
            right: MediaQuery.of(context).size.width / 32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Looking to Play',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 80,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffFF0000)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'LIVE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: const Color(0xff282828),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Template2(),
            Template1(),
            Template2(),
            Template1(),
            Template2(),
            Template1(),
            Template2(),
            Template1(),
            Template2(),
            Template1(),
            Template2(),
            Template1(),
            Template2(),
            Template1(),
            Template2(),
            Template1(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff393737),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Template1 extends StatefulWidget {
  const Template1({Key? key}) : super(key: key);

  @override
  _Template1PageState createState() => _Template1PageState();
}

class _Template1PageState extends State<Template1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 24,
        right: MediaQuery.of(context).size.width / 24,
      ),
      color: const Color(0xff0F0F0F),
      height: MediaQuery.of(context).size.height / 12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
                size: MediaQuery.of(context).size.width / 32,
                color: const Color(0xff393232),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 32,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Astra',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Preffered Agent',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jargo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                '#Malakas 🇵🇭', //848484
                style: TextStyle(
                    color: const Color(0xff848484),
                    fontSize: 24,
                    fontWeight: FontWeight.normal),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff313131)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Controller',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff313131)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Hong Kong',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff313131)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Competitive',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff4C534C)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Comms Verified',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
                size: MediaQuery.of(context).size.width / 32,
                color: const Color(0xff393232),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Radiant',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Template2 extends StatefulWidget {
  const Template2({Key? key}) : super(key: key);

  @override
  _Template2PageState createState() => _Template2PageState();
}

class _Template2PageState extends State<Template2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 24,
        right: MediaQuery.of(context).size.width / 24,
      ),
      color: const Color(0xff0A0A0A),
      height: MediaQuery.of(context).size.height / 12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
                size: MediaQuery.of(context).size.width / 32,
                color: const Color(0xff393232),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 32,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Astra',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Preffered Agent',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jargo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                '#Malakas 🇵🇭', //848484
                style: TextStyle(
                    color: const Color(0xff848484),
                    fontSize: 24,
                    fontWeight: FontWeight.normal),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff313131)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Controller',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff313131)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Hong Kong',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff313131)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Competitive',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff4C534C)),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                  child: Text(
                    'Comms Verified',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
                size: MediaQuery.of(context).size.width / 32,
                color: const Color(0xff393232),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 126,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Radiant',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
