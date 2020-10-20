# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create(:name => "Lock")
Genre.create(:name => "Hiphop")
Genre.create(:name => "Punking")
Genre.create(:name => "Break")
Genre.create(:name => "Juzz")
Genre.create(:name => "Poping")
Genre.create(:name => "Krump")
Genre.create(:name => "House")
Genre.create(:name => "Girls")


def rand_except_num(num)
  while true
    ans = rand(1..9)
    if ans!=num
      return ans
    end
  end
end
#名前生成サイト：http://kazina.com/dummy/
#cgiファイル(csv)が作成できる
#--------------data作成スクリプト(Python)-------------
# path = 'dummy.cgi'
# count = 0
# with open(path, 'r', encoding="shift-jis") as f:
#     reader = csv.reader(f)
#     for raw in reader:
#         data = raw
#         data[1] = jaconv.hira2kata(data[1])
#         if count < 50:
#             data.append(17)
#         elif count < 100:
#             data.append(18)
#         else:
#             data.append(19)
#         data.append(1000+count)
#         all_users.append(data)
#         count += 1
# all_users.pop(0)
#----------------------------------------------------

all_users = [['三好涼子', 'ミヨシリョウコ', 'miyoshiryouko@example.com', 18, 1001], ['山下雅之', 'ヤマシタマサユキ', 'yamashitamasayuki@example.com', 18, 1002], ['古田みゆき', 'フルタミユキ', 'furutamiyuki@example.com', 18, 1003], ['畑中光', 'ハタナカヒカル', 'hatanakahikaru@example.com', 18, 1004], ['福地鉄洋', 'フクチテツヒロ', 'fukuchitetsuhiro@example.com', 18, 1005], ['黒岩育子', 'クロイワイクコ', 'kuroiwaikuko@example.com', 18, 1006], ['笠井慎之介', 'カサイシンノスケ', 'kasaishinnosuke@example.com', 18, 1007], ['田沢一', 'タザワハジメ', 'tazawahajime@example.com', 18, 1008], ['三島ヒカル', 'ミシマヒカル', 'mishimahikaru@example.com', 18, 1009], ['中沢拓郎', 'ナカザワタクロウ', 'nakazawatakurou@example.com', 18, 1010], ['鬼頭希', 'キトウノゾミ', 'kitounozomi@example.com', 18, 1011], ['志田あおい', 'シダアオイ', 'shidaaoi@example.com', 18, 1012], ['富田ケンイチ', 'トミタケンイチ', 'tomitakenichi@example.com', 18, 1013], ['谷口豊', 'タニグチユタカ', 'taniguchiyutaka@example.com', 18, 1014], ['梅沢陽子', 'ウメザワヨウコ', 'umezawayouko@example.com', 18, 1015], ['森田隆太', 'モリタリュウタ', 'moritaryuuta@example.com', 18, 1016], ['中田光', 'ナカタヒカル', 'nakatahikaru@example.com', 18, 1017], ['村上晴臣', 'ムラカミハルオミ', 'murakamiharuomi@example.com', 18, 1018], ['紺野京子', 'コンノキョウコ', 'konnnokyouko@example.com', 18, 1019], ['池上砂羽', 'イケガミサワ', 'ikegamisawa@example.com', 18, 1020], ['井原美優', 'イハラミュウ', 'iharamyuu@example.com', 18, 1021], ['松村貴美子', 'マツムラキミコ', 'matsumurakimiko@example.com', 18, 1022], ['矢沢えみ', 'ヤザワエミ', 'yazawaemi@example.com', 18, 1023], ['神木麗奈', 'カミキレナ', 'kamikirena@example.com', 18, 1024], ['若松俊介', 'ワカマツシュンスケ', 'wakamatsushunsuke@example.com', 18, 1025], ['浜充則', 'ハマミツノリ', 'hamamitsunori@example.com', 18, 1026], ['角田ヒロ', 'カドタヒロ', 'kadotahiro@example.com', 18, 1027], ['比嘉友香', 'ヒヨシトモカ', 'hiyoshitomoka@example.com', 18, 1028], ['水崎結衣', 'ミサキユイ', 'misakiyui@example.com', 18, 1029], ['足立小雁', 'アダチコガン', 'adachikogan@example.com', 18, 1030], ['椎名勇太', 'シイナユウタ', 'shiinayuuta@example.com', 18, 1031], ['伊藤康文', 'イトウヤスフミ', 'itouyasufumi@example.com', 18, 1032], ['新垣未來', 'アラガキミライ', 'aragakimirai@example.com', 18, 1033], ['森山さとみ', 'モリヤマサトミ', 'moriyamasatomi@example.com', 18, 1034], ['藤木達士', 'フジキタツヒト', 'fujikitatsuhito@example.com', 18, 1035], ['川田一哉', 'カワタカズヤ', 'kawatakazuya@example.com', 18, 1036], ['白川れいな', 'シラカワレイナ', 'shirakawareina@example.com', 18, 1037], ['劇団優', 'ゲキダンユウ', 'gekidanyuu@example.com', 18, 1038], ['福山めぐみ', 'フクヤマメグミ', 'fukuyamamegumi@example.com', 18, 1039], ['村山マサカズ', 'ムラヤママサカズ', 'murayamamasakazu@example.com', 18, 1040], ['戎美月', 'エビスミヅキ', 'ebisumiduki@example.com', 18, 1041], ['伊東朝陽', 'イトウアサヒ', 'itouasahi@example.com', 18, 1042], ['多田真帆', 'タダマホ', 'tadamaho@example.com', 18, 1043], ['伊集院亮', 'イジュウインリョウ', 'ijuuinryou@example.com', 18, 1044], ['大谷栄一', 'オオタニエイイチ', 'ootanieiichi@example.com', 18, 1045], ['森茜', 'モリアカネ', 'moriakane@example.com', 18, 1046], ['大高菜々美', 'オオダカナナミ', 'oodakananami@example.com', 18, 1047], ['上野まみ', 'ウエノマミ', 'uenomami@example.com', 18, 1048], ['深沢長利', 'フカザワナガトシ', 'fukazawanagatoshi@example.com', 18, 1049], ['徳永みあ', 'トクナガミア', 'tokunagamia@example.com', 17, 1050], ['深井慶二', 'フカイケイジ', 'fukaikeiji@example.com', 17, 1051], ['百瀬美和子', 'モモセミワコ', 'momosemiwako@example.com', 17, 1052], ['津田ノブヒコ', 'ツダノブヒコ', 'tsudanobuhiko@example.com', 17, 1053], ['末吉薫', 'スエキチカオル', 'suekichikaoru@example.com', 17, 1054], ['和田杏', 'ワダアン', 'wadaann@example.com', 17, 1055], ['斎藤勤', 'サイトウツトム', 'saitoutsutomu@example.com', 17, 1056], ['大竹美佐', 'オオタケミサ', 'ootakemisa@example.com', 17, 1057], ['宮崎敏和', 'ミヤザキトシカズ', 'miyazakitoshikazu@example.com', 17, 1058], ['川添一', 'カワゾエハジメ', 'kawazoehajime@example.com', 17, 1059], ['小幡寿々花', 'オバタスズカ', 'obatasuzuka@example.com', 17, 1060], ['神山美嘉', 'カミヤマミカ', 'kamiyamamika@example.com', 17, 1061], ['寺西美幸', 'テラニシミユキ', 'teranishimiyuki@example.com', 17, 1062], ['小久保禄郎', 'コクボロクロウ', 'kokuborokurou@example.com', 17, 1063], ['林奈々', 'ハヤシナナ', 'hayashinana@example.com', 17, 1064], ['高島利夫', 'タカシマトシオ', 'takashimatoshio@example.com', 17, 1065], ['山田菜摘', 'ヤマダナツミ', 'yamadanatsumi@example.com', 17, 1066], ['豊島将也', 'トヨシママサヤ', 'toyoshimamasaya@example.com', 17, 1067], ['大和田優', 'オオワダユウ', 'oowadayuu@example.com', 17, 1068], ['毛利遥', 'モウリハルカ', 'mouriharuka@example.com', 17, 1069], ['朝倉真帆', 'アサクラマホ', 'asakuramaho@example.com', 17, 1070], ['北山砂羽', 'キタヤマサワ', 'kitayamasawa@example.com', 17, 1071], ['柴田有海', 'シバタアミ', 'shibataami@example.com', 17, 1072], ['難波はじめ', 'ナンバハジメ', 'nannbahajime@example.com', 17, 1073], ['中本功補', 'ナカモトコウスケ', 'nakamotokousuke@example.com', 17, 1074], ['川口敏也', 'カワグチトシヤ', 'kawaguchitoshiya@example.com', 17, 1075], ['大貫はるみ', 'オオヌキハルミ', 'oonukiharumi@example.com', 17, 1076], ['手塚瞳', 'テヅカヒトミ', 'tedukahitomi@example.com', 17, 1077], ['尾崎了', 'オザキリョウ', 'ozakiryou@example.com', 17, 1078], ['畑中未來', 'ハタナカミライ', 'hatanakamirai@example.com', 17, 1079], ['丹羽ノブヒコ', 'タンバノブヒコ', 'tannbanobuhiko@example.com', 17, 1080], ['沖田美幸', 'オキタミユキ', 'okitamiyuki@example.com', 17, 1081], ['諏訪米蔵', 'スワヨネゾウ', 'suwayonezou@example.com', 17, 1082], ['小口聡', 'オグチサトシ', 'oguchisatoshi@example.com', 17, 1083], ['大竹まさし', 'オオタケマサシ', 'ootakemasashi@example.com', 17, 1084], ['小林美優', 'コバヤシミュウ', 'kobayashimyuu@example.com', 17, 1085], ['永田華子', 'ナガタハナコ', 'nagatahanako@example.com', 17, 1086], ['松岡精児', 'マツオカセイジ', 'matsuokaseiji@example.com', 17, 1087], ['白石美佐子', 'シライシミサコ', 'shiraishimisako@example.com', 17, 1088], ['大林結子', 'オオバヤシユウコ', 'oobayashiyuuko@example.com', 17, 1089], ['岩井雅彦', 'イワイマサヒコ', 'iwaimasahiko@example.com', 17, 1090], ['菅谷里奈', 'スガヤリナ', 'sugayarina@example.com', 17, 1091], ['黒川ひろみ', 'クロカワヒロミ', 'kurokawahiromi@example.com', 17, 1092], ['筒井薫', 'ツツイカオル', 'tsutsuikaoru@example.com', 17, 1093], ['松岡美智子', 'マツオカミチコ', 'matsuokamichiko@example.com', 17, 1094], ['島田杏', 'シマダアン', 'shimadaann@example.com', 17, 1095], ['森川景子', 'モリカワケイコ', 'morikawakeiko@example.com', 17, 1096], ['市田明日', 'イチダメイビ', 'ichidameibi@example.com', 17, 1097], ['森山誠治', 'モリヤマセイジ', 'moriyamaseiji@example.com', 17, 1098], ['桑田敦', 'クワタアツシ', 'kuwataatsushi@example.com', 17, 1099], ['寺沢真帆', 'テラサワマホ', 'terasawamaho@example.com', 16, 1100], ['柳田一恵', 'ヤナギダカヅエ', 'yanagidakadue@example.com', 16, 1101], ['緒形路子', 'オガタミチコ', 'ogatamichiko@example.com', 16, 1102], ['石倉扶樹', 'イシクラモトキ', 'ishikuramotoki@example.com', 16, 1103], ['浜田茜', 'ハマダアカネ', 'hamadaakane@example.com', 16, 1104], ['今川豊', 'イマガワユタカ', 'imagawayutaka@example.com', 16, 1105], ['藤野慶二', 'フジノケイジ', 'fujinokeiji@example.com', 16, 1106], ['吉岡咲', 'ヨシオカサキ', 'yoshiokasaki@example.com', 16, 1107], ['福山博明', 'フクヤマヒロアキ', 'fukuyamahiroaki@example.com', 16, 1108], ['前島サンタマリア', 'マエジマサンタマリア', 'maejimastmaria@example.com', 16, 1109], ['原田智花', 'ハラダトモカ', 'haradatomoka@example.com', 16, 1110], ['米沢一恵', 'ヨネザワカヅエ', 'yonezawakadue@example.com', 16, 1111], ['志村大樹', 'シムラヒロキ', 'shimurahiroki@example.com', 16, 1112], ['藤島まさみ', 'フジシママサミ', 'fujishimamasami@example.com', 16, 1113], ['浦田なつみ', 'ウラタナツミ', 'uratanatsumi@example.com', 16, 1114], ['沢井瑠璃亜', 'サワイルリア', 'sawairuria@example.com', 16, 1115], ['松原公顕', 'マツバラキミアキ', 'matsubarakimiaki@example.com', 16, 1116], ['河村しぼり', 'カワムラシボリ', 'kawamurashibori@example.com', 16, 1117], ['山崎美幸', 'ヤマザキミユキ', 'yamazakimiyuki@example.com', 16, 1118], ['神原優', 'カンバラユウ', 'kannbarayuu@example.com', 16, 1119], ['石崎洋', 'イシザキヨウ', 'ishizakiyou@example.com', 16, 1120], ['目黒淳', 'メグロアツシ', 'meguroatsushi@example.com', 16, 1121], ['竹下拓郎', 'タケシタタクロウ', 'takeshitatakurou@example.com', 16, 1122], ['岸部隼士', 'キシベシュンジ', 'kishibeshunji@example.com', 16, 1123], ['小出利夫', 'コイデトシオ', 'koidetoshio@example.com', 16, 1124], ['武藤徹', 'ムトウトオル', 'mutoutooru@example.com', 16, 1125], ['稲垣雅彦', 'イナガキマサヒコ', 'inagakimasahiko@example.com', 16, 1126], ['水田勇一', 'ミズタユウイチ', 'mizutayuuichi@example.com', 16, 1127], ['益岡亮', 'マスオカリョウ', 'masuokaryou@example.com', 16, 1128], ['岩谷美咲', 'イワタニミサキ', 'iwatanimisaki@example.com', 16, 1129], ['白川博明', 'シラカワヒロアキ', 'shirakawahiroaki@example.com', 16, 1130], ['大竹弘也', 'オオタケヒロナリ', 'ootakehironari@example.com', 16, 1131], ['田崎朝陽', 'タザキアサヒ', 'tazakiasahi@example.com', 16, 1132], ['鈴木理紗', 'スズキリサ', 'suzukirisa@example.com', 16, 1133], ['西本雅彦', 'ニシモトマサヒコ', 'nishimotomasahiko@example.com', 16, 1134], ['細野明宏', 'ホソノアキヒロ', 'hosonoakihiro@example.com', 16, 1135], ['深田美幸', 'フカダミユキ', 'fukadamiyuki@example.com', 16, 1136], ['山元佑', 'ヤマモトタスク', 'yamamototasuku@example.com', 16, 1137], ['中岡綾', 'ナカオカアヤ', 'nakaokaaya@example.com', 16, 1138], ['村田たかお', 'ムラタタカオ', 'muratatakao@example.com', 16, 1139], ['千葉妃里', 'チバユリ', 'chibayuri@example.com', 16, 1140], ['加藤知史', 'カトウトモフミ', 'katoutomofumi@example.com', 16, 1141], ['植松拓郎', 'ウエマツタクロウ', 'uematsutakurou@example.com', 16, 1142], ['藤なつみ', 'フジナツミ', 'fujinatsumi@example.com', 16, 1143], ['土田右京', 'ツチダウキョウ', 'tsuchidaukyou@example.com', 16, 1144], ['安雄太', 'ヤスユウタ', 'yasuyuuta@example.com', 16, 1145], ['庄司淳子', 'ショウジアツコ', 'shoujiatsuko@example.com', 16, 1146], ['守屋豊', 'モリヤユタカ', 'moriyayutaka@example.com', 16, 1147], ['栗林美里', 'クリバヤシミリ', 'kuribayashimiri@example.com', 16, 1148], ['藤川だん吉', 'フジカワダンキチ', 'fujikawadankichi@example.com', 16, 1149], ['野沢ひろみ', 'ノザワヒロミ', 'nozawahiromi@example.com', 16, 1150]]
all_users.each do |user|
  User.create!(name: user[0], name_kana: user[1], email: user[2], term: user[3], student_number: user[4],
               is_active: true, is_admin: false,  password: "password", password_confirmation: "password")
