
  //เกมทายเลข
import 'dart:io';
import 'package:guess_number/game.dart';

void main(){
  var game = Game();

  int result = 0;
  print('╔════════════════════════════════════════════');
  print('║             GUESS THE NUMBER           ');
  print('╟────────────────────────────────────────────');
  do{
    stdout.write('║ Guess the number between 1 and 100 : ');   //print แบบไม่ขึ้นบรรทัดใหม่
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == null){
      continue;
    }

    result = game.doGuess(guess);
  } while(result != 1);
  print('║                 THE END              ');
  print('╚════════════════════════════════════════════');

  //ถามผู้เล่นว่าเล่นอีกหรือไม่
  /*
  stdout.write('Do you want to play again? : ');
  var input = stdin.readLineSync();
  if(input == 'Yes'){
    main();
  }else if(input == 'No'){
    print('End Game.');
  }
   */

}
//การบ้าน ถามผู้เล่นว่าต้องการจะเล่นอีกมั้ย ถ้าเล่นอีกให้พิมพ์เลขต่อ ถ้าไม่ ให้จบเกม
