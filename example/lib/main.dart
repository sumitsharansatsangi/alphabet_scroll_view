import 'package:flutter/material.dart';
import 'package:alphabet_scroll_view/alphabet_scroll_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {}

  List<String> list = [
    'रतालू',
    'शलजम',
    'अरवी',
    'करेला',
    'सेम फली',
    'आलू',
    'गाजर',
    'पत्ता गोभी',
    'कटहल',
    'खीरा',
    'लौकी',
    'अदरक',
    'लहसुन',
    'प्याज',
    'कद्दू',
    'गुलाब',
    'Rose',
    'कमल का फूल',
    'Lotus',
    'गेंदे का फूल',
    'Marigold',
    'चमेली',
    'Jasmine',
    'सूरजमुखी',
    'Sunflower',
    'गुडहल',
    'Hibiscus',
    'कुमुदिनी',
    'Lily',
    'गुलबहार',
    'Daisy',
    'नीलकमल',
    'Blue Water lily',
    'कनेर',
    'Oleander',
    'छुई-मुई',
    'Touch Me Not',
    'गुलमेंहदी',
    'Balsam',
    'नलिनी',
    'Tulip',
    'सदाबहार',
    'Periwinkle',
    'नाग चम्पा',
    'Cobra Saffron',
    'अमलतास',
    'Golden Shower Flower',
    'गुलदाउदी',
    'Chrysanthemum',
    'कुमुद' 'Red lotus',
    'अपराजिता',
    'angel',
    'bubbles',
    'shimmer',
    'angelic',
    'bubbly',
    'glimmer',
    'baby',
    'pink',
    'little',
    'butterfly',
    'sparkly',
    'doll',
    'sweet',
    'sparkles',
    'dolly',
    'sweetie',
    'sprinkles',
    'lolly',
    'princess',
    'fairy',
    'honey',
    'snowflake',
    'pretty',
    'sugar',
    'cherub',
    'lovely',
    'blossom',
    'Ecophobia',
    'Hippophobia',
    'Scolionophobia',
    'Ergophobia',
    'Musophobia',
    'Zemmiphobia',
    'Geliophobia',
    'Tachophobia',
    'Hadephobia',
    'Radiophobia',
    'Turbo Slayer',
    'Cryptic Hatter',
    'Crash TV',
    'Blue Defender',
    'Toxic Headshot',
    'Iron Merc',
    'Steel Titan',
    'Stealthed Defender',
    'Blaze Assault',
    'Venom Fate',
    'Dark Carnage',
    'Fatal Destiny',
    'Ultimate Beast',
    'Masked Titan',
    'Frozen Gunner',
    'Bandalls',
    'Wattlexp',
    'Sweetiele',
    'HyperYauFarer',
    'Editussion',
    'Experthead',
    'Flamesbria',
    'HeroAnhart',
    'Liveltekah',
    'Linguss',
    'Interestec',
    'FuzzySpuffy',
    'Monsterup',
    'MilkA1Baby',
    'LovesBoost',
    'Edgymnerch',
    'Ortspoon',
    'Oranolio',
    'OneMama',
    'Dravenfact',
    'Reallychel',
    'Reakefit',
    'Popularkiya',
    'Breacche',
    'Blikimore',
    'StoneWellForever',
    'Simmson',
    'BrightHulk',
    'Bootecia',
    'Spuffyffet',
    'Rozalthiric',
    'Bookman'
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: AlphabetScrollView(
              list: list.map((e) => AlphaModel(e)).toList(),
              // isAlphabetsFiltered: false,
              alignment: LetterAlignment.right,
              itemExtent: 50,
              unselectedTextStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
              selectedTextStyle: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
              overlayWidget: (value) => Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Theme.of(context).primaryColor,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '$value'.toUpperCase(),
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
              itemBuilder: (_, k, id) {
                return Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ListTile(
                    title: Text('$id'),
                    subtitle: Text('Secondary text'),
                    leading: Icon(Icons.person),
                    trailing: Radio<bool>(
                      value: false,
                      groupValue: selectedIndex != k,
                      onChanged: (value) {
                        setState(() {
                          selectedIndex = k;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
