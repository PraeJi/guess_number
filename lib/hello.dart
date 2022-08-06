
  //เกมทายเลข
import 'dart:io';
import 'package:guess_number/game.dart';

void main(){
  var game = Game();

  int result = 0;
  do{
    stdout.write('Please guess the number between 1 and 100 : ');   //print แบบไม่ขึ้นบรรทัดใหม่
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!)!;
    if(guess == null){
      print('enter number only');
      continue;
    }

    result = game.doGuess(guess);
  } while(result != 1);

  //ถามผูุ้เล่นว่าจะเล่นอีกหรือไม่
  stdout.write('Do you want to play again? : ');
  var input = stdin.readLineSync();
  if(input == 'No'){
    print('End Game.');
  } else if(input == 'Yes'){
    main();
  }


}
//การบ้าน ถามผู้เล่นว่าต้องการจะเล่นอีกมั้ย ถ้าเล่นอีกให้พิมพ์เลขต่อ ถ้าไม่ ให้จบเกม
