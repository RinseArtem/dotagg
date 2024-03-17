import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  final String tournamentTitle;
  final String tournamentLogoUrl;
  final double width;

  const GameCard({
    super.key,
    required this.width,
    required this.tournamentTitle,
    required this.tournamentLogoUrl
  });

  @override
  State<GameCard> createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {

        },
        child: Container(
          width: widget.width,
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Tournament(
                  title: widget.tournamentTitle,
                  logoUrl: widget.tournamentLogoUrl
              ),

              Padding(padding: EdgeInsets.symmetric(vertical: 8)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _Team(
                      title: 'Virtus Pro',
                      logoUrl: 'https://dota2.ru/img/esport/csgo/teams/7.png',
                      coefficient: 3.51
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          '1 - 1',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )
                        ),
                      ),
                      Text('Live', style: TextStyle(color: Color(0xffF63D68)))
                    ],
                  ),

                  _Team(
                    title: 'Team Liquid',
                    logoUrl: 'https://dota2.ru/img/esport/csgo/teams/3.png',
                    coefficient: 1.49
                  ),
                ],
              ),

              // Padding(padding: EdgeInsets.symmetric(vertical: 4)),
              //
              // ElevatedButton(onPressed: () {}, child: Text('Подробнее'))
            ],
          ),
        ),
      ),
    );
  }
}

class _Tournament extends StatefulWidget {
  final String title;
  final String logoUrl;
  const _Tournament({required this.title, required this.logoUrl});

  @override
  State<_Tournament> createState() => _TournamentState();
}

class _TournamentState extends State<_Tournament> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 12,
            backgroundImage: NetworkImage(widget.logoUrl),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 4)),
          Text(widget.title, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class _Team extends StatefulWidget {
  final String title;
  final String logoUrl;
  final double coefficient;
  const _Team({required this.title, required this.logoUrl, required this.coefficient});

  @override
  State<_Team> createState() => _TeamState();
}

class _TeamState extends State<_Team> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(widget.logoUrl, width: 42),
        Padding(padding: EdgeInsets.symmetric(vertical: 4)),
        Text(widget.title, style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        )),
        Text('${widget.coefficient}', style: TextStyle(fontSize: 10))
      ],
    );
  }
}


