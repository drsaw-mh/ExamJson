/*
class Exam {
  Time? time;
  Score? score;
  Malay? malay;
  Myanmar? myanmar;
  End? end;
  Status? status;
  ExtraExplain? extraExplain;
  String? explain, id, matchId, created;
  bool? isHome;
  Home? home;
  Away? away;
  League? league;

  Exam(
      {this.time,
      this.score,
      this.malay,
      this.myanmar,
      this.end,
      this.status,
      this.extraExplain,
      this.explain,
      this.id,
      this.matchId,
      this.created,
      this.isHome,
      this.home,
      this.away,
      this.league});

  factory Exam.from(dynamic data) {
    Time time = Time.from(data["time"]);
    Score score = Score.from(data["score"]);
    Malay malay = Malay.from(data["malay"]);
    Myanmar myanmar = Myanmar.from(data["myanmar"]);
    End end = End.from(data["end"]);
    Status status = Status.from(data["status"]);
    ExtraExplain extraExplain = ExtraExplain.from(data["extraExplain"]);
    return Exam(
        time: time,
        score: score,
        malay: malay,
        myanmar: myanmar,
        end: end,
        status: status,
        extraExplain: extraExplain,
        explain: data['explain'],
        id: data['_id'],
        created: data['created'],
        isHome: data['is_home'],
        matchId: data['matchId']);
  }
}

// class TimeModel {
//   String? matchTime;
//   String? halfStartTime;
//   String? running;
//   String? extra;
//   num? status;

//   TimeModel.fromJson(Map<String, dynamic> json) {
//     matchTime = json['matchTime'];
//     halfStartTime = json['halfStartTime'];
//     running = json['running'];
//     extra = json['extra'];
//     status = json['status'];
//   }
// }

class Time {
  String? matchTime, halfStringTime, running, extra;
  num? status;
  Time(
      {this.matchTime,
      this.halfStringTime,
      this.running,
      this.extra,
      this.status});
  factory Time.from(dynamic data) {
    return Time(
        matchTime: data["matchTime"],
        halfStringTime: data["halfStringTime"],
        running: data["running"],
        extra: data["extra"],
        status: data["status"]);
  }
}

// class FullModel {
//   num? home;
//   num? away;

//   FullModel.fromJson(Map<String, dynamic> json) {
//     home = json['home'];
//     away = json['away'];
//   }
// }

class Full {
  num? home, away;

  Full({this.home, this.away});

  factory Full.from(dynamic data) {
    return Full(home: data["home"], away: data["away"]);
  }
}

// class HalfModel {
//   num? home;
//   num? away;

//   HalfModel.fromJson(Map<String, dynamic> json) {
//     home = json['home'];
//     away = json['away'];
//   }
// }

class Half {
  num? home, away;
  Half({this.home, this.away});
  factory Half.from(dynamic data) {
    return Half(home: data['home'], away: data['away']);
  }
}

class Score {
  Half? half;
  Full? full;

  Score({this.full, this.half});

  factory Score.from(dynamic data) {
    Half half = Half.from(data["half"]);
    Full full = Full.from(data["full"]);

    return Score(full: full, half: half);
  }
}

class HdpOdd {
  String? show;
  num? goal, percent;

  HdpOdd({this.show, this.goal, this.percent});

  factory HdpOdd.from(dynamic data) {
    return HdpOdd(
        show: data['show'], goal: data['goal'], percent: data['percent']);
  }
}

// class MalayHdpModel {
//   OddModel? odd;
//   num? home;
//   num? away;
//   String? changeTime;
//   bool? close;
//   bool? active;
//   num? oddType;

//   MalayHdpModel.fromJson(Map<String, dynamic> json) {
//     odd = OddModel.fromJson(json['odd']);
//     home = json['home'];
//     away = json['away'];
//     changeTime = json['changeTime'];
//     close = json['close'];
//     active = json['active'];
//     oddType = json['oddType'];
//   }
// }
class MalayHdp {
  HdpOdd? odd;
  num? home, away, oddType;
  String? changeTime;
  bool? close, active;

  MalayHdp(
      {this.odd,
      this.home,
      this.away,
      this.oddType,
      this.changeTime,
      this.close,
      this.active});

  factory MalayHdp.from(dynamic data) {
    HdpOdd odd = HdpOdd.from(data["odd"]);
    return MalayHdp(
        odd: odd,
        home: data['home'],
        away: data['away'],
        oddType: data['oddType'],
        changeTime: data['changeTime'],
        close: data['close'],
        active: data['active']);
  }
}

// class MalayOuModel {
//   OddModel? odd;
//   num? over;
//   num? under;
//   String? changeTime;
//   bool? close;
//   bool? active;
//   num? oddType;

//   MalayOuModel.fromJson(Map<String, dynamic> json) {
//     odd = OddModel.fromJson(json['odd']);
//     over = json['over'];
//     under = json['under'];
//     changeTime = json['changeTime'];
//     close = json['close'];
//     active = json['active'];
//     oddType = json['oddType'];
//   }
// }

class OuOdd {
  String? show;
  num? goal, percent;

  OuOdd({this.show, this.goal, this.percent});

  factory OuOdd.from(dynamic data) {
    return OuOdd(
        show: data['show'], goal: data['goal'], percent: data['percent']);
  }
}

class MalayOu {
  OuOdd? odd;
  num? over, under, oddType;
  String? changeTime;
  bool? close, active;

  MalayOu(
      {this.odd,
      this.over,
      this.under,
      this.oddType,
      this.changeTime,
      this.close,
      this.active});
  factory MalayOu.from(dynamic data) {
    OuOdd odd = OuOdd.from(data['odd']);
    return MalayOu(
        odd: odd,
        over: data['over'],
        under: data['under'],
        oddType: data['oddType'],
        changeTime: data['changeTime'],
        close: data['close'],
        active: data['active']);
  }
}

// class MalayModel {
//   MalayHdpModel? hdp;
//   MalayOuModel? ou;

//   MalayModel.fromJson(Map<String, dynamic> json) {
//     hdp = MalayHdpModel.fromJson(json['hdp']);
//     ou = MalayOuModel.fromJson(json['ou']);
//   }
// }

class Malay {
  MalayHdp? hdp;
  MalayOu? ou;

  Malay({this.hdp, this.ou});

  factory Malay.from(dynamic data) {
    MalayHdp hdp = MalayHdp.from(data['hdp']);
    MalayOu ou = MalayOu.from(data['ou']);
    return Malay(hdp: hdp, ou: ou);
  }
}

// class MyanmarHdpModel {
//   OddModel? odd;
//   num? home;
//   num? away;

//   num? oddType;

//   MyanmarHdpModel.fromJson(Map<String, dynamic> json) {
//     odd = OddModel.fromJson(json['odd']);
//     home = json['home'];
//     away = json['away'];
//     oddType = json['oddType'];
//   }
// }
class MyanmarHdpOdd {
  String? show;
  num? goal, percent;

  MyanmarHdpOdd({this.show, this.goal, this.percent});

  factory MyanmarHdpOdd.from(dynamic data) {
    return MyanmarHdpOdd(
        show: data['show'], goal: data['goal'], percent: data['percent']);
  }
}

class MyanmarHdp {
  MyanmarHdpOdd? odd;
  num? home, away, oddType;

  MyanmarHdp({this.odd, this.home, this.away, this.oddType});

  factory MyanmarHdp.from(dynamic data) {
    MyanmarHdpOdd odd = MyanmarHdpOdd.from(data['odd']);
    return MyanmarHdp(
        odd: odd,
        home: data['home'],
        away: data['away'],
        oddType: data['oddType']);
  }
}

// class MyanmarOuModel {
//   OddModel? odd;
//   num? over;
//   num? under;
//   num? oddType;

//   MyanmarOuModel.fromJson(Map<String, dynamic> json) {
//     odd = OddModel.fromJson(json['odd']);
//     over = json['over'];
//     under = json['under'];
//     oddType = json['oddType'];
//   }
// }
class MyanmarOuOdd {
  String? show;
  num? goal, percent;

  MyanmarOuOdd({this.show, this.goal, this.percent});

  factory MyanmarOuOdd.from(dynamic data) {
    return MyanmarOuOdd(
        show: data['show'], goal: data['goal'], percent: data['percent']);
  }
}

class MyanmarOu {
  MyanmarOuOdd? odd;
  num? over, under, oddType;

  MyanmarOu({this.odd, this.over, this.under, this.oddType});

  factory MyanmarOu.from(dynamic data) {
    MyanmarOuOdd odd = MyanmarOuOdd.from(data['odd']);
    return MyanmarOu(
        odd: odd,
        over: data['over'],
        under: data['under'],
        oddType: data['oddType']);
  }
}

// class MyanmarModel {
//   MyanmarHdpModel? hdp;
//   MyanmarOuModel? ou;

//   MyanmarModel.fromJson(Map<String, dynamic> json) {
//     hdp = MyanmarHdpModel.fromJson(json['hdp']);
//     ou = MyanmarOuModel.fromJson(json['ou']);
//   }
// }
class Myanmar {
  MyanmarHdp? hdp;
  MyanmarOu? ou;

  Myanmar({this.hdp, this.ou});

  factory Myanmar.from(dynamic data) {
    MyanmarHdp hdp = MyanmarHdp.from(data['hdp']);
    MyanmarOu ou = MyanmarOu.from(data['ou']);
    return Myanmar(hdp: hdp, ou: ou);
  }
}

// class EndModel {
//   dynamic date;
//   bool? active, calculate;

//   EndModel.fromJson(Map<String, dynamic> json) {
//     date = json['date'];
//     active = json['active'];
//     calculate = json['calculate'];
//   }
// }

class End {
  dynamic date;
  bool? active, calculate;

  End({this.date, this.active, this.calculate});

  factory End.from(dynamic data) {
    return End(
        date: data['date'],
        active: data['active'],
        calculate: data['calculate']);
  }
}

// class RedModel {
//   num? home;
//   num? away;

//   RedModel.fromJson(Map<String, dynamic> json) {
//     home = json['home'];
//     away = json['away'];
//   }
// }

class Red {
  num? home, away;

  Red({this.home, this.away});

  factory Red.from(dynamic data) {
    return Red(home: data['home'], away: data['away']);
  }
}

// class YellowModel {
//   num? home;
//   num? away;

//   YellowModel.fromJson(Map<String, dynamic> json) {
//     home = json['home'];
//     away = json['away'];
//   }
// }

class Yellow {
  num? home, away;
  Yellow({this.home, this.away});
  factory Yellow.from(dynamic data) {
    return Yellow(home: data['home'], away: data['away']);
  }
}

// class CornerModel {
//   num? home;
//   num? away;

//   CornerModel.fromJson(Map<String, dynamic> json) {
//     home = json['home'];
//     away = json['away'];
//   }
// }

class Corner {
  num? home, away;

  Corner({this.home, this.away});

  factory Corner.from(dynamic data) {
    return Corner(home: data['home'], away: data['away']);
  }
}

// class StatusModel {
//   RedModel? red;
//   YellowModel? yellow;
//   CornerModel? corner;
//   bool? maintenance, inPlay, neutral, delete, hasLineup;

//   StatusModel.fromJson(Map<String, dynamic> json) {
//     red = RedModel.fromJson(json['red']);
//     yellow = YellowModel.fromJson(json['yellow']);
//     corner = CornerModel.fromJson(json['corner']);
//     maintenance = json['maintenance'];
//     inPlay = json['inPlay'];
//     neutral = json['neutral'];
//     delete = json['delete'];
//     hasLineup = json['hasLineup'];
//   }
// }

class Status {
  Red? red;
  Yellow? yellow;
  Corner? corner;

  Status({this.red, this.yellow, this.corner});

  factory Status.from(dynamic data) {
    Red red = Red.from(data['red']);
    Yellow yellow = Yellow.from(data['yellow']);
    Corner corner = Corner.from(data['corner']);
    return Status(red: red, yellow: yellow, corner: corner);
  }
}

// class ExtraExplain {
//   num? kickOff,
//       minute,
//       awayScore,
//       extraTimeStatus,
//       extraHomeScore,
//       extraAwayScore,
//       penHomeScore,
//       penAwayScore,
//       twoRoundsHomeScore,
//       twoRoundsAwayScore,
//       winner;

//   ExtraExplain.fromJson(Map<String, dynamic> json) {
//     kickOff = json['kickOff'];
//     minute = json['minute'];
//     awayScore = json['awayScore'];
//     extraTimeStatus = json['extraTimeStatus'];
//     extraHomeScore = json['extraHomeScore'];
//     extraAwayScore = json['extraAwayScore'];
//     penHomeScore = json['penHomeScore'];
//     penAwayScore = json['penAwayScore'];
//     twoRoundsHomeScore = json['twoRoundsHomeScore'];
//     twoRoundsAwayScore = json['twoRoundsAwayScore'];
//     winner = json['winner'];
//   }
// }

class ExtraExplain {
  num? kickOff,
      minute,
      awayScore,
      extraTimeStatus,
      extraHomeScore,
      extraAwayScore,
      penHomeScore,
      penAwayScore,
      twoRoundsHomeScore,
      twoRoundsAwayScore,
      winner;

  ExtraExplain(
      {this.kickOff,
      this.minute,
      this.awayScore,
      this.extraTimeStatus,
      this.extraHomeScore,
      this.extraAwayScore,
      this.penHomeScore,
      this.penAwayScore,
      this.twoRoundsHomeScore,
      this.twoRoundsAwayScore,
      this.winner});

  factory ExtraExplain.from(dynamic data) {
    return ExtraExplain(
        kickOff: data['kickOff'],
        minute: data['minute'],
        awayScore: data['awayScore'],
        extraTimeStatus: data['extraTimeStatus'],
        extraHomeScore: data['extraHomeScore'],
        extraAwayScore: data['extraAwayScore'],
        penHomeScore: data['penHomeScore'],
        penAwayScore: data['penAwayScore'],
        twoRoundsHomeScore: data['twoRoundsHomeScore'],
        twoRoundsAwayScore: data['twoRoundsAwayScore'],
        winner: data['winner']);
  }
}

// class HomeModel {
//   num? teamId;
//   String? id,
//       leagueId,
//       realName,
//       name,
//       mmName,
//       logo,
//       address,
//       area,
//       venue,
//       capacity,
//       coach,
//       website;

//   HomeModel.fromJson(Map<String, dynamic> json) {
//     id = json['_id'];
//     teamId = json['teamId'];
//     leagueId = json['leagueId'];
//     realName = json['realName'];
//     name = json['name'];
//     mmName = json['mmName'];
//     logo = json['logo'];
//     address = json['address'];
//     area = json['area'];
//     venue = json['venue'];
//     capacity = json['capacity'];
//     coach = json['coach'];
//     website = json['website'];
//   }
// }

class Home {
  num? teamId;
  String? id,
      leagueId,
      realName,
      name,
      mmName,
      logo,
      address,
      area,
      venue,
      capacity,
      coach,
      website;

  Home(
      {this.teamId,
      this.id,
      this.leagueId,
      this.realName,
      this.name,
      this.mmName,
      this.logo,
      this.address,
      this.area,
      this.venue,
      this.capacity,
      this.coach,
      this.website});

  factory Home.from(dynamic data) {
    return Home(
        teamId: data['teamId'],
        id: data['_id'],
        leagueId: data['leagueId'],
        realName: data['realName'],
        name: data['name'],
        mmName: data['mmName'],
        logo: data['logo'],
        address: data['address'],
        area: data['area'],
        venue: data['venue'],
        capacity: data['capacity'],
        coach: data['coach'],
        website: data['website']);
  }
}

// class AwayModel {
//   num? teamId;
//   String? id,
//       leagueId,
//       realName,
//       name,
//       mmName,
//       logo,
//       address,
//       area,
//       venue,
//       capacity,
//       coach,
//       website;

//   AwayModel.fromJson(Map<String, dynamic> json) {
//     id = json['_id'];
//     teamId = json['teamId'];
//     leagueId = json['leagueId'];
//     realName = json['realName'];
//     name = json['name'];
//     mmName = json['mmName'];
//     logo = json['logo'];
//     address = json['address'];
//     area = json['area'];
//     venue = json['venue'];
//     capacity = json['capacity'];
//     coach = json['coach'];
//     website = json['website'];
//   }
// }

class Away {
  num? teamId;
  String? id,
      leagueId,
      realName,
      name,
      mmName,
      logo,
      address,
      area,
      venue,
      capacity,
      coach,
      website;

  Away(
      {this.teamId,
      this.id,
      this.leagueId,
      this.realName,
      this.name,
      this.mmName,
      this.logo,
      this.address,
      this.area,
      this.venue,
      this.capacity,
      this.coach,
      this.website});

  factory Away.from(dynamic data) {
    return Away(
        teamId: data['teamId'],
        id: data['_id'],
        leagueId: data['leagueId'],
        realName: data['realName'],
        name: data['name'],
        mmName: data['mmName'],
        logo: data['logo'],
        address: data['address'],
        area: data['area'],
        venue: data['venue'],
        capacity: data['capacity'],
        coach: data['coach'],
        website: data['website']);
  }
}

// class LeagueModel {
//   num? leagueId, type, totalRound, currentRound, countryId, areaId;
//   String? id, name, mmName, shortName, subLeagueName, currentSeason, logo;

//   LeagueModel.fromJson(Map<String, dynamic> json) {
//     leagueId = json['leagueId'];
//     type = json['type'];
//     totalRound = json['totalRound'];
//     currentRound = json['currentRound'];
//     countryId = json['countryId'];
//     areaId = json['areaId'];
//     id = json['_id'];
//     name = json['name'];
//     mmName = json['mmName'];
//     shortName = json['shortName'];
//     subLeagueName = json['subLeagueName'];
//     currentSeason = json['currentSeason'];
//     logo = json['logo'];
//   }
// }

class League {
  num? teamId;
  String? id,
      leagueId,
      realName,
      name,
      mmName,
      logo,
      address,
      area,
      venue,
      capacity,
      coach,
      website;

  League(
      {this.teamId,
      this.id,
      this.leagueId,
      this.realName,
      this.name,
      this.mmName,
      this.logo,
      this.address,
      this.area,
      this.venue,
      this.capacity,
      this.coach,
      this.website});

  factory League.from(dynamic data) {
    return League(
        teamId: data['teamId'],
        id: data['_id'],
        leagueId: data['leagueId'],
        realName: data['realName'],
        name: data['name'],
        mmName: data['mmName'],
        logo: data['logo'],
        address: data['address'],
        area: data['area'],
        venue: data['venue'],
        capacity: data['capacity'],
        coach: data['coach'],
        website: data['website']);
  }
}

*/