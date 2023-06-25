// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
    String id;
    int chapter;
    int verse;
    String slok;
    String transliteration;
    Tej tej;
    Siva siva;
    Adi purohit;
    Chinmay chinmay;
    Adi san;
    Adi adi;
    Adi gambir;
    Anand madhav;
    Anand anand;
    Rams rams;
    Abhinav raman;
    Abhinav abhinav;
    Abhinav sankar;
    Anand jaya;
    Anand vallabh;
    Anand ms;
    Anand srid;
    Anand dhan;
    Anand venkat;
    Anand puru;
    Anand neel;

    Post({
        required this.id,
        required this.chapter,
        required this.verse,
        required this.slok,
        required this.transliteration,
        required this.tej,
        required this.siva,
        required this.purohit,
        required this.chinmay,
        required this.san,
        required this.adi,
        required this.gambir,
        required this.madhav,
        required this.anand,
        required this.rams,
        required this.raman,
        required this.abhinav,
        required this.sankar,
        required this.jaya,
        required this.vallabh,
        required this.ms,
        required this.srid,
        required this.dhan,
        required this.venkat,
        required this.puru,
        required this.neel,
    });

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["_id"],
        chapter: json["chapter"],
        verse: json["verse"],
        slok: json["slok"],
        transliteration: json["transliteration"],
        tej: Tej.fromJson(json["tej"]),
        siva: Siva.fromJson(json["siva"]),
        purohit: Adi.fromJson(json["purohit"]),
        chinmay: Chinmay.fromJson(json["chinmay"]),
        san: Adi.fromJson(json["san"]),
        adi: Adi.fromJson(json["adi"]),
        gambir: Adi.fromJson(json["gambir"]),
        madhav: Anand.fromJson(json["madhav"]),
        anand: Anand.fromJson(json["anand"]),
        rams: Rams.fromJson(json["rams"]),
        raman: Abhinav.fromJson(json["raman"]),
        abhinav: Abhinav.fromJson(json["abhinav"]),
        sankar: Abhinav.fromJson(json["sankar"]),
        jaya: Anand.fromJson(json["jaya"]),
        vallabh: Anand.fromJson(json["vallabh"]),
        ms: Anand.fromJson(json["ms"]),
        srid: Anand.fromJson(json["srid"]),
        dhan: Anand.fromJson(json["dhan"]),
        venkat: Anand.fromJson(json["venkat"]),
        puru: Anand.fromJson(json["puru"]),
        neel: Anand.fromJson(json["neel"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "chapter": chapter,
        "verse": verse,
        "slok": slok,
        "transliteration": transliteration,
        "tej": tej.toJson(),
        "siva": siva.toJson(),
        "purohit": purohit.toJson(),
        "chinmay": chinmay.toJson(),
        "san": san.toJson(),
        "adi": adi.toJson(),
        "gambir": gambir.toJson(),
        "madhav": madhav.toJson(),
        "anand": anand.toJson(),
        "rams": rams.toJson(),
        "raman": raman.toJson(),
        "abhinav": abhinav.toJson(),
        "sankar": sankar.toJson(),
        "jaya": jaya.toJson(),
        "vallabh": vallabh.toJson(),
        "ms": ms.toJson(),
        "srid": srid.toJson(),
        "dhan": dhan.toJson(),
        "venkat": venkat.toJson(),
        "puru": puru.toJson(),
        "neel": neel.toJson(),
    };
}

class Abhinav {
    String author;
    String sc;
    String et;
    String? ht;

    Abhinav({
        required this.author,
        required this.sc,
        required this.et,
        this.ht,
    });

    factory Abhinav.fromJson(Map<String, dynamic> json) => Abhinav(
        author: json["author"],
        sc: json["sc"],
        et: json["et"],
        ht: json["ht"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
        "et": et,
        "ht": ht,
    };
}

class Adi {
    String author;
    String et;

    Adi({
        required this.author,
        required this.et,
    });

    factory Adi.fromJson(Map<String, dynamic> json) => Adi(
        author: json["author"],
        et: json["et"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
    };
}

class Anand {
    String author;
    String sc;

    Anand({
        required this.author,
        required this.sc,
    });

    factory Anand.fromJson(Map<String, dynamic> json) => Anand(
        author: json["author"],
        sc: json["sc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "sc": sc,
    };
}

class Chinmay {
    String author;
    String hc;

    Chinmay({
        required this.author,
        required this.hc,
    });

    factory Chinmay.fromJson(Map<String, dynamic> json) => Chinmay(
        author: json["author"],
        hc: json["hc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "hc": hc,
    };
}

class Rams {
    String author;
    String ht;
    String hc;

    Rams({
        required this.author,
        required this.ht,
        required this.hc,
    });

    factory Rams.fromJson(Map<String, dynamic> json) => Rams(
        author: json["author"],
        ht: json["ht"],
        hc: json["hc"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
        "hc": hc,
    };
}

class Siva {
    String author;
    String et;
    String ec;

    Siva({
        required this.author,
        required this.et,
        required this.ec,
    });

    factory Siva.fromJson(Map<String, dynamic> json) => Siva(
        author: json["author"],
        et: json["et"],
        ec: json["ec"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "et": et,
        "ec": ec,
    };
}

class Tej {
    String author;
    String ht;

    Tej({
        required this.author,
        required this.ht,
    });

    factory Tej.fromJson(Map<String, dynamic> json) => Tej(
        author: json["author"],
        ht: json["ht"],
    );

    Map<String, dynamic> toJson() => {
        "author": author,
        "ht": ht,
    };
}
