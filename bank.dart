import 'dart:io';

void main() {
  hg();
}
void hg() {
  stdout.write('Masukan pin :');
  var nama = stdin.readLineSync();
  String pin1 = "222";
  String pin2 = "666";
  int mony1 = 500000, mony2 = 200000;
  if (nama == pin1 || nama == pin2) {
    if (nama == pin1) {
    mtk(mony1,pin2,pin1 );
    }else if (nama == pin2) {
      
    
     mtk(mony2,pin1,pin2);
    }
  }else{
    print("password salah");
    main();
  }
}
void mtk(int mony,String pinsendiri,String pinlawan){
  String semuapin = pinsendiri;
  String pinlawanku = pinlawan;
  String nama = "Selamat datang di bank $pinlawan:\n 1.tarik tunai \n 2.Setor tunai \n 3.cek saldo \n 4.ganti akun \n 5.keluar \n pilih menu:";
int uang = mony;
  print('$nama' );
 String namaa = stdin.readLineSync();
  switch (namaa){
    case '1':
    tariktunai(pinlawanku,uang);
    break;
    case '2':
    setortunai(uang,pinlawan,pinsendiri);
    break;
    case '3':
    ceksaldo(uang,semuapin,pinlawanku);
    mtk(uang,semuapin,pinlawanku);
    break;
    case '4':
    hg();
    break;
    case '5':
    keluar();
    break;
  }
  
}

void ceksaldo(int uang,String pinku,String pinlawan) {
  int dana = uang;
 String pinme = pinku,pinla = pinlawan; 
  print(dana);
  mtk(dana,pinla,pinme);
}

void setortunai(int uang,String pin,String pinku) {
  String pinlawan = pinku;
  String pinsaya = pin;
  int dana = uang;
  stdout.write('rekening yang di tuju:');
  String jawab = stdin.readLineSync();
  if (jawab == pinku) {
    esekusisetor(pinlawan,pinsaya,dana);
  }else {
    print("pin salah");
    setortunai(dana, pin, pinku);
  }
}
void esekusisetor(String pinlawan,String pin,int dana){
stdout.write('Nominal kirim');
int jawab = int.parse(stdin.readLineSync());
print(' uang terkirim : $jawab') ;
int hasil = dana;
String pinku = pin;
String pinl = pinlawan;
int uangyanrtersimpan = hasil - jawab;
mtk(uangyanrtersimpan, pinku, pinl);
}
void keluar() {
  stdout.write('saya yakin ingin keluar:');
  String jawab = stdin.readLineSync();
  switch (jawab) {
    case 'Y':
    case 'y':
      print("anda keluar");
      main();
      break;

    case 'N':
    case 'n':
      print("lanjut");
      hg();
      break;

    default:
      print("Y Or N");
  }
}
void tariktunai(String nama,int uang){
  int dana = uang;
  String namaku = nama;
  stdout.write('Ambil Uang :');
  int hasil = int.parse(stdin.readLineSync());
  int total =   dana - hasil;
  print('sisa uang : $total');
  mtk(total,namaku,namaku);
}

