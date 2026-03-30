import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false, 
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const ResumePage(),
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Profile Section
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Prashant Sharma',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'BE IT Student',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Divider(),

              //--------------------------------------------------------------------------------------------
              // Contact Section
              const Text(
                'Contact Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Address: Mumbai, India'),
              const Text('Phone: +91-7506056968'),
              const Text('Email: prashant.h.o.sharma@gmail.com'),

              const SizedBox(height: 20),
              const Divider(),


              //-------------------------------------------------------------------------------------------------------------------
              // Personal Details
              const Text(
                'Personal Details',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Date of Birth: 20/01/2006'),
              const Text('Languages: English, Hindi'),
              const Text('Nationality: Indian'),

              const SizedBox(height: 20),
              const Divider(),

              //-------------------------------------------------------------------------------------------------------

              // Skills Section
              const Text(
                'Skills',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                children: const [
                  Chip(label: Text('C')),
                  Chip(label: Text('Java')),
                  Chip(label: Text('Python')),
                  Chip(label: Text('Flutter')),
                  Chip(label: Text('Machine Learning')),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(),

              //-----------------------------------------------------------------------------------------------------------------
              
              //Education
              const Text('Education', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              
            Column(
             children: [ Row(
                children:[
                  Expanded(child: buildBox('Std'),),
                  Expanded(child: buildBox('School'),),
                  Expanded(child: buildBox('Year Of Passing'),),
                  Expanded(child: buildBox('Percentage'),),
                ],
              ),

              Row(
                children:[
                  Expanded(child: buildBox('10'),),
                  Expanded(child: buildBox('St Annes\' High School'),),
                  Expanded(child: buildBox('2021'),),
                  Expanded(child: buildBox('81%'),),
                ],
              ),

              Row(
                children:[
                  Expanded(child: buildBox('12'),),
                  Expanded(child: buildBox('Nirmala Memorial Foundation'),),
                  Expanded(child: buildBox('2023'),),
                  Expanded(child: buildBox('78%'),),
                ],
              ),
                ],
              ),


              const Divider(),
              
              //-----------------------------------------------------------------------------------------------------------------

              // Projects Section
              const Text(
                'Projects',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('- Carbon Emission Tracking App'),
              const Text('- Traffic Management System using ESP32'),

              const SizedBox(height: 20),
              const Divider(),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildBox(String text)
{
    return Container(
      height: 80,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      // borderRadius: BorderRadius.circular(8),
      ),

     child: Center(
        child: Text(
          text,
    textAlign: TextAlign.center,
        ),

     ),
    );
    
  }
}
