class peminjamaan {
    String namaPeminjam;
    int hariTerlambat;

    peminjamaan({required this.namaPeminjam, required this.hariTerlambat}) ;

    void hitungDenda(){
        if(hariTerlambat < 0){
            print('Hari keterlambatan tidak valid');
        }else {
        var hargaDenda = hariTerlambat * 5000; 
        print('Peminjam: $namaPeminjam | Keterlambatan: $hariTerlambat | Total Denda: $hargaDenda');
        }           
    }  
}

class dendaLaptop extends peminjamaan {
    int tarifDendaLaptopPerHari = 20000;
    bool kerusakan;

      dendaLaptop({required super.hariTerlambat, required super.namaPeminjam, required this.kerusakan});

      @override
       void hitungDenda(){
        var hargaDenda = hariTerlambat * 5000;
        var hargaKerusakan = hargaDenda + tarifDendaLaptopPerHari; 
        if(hariTerlambat < 0){
            print('Hari keterlambatan tidak valid');
        }else if(kerusakan){
            print('Peminjam: $namaPeminjam | Keterlambatan: $hariTerlambat | Total Denda: $hargaKerusakan');
        }else{
        print('Peminjam: $namaPeminjam | Keterlambatan: $hariTerlambat | Total Denda: $hargaDenda');
        }           
    }
}


void main() {
    var orang1 = peminjamaan(namaPeminjam: 'Sigma', hariTerlambat: 4);
    orang1.hitungDenda();
    var orang2 = dendaLaptop(namaPeminjam: 'Boom', hariTerlambat: 2, kerusakan: false);
    orang2.hitungDenda();
}