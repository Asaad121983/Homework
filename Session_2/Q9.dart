void main() {
  int month = 4;  
  switch (month) {
    case 12:
    case 1:
    case 2:
      print('Winter');
      break;
    case 3:
    case 4:
    case 5:
      print('Spring');
      break;
    case 6:
    case 7:
    case 8:
      print('Summer');
      break;
    case 9:
    case 10:
    case 11:
      print('Autumn');
      break;
    default:
      print('Invalid month');
  }
}