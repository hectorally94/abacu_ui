
import 'package:abacusapp/ui_humberg/Allergies.dart';
import 'package:abacusapp/ui_humberg/bord.dart';
import 'package:abacusapp/ui_humberg/consultation.dart';
import 'package:abacusapp/ui_humberg/part_vitaux.dart';
import 'package:abacusapp/ui_humberg/suivi.dart';
import 'package:flutter/material.dart';

class Imaginary extends StatefulWidget {
  const Imaginary({Key? key}) : super(key: key);


  @override
  State<Imaginary> createState() => _ImaginaryState();
}

class _ImaginaryState extends State<Imaginary> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(

                accountEmail: Text('ally'),
                accountName: Text(
                  'Jane Doe',
                  style: TextStyle(fontSize: 24.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
              ),
              ListTile(
                leading: const Icon(Icons.house),
                title: const Text(
                  'Tableau de bord',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Bord(
                        //title: 'Tableau de bord',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.apartment),
                title: const Text(
                  'Allergies',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Allergies(
                        //title: 'Allergies',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.apartment),
                title: const Text(
                  'parametre vitaux',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Pvitaux(
                        //title: 'parametre vitaux',
                      ),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.apartment),
                title: const Text(
                  'consultation',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Consultation(
                        //title: 'consultation',
                      ),
                    ),
                  );
                },
              ),

              ListTile(
                leading: const Icon(Icons.apartment),
                title: const Text(
                  'suivi des hospitalize',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Suivi(
                        //title: 'suivi des hospitalize',
                      ),
                    ),
                  );
                },
              ),

            
            ],
          ),
        ));
  }
  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.black45,
        title: const Text("Imaginary"));


  }

  Container _buildBody() {
    return Container(

    );
  }
}
