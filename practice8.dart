import 'dart:io';

void main(){
  binary_search();
}
void binary_search(){ //game
  int min = 0;
  int max = 128;
  int steps = 0;
  int middle = getMiddle(min, max);
  String ans = "";
  print('загадываете число и потом программа попытается угадать , но для этого вы должны писать less либо greater');
  
  while(ans != 'yes'){
    
    print('ваше число $middle ?');
    ans = stdin.readLineSync()!;

    if(ans == 'greater'){
      min = middle;
      middle = getMiddle(min, max);
      steps++;


    }else if(ans == 'less'){
      max = middle;
      middle = getMiddle(min, max);      
      steps++;
    }else if(ans == 'yes'){
      print(steps);
      print('the end');

    }
  }

  } 
  int getMiddle(int min, int max){
  return (min + max) ~/ 2;
}