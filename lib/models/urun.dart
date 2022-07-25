// To parse this JSON data, do
//
//     final urun = urunFromJson(jsonString);

import 'dart:convert';

List<Urun> urunFromJson(String str) =>
    List<Urun>.from(json.decode(str).map((x) => Urun.fromJson(x)));

String urunToJson(List<Urun> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Urun {
  Urun({
    this.id,
    this.erpId,
    this.urunTip,
    this.adi,
    this.kodu,
    this.barkod,
    this.kategoriId,
    this.sira,
    this.bolumId,
    this.secenekliUrun,
    this.resim,
    this.oneCikanUrun,
    this.indirimliUrun,
    this.kampanyaliUrun,
    this.sefTavsiyesi,
    this.plu,
    this.servisAktif,
    this.selfServisAktif,
    this.paketServisAktif,
    this.rating,
    this.stokMiktar,
    this.ozellikId,
    this.kdvSatinalma,
    this.kdvSatis,
    this.kdvIade,
    this.kdvPerakendeSatis,
    this.kdvPerakendeIade,
    this.ozelAlan1,
    this.ozelAlan2,
    this.ozelAlan3,
    this.ozelAlan4,
    this.ozelAlan5,
    this.tIslemTarihi,
    this.tIslemiYapanKullaniciId,
    this.firmaKodu,
    this.senkKodu,
    this.senkDurumu,
    this.aktif,
    this.nfcId,
    this.rfId,
  });

  int? id;
  String? erpId;
  int? urunTip;
  String? adi;
  String? kodu;
  dynamic barkod;
  int? kategoriId;
  int? sira;
  int? bolumId;
  bool? secenekliUrun;
  String? resim;
  int? oneCikanUrun;
  int? indirimliUrun;
  int? kampanyaliUrun;
  int? sefTavsiyesi;
  dynamic plu;
  bool? servisAktif;
  bool? selfServisAktif;
  bool? paketServisAktif;
  int? rating;
  int? stokMiktar;
  dynamic ozellikId;
  int? kdvSatinalma;
  int? kdvSatis;
  int? kdvIade;
  int? kdvPerakendeSatis;
  int? kdvPerakendeIade;
  dynamic ozelAlan1;
  dynamic ozelAlan2;
  dynamic ozelAlan3;
  dynamic ozelAlan4;
  dynamic ozelAlan5;
  dynamic tIslemTarihi;
  dynamic tIslemiYapanKullaniciId;
  dynamic firmaKodu;
  dynamic senkKodu;
  dynamic senkDurumu;
  bool? aktif;
  dynamic nfcId;
  dynamic rfId;

  factory Urun.fromJson(Map<String, dynamic> json) => Urun(
        id: json["id"],
        erpId: json["erpId"] == null ? null : json["erpId"],
        urunTip: json["urunTip"],
        adi: json["adi"],
        kodu: json["kodu"] == null ? null : json["kodu"],
        barkod: json["barkod"],
        kategoriId: json["kategoriId"] == null ? null : json["kategoriId"],
        sira: json["sira"] == null ? null : json["sira"],
        bolumId: json["bolumId"] == null ? null : json["bolumId"],
        secenekliUrun:
            json["secenekliUrun"] == null ? null : json["secenekliUrun"],
        resim: json["resim"] == null ? null : json["resim"],
        oneCikanUrun:
            json["oneCikanUrun"] == null ? null : json["oneCikanUrun"],
        indirimliUrun:
            json["indirimliUrun"] == null ? null : json["indirimliUrun"],
        kampanyaliUrun:
            json["kampanyaliUrun"] == null ? null : json["kampanyaliUrun"],
        sefTavsiyesi:
            json["sefTavsiyesi"] == null ? null : json["sefTavsiyesi"],
        plu: json["plu"],
        servisAktif: json["servisAktif"] == null ? null : json["servisAktif"],
        selfServisAktif:
            json["selfServisAktif"] == null ? null : json["selfServisAktif"],
        paketServisAktif:
            json["paketServisAktif"] == null ? null : json["paketServisAktif"],
        rating: json["rating"] == null ? null : json["rating"],
        stokMiktar: json["stokMiktar"] == null ? null : json["stokMiktar"],
        ozellikId: json["ozellikId"],
        kdvSatinalma:
            json["kdvSatinalma"] == null ? null : json["kdvSatinalma"],
        kdvSatis: json["kdvSatis"] == null ? null : json["kdvSatis"],
        kdvIade: json["kdvIade"] == null ? null : json["kdvIade"],
        kdvPerakendeSatis: json["kdvPerakendeSatis"] == null
            ? null
            : json["kdvPerakendeSatis"],
        kdvPerakendeIade:
            json["kdvPerakendeIade"] == null ? null : json["kdvPerakendeIade"],
        ozelAlan1: json["ozelAlan1"],
        ozelAlan2: json["ozelAlan2"],
        ozelAlan3: json["ozelAlan3"],
        ozelAlan4: json["ozelAlan4"],
        ozelAlan5: json["ozelAlan5"],
        tIslemTarihi: json["tIslemTarihi"],
        tIslemiYapanKullaniciId: json["tIslemiYapanKullaniciId"],
        firmaKodu: json["firmaKodu"],
        senkKodu: json["senkKodu"],
        senkDurumu: json["senkDurumu"],
        aktif: json["aktif"],
        nfcId: json["nfcId"],
        rfId: json["rfId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "erpId": erpId == null ? null : erpId,
        "urunTip": urunTip,
        "adi": adi,
        "kodu": kodu == null ? null : kodu,
        "barkod": barkod,
        "kategoriId": kategoriId == null ? null : kategoriId,
        "sira": sira == null ? null : sira,
        "bolumId": bolumId == null ? null : bolumId,
        "secenekliUrun": secenekliUrun == null ? null : secenekliUrun,
        "resim": resim == null ? null : resim,
        "oneCikanUrun": oneCikanUrun == null ? null : oneCikanUrun,
        "indirimliUrun": indirimliUrun == null ? null : indirimliUrun,
        "kampanyaliUrun": kampanyaliUrun == null ? null : kampanyaliUrun,
        "sefTavsiyesi": sefTavsiyesi == null ? null : sefTavsiyesi,
        "plu": plu,
        "servisAktif": servisAktif == null ? null : servisAktif,
        "selfServisAktif": selfServisAktif == null ? null : selfServisAktif,
        "paketServisAktif": paketServisAktif == null ? null : paketServisAktif,
        "rating": rating == null ? null : rating,
        "stokMiktar": stokMiktar == null ? null : stokMiktar,
        "ozellikId": ozellikId,
        "kdvSatinalma": kdvSatinalma == null ? null : kdvSatinalma,
        "kdvSatis": kdvSatis == null ? null : kdvSatis,
        "kdvIade": kdvIade == null ? null : kdvIade,
        "kdvPerakendeSatis":
            kdvPerakendeSatis == null ? null : kdvPerakendeSatis,
        "kdvPerakendeIade": kdvPerakendeIade == null ? null : kdvPerakendeIade,
        "ozelAlan1": ozelAlan1,
        "ozelAlan2": ozelAlan2,
        "ozelAlan3": ozelAlan3,
        "ozelAlan4": ozelAlan4,
        "ozelAlan5": ozelAlan5,
        "tIslemTarihi": tIslemTarihi,
        "tIslemiYapanKullaniciId": tIslemiYapanKullaniciId,
        "firmaKodu": firmaKodu,
        "senkKodu": senkKodu,
        "senkDurumu": senkDurumu,
        "aktif": aktif,
        "nfcId": nfcId,
        "rfId": rfId,
      };
}
