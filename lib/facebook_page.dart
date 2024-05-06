import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> filter = [
  'Reels', 'You', 'Chats', 'Guides', 'Flutter'
];

List<String> labels = [
  'Anonymous Post', 'Feeling', 'Check'
];

class FacebookPage extends StatelessWidget {
  const FacebookPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.arrow_back, color: Colors.white, size: 30,),
        actions: [
          const Icon(Icons.search, color: Colors.white, size: 30,),
          SizedBox(width: size.width * 0.015,),
          const Icon(Icons.share, color: Colors.white, size: 30,),
          SizedBox(width: size.width * 0.015,),
          const Icon(Icons.menu, color: Colors.white, size: 30,),
          SizedBox(width: size.width * 0.015,),
        ]
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.2,
              width: size.width,
              child: Image.asset('assets/cover.jpg', fit: BoxFit.cover,)
            ),
            Container(
              padding: EdgeInsets.all(size.height * 0.01),
              color: Colors.blue,
              height: size.height * 0.05,
              width: size.width,
              child: const Text('Group by Egyptian Google Flutter Community'),
            ),
            Padding(
              padding: EdgeInsets.all(size.height * 0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'FlutterEgypt',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      SizedBox(width: size.width * 0.02,),
                      const Icon(Icons.arrow_forward_ios, size: 12,)
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.public, size: 15,),
                      SizedBox(width: size.width * 0.02,),
                      const Text(
                        'Public group • 75K members',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            foregroundColor: Colors.blue
                          ),
                          onPressed: (){
                            /// TODO onPressed joined
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.group),
                              SizedBox(width: size.width * 0.02,),
                              const Text('Joined'),
                              SizedBox(width: size.width * 0.01,),
                              const Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02,),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white
                          ),
                          onPressed: (){
                            /// TODO onPressed invite
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.person_add_alt_1_rounded),
                              SizedBox(width: size.width * 0.02,),
                              const Text('Invite'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height * 0.005,),
                  SizedBox(
                    height: size.height * 0.06,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filter.length,
                      itemBuilder: (ctx, index) => _buildButton(filter[index]),
                    ),
                  ),
                  SizedBox(height: size.height * 0.01,),
                  Divider(thickness: size.height * 0.005, color: Colors.blue[100],),
                  SizedBox(
                    height: size.height * 0.06,
                    child: Padding(
                      padding: EdgeInsets.all(size.height * 0.01),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Featured'),
                              Icon(Icons.info_outline)
                            ],
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: size.height * 0.005, color: Colors.blue[100],),
                  SizedBox(
                    height: size.height * 0.06,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(25)),
                            child: Image.asset('assets/profile.jpg')
                        ),
                      ),
                      title: SizedBox(
                        height: size.height * 0.05,
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                            labelText: 'Write something...',
                            labelStyle: Theme.of(context).textTheme.bodyLarge,
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                      trailing: CircleAvatar(
                          radius: 10,
                          child: Image.asset('assets/gallery.png')
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white70,
                    height: size.height * 0.06,
                    child: ListView(
                      padding: EdgeInsets.all(size.height * 0.01),
                      scrollDirection: Axis.horizontal,
                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Row(
                            children: [
                              const Icon(CupertinoIcons.eyeglasses, color: Colors.blue,),
                              Text(labels[0])
                            ],
                          ),
                        ),
                        SizedBox(width: size.width * 0.01,),
                        ElevatedButton(
                          onPressed: (){},
                          child: Row(
                            children: [
                              const Icon(Icons.tag_faces, color: Colors.yellow,),
                              Text(labels[1])
                            ],
                          ),
                        ),
                        SizedBox(width: size.width * 0.01,),
                        ElevatedButton(
                          onPressed: (){},
                          child: Row(
                            children: [
                              const Icon(Icons.location_on, color: Colors.red,),
                              Text(labels[2])
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: size.height * 0.005, color: Colors.blue[100],),
                  SizedBox(
                    height: size.height * 0.05,
                    child: Padding(
                      padding: EdgeInsets.all(size.height * 0.01),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Most relevant'),
                          Icon(Icons.edit_note)
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: size.height * 0.005, color: Colors.blue[100],),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(25)),
                          child: Image.asset('assets/profile.jpg')
                      ),
                    ),
                    title: const Text('Anonymous participant'),
                    subtitle: const Row(
                      children: [
                        Text('8h . '),
                        Icon(Icons.public, size: 15,)
                      ],
                    ),
                    trailing: const Icon(Icons.more_horiz),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label) {
    return ElevatedButton(
      onPressed: () {
        /// ToDo Handle button press (e.g., filter)
      },
      child: Row(
        children: [
          if(label == 'You')...[CircleAvatar(
              radius: 13,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                  child: Image.asset('assets/profile.jpg')
              ),
          ),
            const SizedBox(width: 5,)
          ],
          Text(label),
        ],
      ),
    );
  }
}