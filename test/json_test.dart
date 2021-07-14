import 'package:flutter_test/flutter_test.dart';
import 'package:hn_app/json_parsing.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// void main() {
//   // test("parses topstories.json", () {
//   //   const jsonString =
//   //       "[27799859,27807081,27803146,27803314,27806618,27803994,27805966,27805712,27801729,27802346,27792366,27804120,27805709,27804128,27787306,27797393,27803316,27802512,27793244,27806471,27802153,27804503,27805937,27806144,27792387,27791467,27805904,27787376,27782871,27799435,27801273,27805059,27801472,27803372,27800248,27787934,27801496,27779746,27794860,27804280,27792155,27806405,27806360,27806641,27806590,27806476,27797853,27769241,27792558,27798696,27801445,27804366,27806401,27805874,27798879,27800674,27801388,27804518,27803031,27800216,27792930,27804991,27798202,27805519,27799135,27802242,27804029,27800442,27804481,27796443,27804703,27792736,27800465,27800291,27792951,27799938,27769989,27801731,27797535,27768812,27805217,27804926,27789697,27800247,27770080,27792219,27780582,27791146,27802072,27794231,27796755,27795810,27767994,27799767,27799961,27782791,27797331,27793013,27802233,27794237,27805098,27805762,27770705,27796932,27800802,27800344,27794188,27769440,27781895,27802606,27768680,27782738,27798427,27796432,27770184,27782864,27782007,27805555,27770042,27796392,27792829,27782397,27800683,27770245,27780899,27793969,27797829,27792738,27805397,27792643,27795061,27782748,27804513,27802756,27805367,27787604,27794248,27783490,27804206,27783939,27797583,27781545,27793470,27794620,27774584,27796493,27771091,27788238,27782829,27797691,27800565,27782734,27800502,27782086,27800094,27769382,27770131,27800184,27796124,27782512,27763834,27772907,27804794,27804152,27797592,27793398,27777594,27780527,27782296,27798756,27792695,27769291,27800851,27791447,27780777,27769718,27793696,27792282,27792816,27804315,27795627,27780838,27787314,27768211,27784102,27782475,27781784,27763598,27791539,27777894,27781146,27778689,27789101,27804213,27802485,27790723,27803051,27776830,27781483,27789279,27789910,27764614,27785323,27770171,27783793,27781243,27773601,27797092,27793137,27788723,27782604,27782370,27798726,27770159,27795029,27772440,27789917,27784110,27783961,27792905,27797302,27783858,27789268,27802240,27797322,27791817,27768861,27775927,27784115,27771219,27771020,27795715,27773732,27791511,27801715,27766655,27775384,27792773,27803086,27765934,27796182,27792391,27777882,27768795,27779907,27787426,27768792,27783865,27777077,27769255,27792328,27770968,27767656,27776829,27781293,27795401,27768933,27800956,27781377,27774218,27800640,27782856,27783094,27794464,27802332,27793303,27796713,27788380,27776154,27775089,27794236,27797169,27801638,27800978,27772340,27792882,27795760,27788212,27795608,27768826,27792683,27792908,27767494,27800381,27778774,27776314,27780596,27796557,27768884,27774987,27785255,27796651,27793092,27801480,27782539,27763873,27768169,27769179,27792450,27779453,27792850,27801976,27763031,27798565,27789750,27782849,27767032,27784259,27764115,27782337,27777891,27794355,27778258,27795014,27786787,27788712,27762970,27776184,27762986,27782377,27767237,27763763,27773747,27787621,27782446,27764806,27769978,27781701,27768771,27782300,27772650,27793544,27762776,27765686,27782104,27798941,27790901,27762653,27802492,27797117,27783755,27804223,27768934,27795090,27782383,27786009,27769403,27768914,27798235,27796887,27769406,27771846,27768778,27763965,27791789,27789952,27769285,27794674,27803128,27800835,27796695,27796618,27788234,27783393,27784843,27787589,27776771,27795048,27782456,27777717,27763208,27791227,27770750,27795348,27790001,27796961,27782228,27794127,27797806,27772183,27771773,27797059,27772325,27782853,27793385,27780399,27794212,27784201,27798691,27772066,27782369,27786381,27780510,27765421,27772426,27764117,27778617,27766066,27769675,27787939,27794940,27764407,27789969,27766923,27782307,27775268,27790691,27768001,27784964,27764738,27764189,27780457,27793418,27787796,27769545,27763225,27770302,27797792,27766322,27781488,27798389,27775544,27800038,27787711,27797585,27787636,27780325,27766058,27770782,27795215,27784421,27795055,27777839,27792813,27785964,27797147,27798311,27762922,27792621,27781761,27789037,27773253,27779775,27777562,27785338,27796758,27796525,27784640,27772624,27772329,27796271,27782587,27767364,27767054,27772166,27773891,27792958,27769482,27798623,27783009,27777047,27769375,27780303,27798545,27791478,27764025,27792355,27773380,27788949,27778254,27767609,27769266,27765210,27776710,27794516,27766002,27788289,27791168,27794445,27767840,27771078,27789995,27762797,27781928,27775284,27789920,27800609,27780479,27790653,27783071,27784691,27765536,27766909,27790630,27793359,27789435,27788861,27775602,27771753,27782317]";
//   //
//   //   expect(parseTopStories(jsonString).first, 27799859);
//   // });
//   //
//   // test("parses item.json", () {
//   //   const jsonString =
//   //       '{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8958,8884,8887,8869,8940,8908,9005,8873,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}';
//   //   expect(parseArticle(jsonString)!.by, "dhouston");
//   // });
//
//   test(
//     "parses item.json over a network",
//     () async {
//       final url = 'https://hacker-news.firebaseio.com/v0/beststories.json';
//       final res = await http.get(Uri.parse(url));
//       if (res.statusCode == 200) {
//         final idList = json.decode(res.body);
//         if (idList.isNotEmpty) {
//           final storyUrl =
//               'https://hacker-news.firebaseio.com/v0/item/${idList.first}.json';
//           final storyRes = await http.get(Uri.parse(storyUrl));
//           if (storyRes.statusCode == 200) {
//             expect(parseArticle(storyRes.body)!.by, "dhouston");
//           }
//         }
//       }
//     },
//   );
// }
