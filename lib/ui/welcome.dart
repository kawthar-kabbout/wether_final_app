import 'package:flutter/material.dart';
import 'package:wether_final_app/ui/home.dart';

import '../models/city.dart';
import '../models/constants.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    // Récupérer la taille de l'écran
    Size size = MediaQuery.of(context).size;

    // Liste des villes non définies comme par défaut
    List<City> cities =
        City.citiesList.where((city) => !city.isDefault).toList();

    // Liste des villes sélectionnées
    List<City> selectedCities = City.getSelectedCities();

    Constants myConstants = Constants();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: myConstants.secondaryColor,
        title: Center(
          child: Text(
            '${selectedCities.length} selected',
            style: const TextStyle(
              color: Colors.white, // Définit la couleur du texte
            ),
            textAlign:
                TextAlign.center, // Centre le texte dans son propre espace
          ),
        ),
        centerTitle: true, // S'assure que le titre est centré dans l'AppBar
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: size.height * 0.08,
            width: size.width, // Utilisation correcte de size.width
            decoration: BoxDecoration(
                border: cities[index].isSelected
                    ? Border.all(
                        color: myConstants.secondaryColor.withOpacity(0.6),
                        width: 2,
                      )
                    : Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: myConstants.primayColor.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3))
                ]),

            child: Row(
              children: [
                GestureDetector(
                  ///onclique
                  onTap: () {
                    setState(() {
                      cities[index].isSelected = !cities[index].isSelected;
                    });
                  },
                  child: Image.asset(
                    cities[index].isSelected
                        ? 'assets/checked.png'
                        : 'assets/unchecked.png',
                    width: 30,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  cities[index].city,
                  style: TextStyle(
                      fontSize: 16,
                      color: cities[index].isSelected
                          ? myConstants.primayColor
                          : Colors.black),
                )
              ],
            ),
          );
        },
      ),

      ////add the floating button

      floatingActionButton: FloatingActionButton(
        backgroundColor: myConstants.secondaryColor,
        child: const Icon(Icons.pin_drop),
        onPressed: () {
          /// pour le console :  print(selectedCities.length);
          /// navigateure pour le home page
          ///
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        },
      ),
    );
  }
}
