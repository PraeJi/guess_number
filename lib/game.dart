import 'dart:math';

class Game{        //ชื่อ class ใช้ตัวพิมพ์ใหญ่ตัวแรกเท่านั้น
  int answer = 0;  //instance field

  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1;   //สุ่มเลขตั้งแต่ 1-100
    print('คำตอบคือ $answer');
  }

  int doGuess(int num){        //method
    if(num > answer){
      print('$num is too high');
      return 0;
    } else if(num < answer){
      print('$num is too low');
      return 0;
    } else{
      print('$num is correct');
      return 1;
    }
  }
}