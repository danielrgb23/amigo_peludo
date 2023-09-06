import 'package:amigo_peludo/Screens/adote/AdoteScreen.dart';
import 'package:amigo_peludo/Theme/ThemeColors.dart';
import 'package:amigo_peludo/components/bottomNavBar.dart';
import 'package:amigo_peludo/helpers/cardHome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: ThemeColors.primary),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.07, 76.44, 24.07, 24),
              child: CardHome(
                image: const AssetImage('assets/images/pet1.png'),
                color: ThemeColors.pink,
                isRight: true,
                textTitle: 'Adote',
                textContent: 'Encontre\no seu fiel\ncompanheiro.',
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Home(
                      page: 4,
                    );
                  }));
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.07, 0, 24.07, 24),
              child: CardHome(
                image: const AssetImage('assets/images/pet2.png'),
                color: ThemeColors.blue,
                isRight: false,
                textTitle: 'Veterinário',
                textContent: 'Cuide de\nquem você\nama.',
                onPress: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.07, 0, 24.07, 24),
              child: CardHome(
                image: const AssetImage('assets/images/pet3.png'),
                color: ThemeColors.yellow,
                isRight: true,
                textTitle: 'Meu Pet',
                textContent: 'Amigos\nde patas.',
                onPress: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.07, 0, 24.07, 24),
              child: CardHome(
                image: const AssetImage('assets/images/pet3.png'),
                color: Colors.white,
                isRight: true,
                textTitle: 'Perfil',
                textContent: 'Meus\ndados.',
                onPress: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
