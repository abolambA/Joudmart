import 'package:flutter/material.dart';

class Added extends StatelessWidget {
  const Added({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 400,
          maxHeight: 400,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width - 60,
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.blue,
                    size: 70,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'تمت اضافة\n المنتج الى السلة',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Janna LT'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Added_love extends StatelessWidget {
  const Added_love({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 400,
          maxHeight: 400,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width - 60,
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.blue,
                    size: 70,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'تمت اضافة\n المنتج الى المفضلة',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Janna LT'),
              )
            ],
          ),
        ),
      ),
    );
  }
}