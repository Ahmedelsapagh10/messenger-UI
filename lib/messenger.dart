import 'package:flutter/material.dart';
import 'package:newapp/model.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  @override
  List<MyModel> myData = [
    MyModel(name: 'Ahmed Mohamed', image: 'assets/images/1.jpg'),
    MyModel(name: 'Ali Lotfy', image: 'assets/images/2.jpg'),
    MyModel(name: 'Mohamed Mahmoud', image: 'assets/images/3.jpg'),
    MyModel(name: 'sh3ban Essa', image: 'assets/images/4.jpg'),
    MyModel(name: 'hamada Ali', image: 'assets/images/5.jpg'),
    MyModel(name: 'Abdelmeged elsayed', image: 'assets/images/6.jpg'),
    MyModel(name: 'Ahmed Mohamed', image: 'assets/images/7.jpg'),
    MyModel(name: 'Ali Mohamed Ali', image: 'assets/images/8.jpg'),
    MyModel(name: 'Ahmed Mohamed', image: 'assets/images/9.jpg'),
    MyModel(name: 'Abdelmeged elsayed', image: 'assets/images/10.jpg'),
    MyModel(name: 'hamada Ali', image: 'assets/images/11.jpg'),
    MyModel(name: 'Ali Mohamed Ali', image: 'assets/images/12.jpg'),
    MyModel(name: 'Abdelmeged elsayed', image: 'assets/images/13.jpg'),
    MyModel(name: 'Ahmed Mohamed', image: 'assets/images/14.jpg'),
    MyModel(name: 'hamada Ali', image: 'assets/images/15.jpg'),
    MyModel(name: 'Ahmed Mohamed', image: 'assets/images/16.jpg'),
    MyModel(name: 'Abdelmeged elsayed', image: 'assets/images/17.jpg'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Stack(alignment: Alignment.topRight, children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/1.jpg'),
            ),
            Container(
              width: 15,
              height: 15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
              child: Text(
                '2',
              ),
            )
          ]),
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[700]),
                child: Icon(
                  Icons.camera_alt,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                width: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[700]),
                child: Icon(
                  Icons.edit,
                )),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 90, 90, 90),
                ),
                child: TextFormField(
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    labelText: 'search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: myData.map((e) {
                    return Container(
                      width: 75,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage(
                                      e.image,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 5,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  )
                                ]),
                          ),
                          Text(
                            e.name,
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList()),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    children: myData.map((e) {
                  return Container(
                    height: 70,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage(
                                    e.image,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  height: 22,
                                  width: 22,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 5,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                )
                              ]),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.name,
                              maxLines: 2,
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'call me again',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '. 12 : 49',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }).toList()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
