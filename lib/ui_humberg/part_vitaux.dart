
import 'package:abacusapp/ui_humberg/Allergies.dart';
import 'package:abacusapp/ui_humberg/bord.dart';
import 'package:abacusapp/ui_humberg/consultation.dart';
import 'package:abacusapp/ui_humberg/imaginary_medical.dart';
import 'package:abacusapp/ui_humberg/suivi.dart';
import 'package:flutter/material.dart';

class Pvitaux extends StatefulWidget {
  const Pvitaux({Key? key}) : super(key: key);


  @override
  State<Pvitaux> createState() => _PvitauxState();
}

class _PvitauxState extends State<Pvitaux> {

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

              ListTile(
                leading: const Icon(Icons.apartment),
                title: const Text(
                  'imagineris medical',
                  style: TextStyle(fontSize: 24.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const Imaginary(
                        //title: 'imaginarie medical',
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
        title: const Text("Pvitaux"));


  }

  Container _buildBody() {
    return Container(

    );
  }
}
