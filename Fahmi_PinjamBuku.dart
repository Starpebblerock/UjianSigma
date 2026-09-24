class PinjamBuku {
  String nama;
  int jumlahPinjam;
  bool bebasDenda; // Challenge 2: Parameter bool bebasDenda

  // Constructor Named Parameters
  PinjamBuku({
    required this.nama,
    required this.jumlahPinjam,
    this.bebasDenda = true, // Default diset true jika tidak diisi
  });

  // Method untuk mengecek kelayakan
  void cekKelayakan() {
    // Challenge 1: Validasi jika jumlahPinjam < 0
    if (jumlahPinjam < 0) {
      print("Jumlah pinjaman tidak valid");
      return;
    }

    // Challenge 2: Pinjam diizinkan hanya jika jumlahPinjam < 3 DAN bebasDenda == true
    if (jumlahPinjam < 3 && bebasDenda == true) {
      print("Anggota: $nama | Status: Diizinkan Pinjam");
    } else {
      print("Anggota: $nama | Status: Pinjaman Penuh");
    }
  }
}

void main() {
  // Contoh Utama berdasarkan Soal
  PinjamBuku peminjam1 = PinjamBuku(nama: "Budi", jumlahPinjam: 2);
  peminjam1.cekKelayakan(); // Output: Anggota: Budi | Status: Diizinkan Pinjam

  // Pengujian Challenge 1 (Jumlah < 0)
  PinjamBuku peminjam2 = PinjamBuku(nama: "Budi", jumlahPinjam: -1);
  peminjam2.cekKelayakan(); // Output: Jumlah pinjaman tidak valid

  // Pengujian Challenge 2 (Terkena Denda)
  PinjamBuku peminjam3 = PinjamBuku(nama: "Budi", jumlahPinjam: 2, bebasDenda: false);
  peminjam3.cekKelayakan(); // Output: Anggota: Budi | Status: Pinjaman Penuh
}