end


for i in 1..all_users.length do
  genre1 = rand(1..9)
  genre2 = rand_except_num(genre1)
  UserGenreInfo.create!(genre_id: genre1, user_id: i, priority: 1, is_valid: true, is_genre_leader: false)
  UserGenreInfo.create!(genre_id: genre2, user_id: i, priority: 2, is_valid: true, is_genre_leader: false)
end


admins = [['白井まさし', 'シライマサシ', 'shiraimasashi@example.com', 17, 2001], ['上野美里', 'ウエノミリ', 'uenomiri@example.com', 17, 2002], ['小口雄太', 'オグチユウタ', 'oguchiyuuta@example.com', 17, 2003]]
admins.each do |user|
  User.create!(name: user[0], name_kana: user[1],email: user[2],
               term: user[3], student_number: user[4], is_active: true,
               is_admin: true,  password: "password", password_confirmation: "password")
end

Event.create!(name: "FFバトルvol.1", start_at: Time.parse("2020/05/09"), end_at: Time.parse("2020/05/09"),
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n
             【注意事項】\n新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。\n
             【コンテンツ】\n1on1バトル, 2on2バトル\n各バトルの優勝者には景品と次回エントリーの無料券があります！\n
             【スケジュール】\n13:00:Open\n13:30~14:30:バトル1,2回戦\n~14:45:DJタイム\n~15:45:3,4回戦\n15:00~決勝\n")

Event.create!(name: "FFバトルvol.2", start_at: Time.parse("2020/06/13"), end_at: Time.parse("2020/06/13"),
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n
             【注意事項】新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。\n
             【コンテンツ】\n1on1バトル, 2on2バトル\n各バトルの優勝者には景品と次回エントリーの無料券があります！\n
             【スケジュール】\n決まり次第更新します！")

Event.create!(name: "スノボ合宿2020", start_at: Time.parse("2020/02/13"), end_at: Time.parse("2020/02/15"),
             description: "【場所】\n長野県　えふえふスキー場\n
              FFで唯一ダンス関係ないイベントですが、思いっきり楽しみましょう！\n夜は飲み会あるよ！\n
             【連絡事項】\nスキーウェアは各自持参してください。ボードとブーツはレンタルです(自分のやつ持ってきてもいいよ)\n一人3万円くらいになる予定です。")

Event.create!(name: "新歓飲み!", start_at: Time.parse("2020/05/10"), end_at: Time.parse("2019/05/10"),
              description: "【場所】\n庄屋\n
              1年生の皆さん先輩と仲良くなるチャンスです！みんな参加してね！\n
             【連絡事項】\n1年生：1000円\n2年生：2500円\n3年生：3500円")

Event.create!(name: "夏合宿2020", start_at: Time.parse("2020/09/22"), end_at: Time.parse("2020/09/25"),
             description: "【場所】\n長野県　えふえふ旅館\n気合入れていきましょう！")

Event.create!(name: "クリパ2020", start_at: Time.parse("2020/12/22"), end_at: Time.parse("2020/12/22"),
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n楽しんでいきましょう！\n
             【注意事項】新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。")

Event.create!(name: "FFバトルvol.3", start_at: Time.parse("2021/01/24"), end_at: Time.parse("2021/01/24"),
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n
             【注意事項】\n新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。\n
             【コンテンツ】\n1on1バトル, 2on2バトル\n各バトルの優勝者には景品と次回エントリーの無料券があります！\n
             【スケジュール】\n13:00:Open\n13:30~14:30:バトル1,2回戦\n~14:45:DJタイム\n~15:45:3,4回戦\n15:00~決勝\n")
# def term(num)
# ans = rand(num-2..num)
#   return ans
# end

# num = 15#一つのジャンルの1ジャンの人数
# start = 1
# finish = start + (num-1)

# for j in 1..9 do
#   for i in start..finish do
#     UserGenreInfo.create!(genre_id: j, user_id: i, priority: 1, is_valid: true, is_genre_leader: false)
#     UserGenreInfo.create!(genre_id: rand_except_num(j), user_id: i, priority: 2, is_valid: true, is_genre_leader: false)
#   end
#   start = finish + 1
#   finish = start + 14
# end



