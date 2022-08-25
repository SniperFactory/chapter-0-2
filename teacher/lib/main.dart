// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final inputText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '당신의 생년월일을 입력하세요',
              style: TextStyle(color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              width: 300,
              child: TextField(
                // onChanged: (value) => print(value),
                controller: inputText,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  hintText: '2001-01-01',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      print(inputText.text);
                    },
                  ),
                ),
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                children: const [
                  Image(
                    image: AssetImage('images/messi.jpeg'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    '아직 마음의 갈피를 잡지 못하는 감이 있기는 하지만 과거 보다는 훨씬 안정을 되찾게 될 것입니다. 두뇌 회전이 빠른 때이니 지적 능력을 충분히 발휘하는 일을 하는 것이 좋습니다. 싱글인 분이라면 영화처럼 달콤한 사랑이 다가오는 날입니다. 하지만 그러한 당신을 질투 어린 시선으로 누군가 바라볼 수 있겠네요. 동성의 친구들 중 사수자리의 태클을 잘 피해야 성공 확률이 높아집니다.재물운이 매우 좋은 때입니다. 다른 사람의 말을 듣다가 오히려 낭패를 보니 자신의 판단을 믿도록 하세요. 내기를 하거나 대회에 참가하면 좋은 성과를 얻을 수 있는 때이기도 합니다.',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
