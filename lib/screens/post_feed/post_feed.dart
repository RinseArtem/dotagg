import 'package:dotagg/screens/post_feed/post_feed_controller.dart';
import 'package:dotagg/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:dotagg/widgets/custom_bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:dotagg/widgets/game_card/game_card.dart';
import 'package:dotagg/widgets/post_card_compact/post_card_compact.dart';
import 'package:flutter/material.dart';

class PostFeedScreen extends StatefulWidget {
  const PostFeedScreen({super.key});

  @override
  State<PostFeedScreen> createState() => _PostFeedScreenState();
}

class _PostFeedScreenState extends State<PostFeedScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final PostFeedController _screenController = PostFeedController();

  @override
  void initState() {
    _screenController.esportsTabController = TabController(length: 2, vsync: this);
    _screenController.postsTabController = TabController(length: 3, vsync: this);
    _screenController.scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.edit)),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height + 70,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 4)),

              TabBar(
                controller: _screenController.esportsTabController,
                tabs: const [
                  Text('Матчи'),
                  Text('Турниры')
                ],
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 4)),

              SizedBox(
                height: 155,
                child: TabBarView(
                  controller: _screenController.esportsTabController,
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => GameCard(
                        width: MediaQuery.of(context).size.width * .75,
                        tournamentTitle: 'DreamLeague Season 23',
                        tournamentLogoUrl: 'https://dota2.ru/img/esport/tournament/848.webp',
                      ),
                    ),

                    ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) => Text('wewe'),
                    )
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 4)),

              TabBar(
                controller: _screenController.postsTabController,
                tabs: const [
                  Text('Интересное'),
                  Text('Новое'),
                  Text('Обсуждаемое'),
                ],
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 4)),

              Expanded(
                child: TabBarView(
                  controller: _screenController.postsTabController,
                  children: [
                    ListView.builder(
                      itemCount: 32,
                      itemBuilder: (context, index) => PostCardCompact(),
                    ),
                    Text('data'),
                    Text('data')
                  ],
                ),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
