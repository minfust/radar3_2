import 'dart:io';
void main() {
  var graf = List.generate(8,(i) => List.filled(8,0), growable : false);
  graf = [[0, 3, 8, 0, 0, 0, 0, 0], [0, 0, 0, 2, 12, 9, 0, 0],
    [0, 0, 0, 3, 0, 0, 15, 0], [0, 0, 0, 0, 0, 6, 7, 0],
    [0, 0, 0, 0, 0, 2, 0, 7], [0, 0, 0, 0, 0, 0, 3, 9],
    [0, 0, 0, 0, 0, 0, 0, 4], [0, 0, 0, 0, 0, 0, 0, 0]];

  for (int i=0; i<8; i++){
    print(graf[i]);
  }

  for(int k = 0; k<8;++k) {
    for (int i = 0; i < 8; ++i) {
      for (int j = 0; j < 8; ++j) {
        if ((graf[i][k] * graf[k][j] != 0) && (i != j))
          if ((graf[i][k] + graf[k][j] < graf[i][j]) || (graf[i][j] == 0))
            graf[i][j] = graf[i][k] + graf[k][j];
      }
    }
  }
  print('-----------------');
  for(int i=0; i<8; i++){
    stdout.write('от вершины ${i+1} : ');
    for(int k = 0; k<8;k++){
    stdout.write('${graf[i][k]} ');}
    print(' ');
  }
  }