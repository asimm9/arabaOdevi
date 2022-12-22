class araba{
  String marka = "";
  String model = "";
  int uretimYili = 0;
  int fiyat = 0; 

  araba(this.marka, this.model, this.uretimYili, this.fiyat){

  }
  @override
  String toString() => "marka: $marka , model: $model , üretim yılı: $uretimYili , fiyat: $fiyat";

  
  void fiyatAzalatma(int indirimTutari){
    this.fiyat = fiyat - indirimTutari;
    print("yeni fiyat : ${fiyat}");
  }

  
  
  void fiyatArttirma(int zamTutari){
    this.fiyat = fiyat + zamTutari;
    print("yeni fiyat : ${fiyat}");
  }
}