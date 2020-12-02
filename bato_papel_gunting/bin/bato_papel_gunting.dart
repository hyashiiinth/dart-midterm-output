import 'dart:io';
import 'dart:math';
import 'dart:core';

String getPlayerMove() {
  print("Papel, Gunting, Bato! What's your Pick? ");
  String selection = stdin.readLineSync();

  switch (selection) {
    case "Papel":
    case "papel":
    case "PAPEl":
      return "papel";
      break;
    case "Gunting":
    case "gunting":
    case "GUNTING":
      return "gunting";
      break;
    case "Bato":
    case "bato":
    case "BATO":
      return "bato";
      break;
    default:
      return "Quit";
      break;
  }
}

String getBotMove() {
  Random random = new Random();
  int move = random.nextInt(3); //random int from 0 to 2

  switch (move) {
    case 0:
      return "papel";
      break;
    case 1:
      return "gunting";
      break;
    case 2:
      return "bato";
      break;
    default:
      break;
  }
}

String game(String playerMove, String botMove) {
  if (playerMove == botMove) {
    return "It's A Tie \n";
  } else if (playerMove == "bato" && botMove == "gunting") {
    return "You Win! \n";
  } else if (playerMove == "gunting" && botMove == "papel") {
    return "You Win! \n";
  } else if (playerMove == "papel" && botMove == "bato") {
    return "You Win! \n";
  } else {
    //if it's not a tie and you didn't win, computer won
    return "Computer Wins!";
  }
}

void main() {
  while (true) {
    String playerMove = getPlayerMove();

    if (playerMove == "Quit") {
      return; //returning from void function exits it
    } else if (playerMove == "papel") {
      var papel = '\u{1F4C3}';
      print(papel);
    } else if (playerMove == "gunting") {
      var gunting = '\u{2702}';
      print(gunting);
    } else if (playerMove == "bato") {
      var bato = '\u{1FAA8}';
      print(bato);
    }

    String botMove = getBotMove();
    print("Bot: $botMove");
    print(game(playerMove, botMove));
  }
}
