import 'package:flutter/material.dart';

class PostCardCompact extends StatefulWidget {
  const PostCardCompact({super.key});

  @override
  State<PostCardCompact> createState() => _PostCardCompactState();
}

class _PostCardCompactState extends State<PostCardCompact> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CardHeader(
              avatarUrl: 'https://dota2.ru/img/forum/avatars/l/687/687266.jpg',
              nickName: 'Rinse',
              postingDate: '4 часа назад'
            ),
            _CardTitle(title: '[ДОЗОР] "Павшая корона" и Ringmaster.'),
            _CardFooter()
            // _CardBody()
          ],
        ),
      ),
    );
  }
}


class _CardHeader extends StatefulWidget {
  final String avatarUrl;
  final String nickName;
  final String postingDate;
  const _CardHeader({required this.avatarUrl, required this.nickName, required this.postingDate});

  @override
  State<_CardHeader> createState() => _CardHeaderState();
}

class _CardHeaderState extends State<_CardHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(widget.avatarUrl),
        ),

        Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 4)),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.nickName, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
            Text(widget.postingDate, style: TextStyle(fontSize: 10))
          ],
        )
      ],
    );
  }
}

class _CardBody extends StatefulWidget {
  const _CardBody();

  @override
  State<_CardBody> createState() => _CardBodyState();
}

class _CardBodyState extends State<_CardBody> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



class _CardTitle extends StatefulWidget {
  final String title;
  const _CardTitle({required this.title});

  @override
  State<_CardTitle> createState() => _CardTitleState();
}

class _CardTitleState extends State<_CardTitle> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsetsDirectional.symmetric(vertical: 4)),
        
        Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 14)),
        
        Padding(padding: EdgeInsetsDirectional.symmetric(vertical: 4)),
        
        Text('Dota 2   Патч   Дозор', style: TextStyle(fontSize: 10))
      ],
    );
  }
}

class _CardFooter extends StatefulWidget {
  const _CardFooter();

  @override
  State<_CardFooter> createState() => _CardFooterState();
}

class _CardFooterState extends State<_CardFooter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 4),
      child: Column(
        children: [
          Divider(thickness: .5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _CardFooterIconButton(counter: 11, icon: Icons.mode_comment),
                  Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 8)),
                  _CardFooterIconButton(counter: 11, icon: Icons.remove_red_eye_rounded)
                ],
              ),

              Row(
                children: [
                  // _CardFooterIconButton(customIcon: 'https://cdn.7tv.app/emote/60af9e3b52a13d1adb78e15e/1x.webp', counter: 1),

                  _CardFooterIconButton(icon: Icons.add),

                  _CardFooterIconButton(counter: 11, icon: Icons.arrow_upward, iconColor: Color(0xff12B76A)),

                  _CardFooterIconButton(counter: 1, icon: Icons.arrow_downward, iconColor: Color(0xffF04438)),


                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _CardFooterIconButton extends StatefulWidget {
  final int? counter;
  final IconData? icon;
  final Color? iconColor;
  final String? customIcon;
  const _CardFooterIconButton({this.counter, this.icon, this.iconColor, this.customIcon});

  @override
  State<_CardFooterIconButton> createState() => _CardFooterIconButtonState();
}

class _CardFooterIconButtonState extends State<_CardFooterIconButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 4)),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.all(Radius.circular(4)),
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.customIcon == null)
                  Icon(
                    widget.icon,
                    size: 18,
                    color: widget.iconColor,
                  ),

                if (widget.customIcon != null)
                  Image.network(widget.customIcon!, height: 20),

                if (widget.counter != null)
                  Padding(padding: EdgeInsetsDirectional.symmetric(horizontal: 2)),

                if (widget.counter != null)
                  Text('${widget.counter}',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                    )
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}