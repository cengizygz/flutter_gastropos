// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.id,
    this.kullaniciAdi,
    this.sifre,
    this.yetkiGrup,
    this.adiSoyadi,
    this.kisaKodAdi,
    this.terminalId,
    this.kasaId,
    this.krediKasaId,
    this.osUserId,
    this.mpaketCarikartId,
    this.kuryeCarikartId,
    this.aktiflik,
    this.resim,
    this.referansTip,
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
    this.trafikIzleme,
    this.erpSyncYetki,
    this.aktif,
    this.nfcId,
    this.rfId,
  });

  int? id;
  String? kullaniciAdi;
  String? sifre;
  int? yetkiGrup;
  String? adiSoyadi;
  String? kisaKodAdi;
  int? terminalId;
  int? kasaId;
  int? krediKasaId;
  String? osUserId;
  dynamic mpaketCarikartId;
  int? kuryeCarikartId;
  bool? aktiflik;
  dynamic resim;
  int? referansTip;
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
  bool? trafikIzleme;
  bool? erpSyncYetki;
  bool? aktif;
  String? nfcId;
  dynamic rfId;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        kullaniciAdi:
            json["kullaniciAdi"] == null ? null : json["kullaniciAdi"],
        sifre: json["sifre"],
        yetkiGrup: json["yetkiGrup"],
        adiSoyadi: json["adiSoyadi"],
        kisaKodAdi: json["kisaKodAdi"] == null ? null : json["kisaKodAdi"],
        terminalId: json["terminalId"] == null ? null : json["terminalId"],
        kasaId: json["kasaId"],
        krediKasaId: json["krediKasaId"] == null ? null : json["krediKasaId"],
        osUserId: json["osUserId"] == null ? null : json["osUserId"],
        mpaketCarikartId: json["mpaketCarikartId"],
        kuryeCarikartId:
            json["kuryeCarikartId"] == null ? null : json["kuryeCarikartId"],
        aktiflik: json["aktiflik"],
        resim: json["resim"],
        referansTip: json["referansTip"] == null ? null : json["referansTip"],
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
        trafikIzleme:
            json["trafikIzleme"] == null ? null : json["trafikIzleme"],
        erpSyncYetki:
            json["erpSyncYetki"] == null ? null : json["erpSyncYetki"],
        aktif: json["aktif"] == null ? null : json["aktif"],
        nfcId: json["nfcId"] == null ? null : json["nfcId"],
        rfId: json["rfId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kullaniciAdi": kullaniciAdi == null ? null : kullaniciAdi,
        "sifre": sifre,
        "yetkiGrup": yetkiGrup,
        "adiSoyadi": adiSoyadi,
        "kisaKodAdi": kisaKodAdi == null ? null : kisaKodAdi,
        "terminalId": terminalId == null ? null : terminalId,
        "kasaId": kasaId,
        "krediKasaId": krediKasaId == null ? null : krediKasaId,
        "osUserId": osUserId == null ? null : osUserId,
        "mpaketCarikartId": mpaketCarikartId,
        "kuryeCarikartId": kuryeCarikartId == null ? null : kuryeCarikartId,
        "aktiflik": aktiflik,
        "resim": resim,
        "referansTip": referansTip == null ? null : referansTip,
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
        "trafikIzleme": trafikIzleme == null ? null : trafikIzleme,
        "erpSyncYetki": erpSyncYetki == null ? null : erpSyncYetki,
        "aktif": aktif == null ? null : aktif,
        "nfcId": nfcId == null ? null : nfcId,
        "rfId": rfId,
      };
}
