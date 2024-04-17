import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../story_item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/view/insta_story_view/logo.webp',
              width: 100,
            )
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/view/insta_story_view/camera.svg',
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(0.8),
                BlendMode.srcIn,
              )),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/view/insta_story_view/send.svg',
                colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.8),
                  BlendMode.srcIn,
                )),
          ),
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 10),
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      StoryItemView(
                          image: "https://i.insider.com/5cbe0ab30ff30d1fd1092726",
                          name: "Captain",
                          seen: false),
                      StoryItemView(
                          image:
                          "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                          name: "Cam",
                          seen: true),
                      StoryItemView(
                          image:
                          "https://vignette.wikia.nocookie.net/spiderman-films/images/4/4e/CaptainAmerica_AOU_character-art-poster.jpg/revision/latest/scale-to-width-down/340?cb=20160507011012",
                          name: "Buster",
                          seen: false),
                      StoryItemView(
                          image: "https://i.insider.com/5cbe0ab30ff30d1fd1092726",
                          name: "peter",
                          seen: true),
                      StoryItemView(
                          image:
                          "https://vignette.wikia.nocookie.net/spiderman-films/images/4/4e/CaptainAmerica_AOU_character-art-poster.jpg/revision/latest/scale-to-width-down/340?cb=20160507011012",
                          name: "Edy",
                          seen: false),
                      StoryItemView(
                          image:
                          "https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Chris_Hemsworth_as_Thor.jpg/220px-Chris_Hemsworth_as_Thor.jpg",
                          name: "Thor",
                          seen: false),
                    ],
                  ),
                ),
              ],
            ), // 스토리 뷰 위젯
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Placeholder().padding(all: 10),
              Placeholder().padding(all: 10),
              Placeholder().padding(all: 10),
              Placeholder().padding(all: 10),
            ]
            ),
          ),
        ],
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}