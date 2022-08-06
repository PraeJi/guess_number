import 'dart:math';

class Game{        //ชื่อ class ใช้ตัวพิมพ์ใหญ่ตัวแรกเท่านั้น
  int answer = 0;  //instance field
  int count = 0;

  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1;   //สุ่มเลขตั้งแต่ 1-100
    print('คำตอบคือ $answer');
  }

  int doGuess(int num){        //method
    if(num > answer){
      print('║ ➜ $num is TOO HIGH! ▲');
      print('╟────────────────────────────────────────────');
      count++;
      return 0;
    } else if(num < answer){
      print('║ ➜ $num is TOO LOW! ▼');
      print('╟────────────────────────────────────────────');
      count++;
      return 0;
    } else{
      count++;
      print('║ ➜ $num is CORRECT ❤, Total guesses : $count');
      print('╟────────────────────────────────────────────');
      return 1;
    }
  }
}