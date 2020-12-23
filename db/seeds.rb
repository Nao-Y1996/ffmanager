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
# user作成
all_users = [['三好涼子', 'ミヨシリョウコ', 'miyoshiryouko@example.com', 17, 1001], ['山下雅之', 'ヤマシタマサユキ', 'yamashitamasayuki@example.com', 17, 1002], ['古田みゆき', 'フルタミユキ', 'furutamiyuki@example.com', 17, 1003], ['畑中光', 'ハタナカヒカル', 'hatanakahikaru@example.com', 17, 1004], ['福地鉄洋', 'フクチテツヒロ', 'fukuchitetsuhiro@example.com', 17, 1005], ['黒岩育子', 'クロイワイクコ', 'kuroiwaikuko@example.com', 17, 1006], ['笠井慎之介', 'カサイシンノスケ', 'kasaishinnosuke@example.com', 17, 1007], ['田沢一', 'タザワハジメ', 'tazawahajime@example.com', 17, 1008], ['三島ヒカル', 'ミシマヒカル', 'mishimahikaru@example.com', 17, 1009], ['中沢拓郎', 'ナカザワタクロウ', 'nakazawatakurou@example.com', 17, 1010], ['鬼頭希', 'キトウノゾミ', 'kitounozomi@example.com', 17, 1011], ['志田あおい', 'シダアオイ', 'shidaaoi@example.com', 17, 1012], ['富田ケンイチ', 'トミタケンイチ', 'tomitakenichi@example.com', 17, 1013], ['谷口豊', 'タニグチユタカ', 'taniguchiyutaka@example.com', 17, 1014], ['梅沢陽子', 'ウメザワヨウコ', 'umezawayouko@example.com', 17, 1015], ['森田隆太', 'モリタリュウタ', 'moritaryuuta@example.com', 17, 1016], ['中田光', 'ナカタヒカル', 'nakatahikaru@example.com', 17, 1017], ['村上晴臣', 'ムラカミハルオミ', 'murakamiharuomi@example.com', 17, 1018], ['紺野京子', 'コンノキョウコ', 'konnnokyouko@example.com', 17, 1019], ['池上砂羽', 'イケガミサワ', 'ikegamisawa@example.com', 17, 1020], ['井原美優', 'イハラミュウ', 'iharamyuu@example.com', 17, 1021], ['松村貴美子', 'マツムラキミコ', 'matsumurakimiko@example.com', 17, 1022], ['矢沢えみ', 'ヤザワエミ', 'yazawaemi@example.com', 17, 1023], ['神木麗奈', 'カミキレナ', 'kamikirena@example.com', 17, 1024], ['若松俊介', 'ワカマツシュンスケ', 'wakamatsushunsuke@example.com', 17, 1025], ['浜充則', 'ハマミツノリ', 'hamamitsunori@example.com', 17, 1026], ['角田ヒロ', 'カドタヒロ', 'kadotahiro@example.com', 17, 1027], ['比嘉友香', 'ヒヨシトモカ', 'hiyoshitomoka@example.com', 17, 1028], ['水崎結衣', 'ミサキユイ', 'misakiyui@example.com', 17, 1029], ['足立小雁', 'アダチコガン', 'adachikogan@example.com', 17, 1030], ['椎名勇太', 'シイナユウタ', 'shiinayuuta@example.com', 17, 1031], ['伊藤康文', 'イトウヤスフミ', 'itouyasufumi@example.com', 17, 1032], ['新垣未來', 'アラガキミライ', 'aragakimirai@example.com', 17, 1033], ['森山さとみ', 'モリヤマサトミ', 'moriyamasatomi@example.com', 17, 1034], ['藤木達士', 'フジキタツヒト', 'fujikitatsuhito@example.com', 17, 1035], ['川田一哉', 'カワタカズヤ', 'kawatakazuya@example.com', 17, 1036], ['白川れいな', 'シラカワレイナ', 'shirakawareina@example.com', 17, 1037], ['劇団優', 'ゲキダンユウ', 'gekidanyuu@example.com', 17, 1038], ['福山めぐみ', 'フクヤマメグミ', 'fukuyamamegumi@example.com', 17, 1039], ['村山マサカズ', 'ムラヤママサカズ', 'murayamamasakazu@example.com', 17, 1040], ['戎美月', 'エビスミヅキ', 'ebisumiduki@example.com', 17, 1041], ['伊東朝陽', 'イトウアサヒ', 'itouasahi@example.com', 17, 1042], ['多田真帆', 'タダマホ', 'tadamaho@example.com', 17, 1043], ['伊集院亮', 'イジュウインリョウ', 'ijuuinryou@example.com', 17, 1044], ['大谷栄一', 'オオタニエイイチ', 'ootanieiichi@example.com', 17, 1045], ['森茜', 'モリアカネ', 'moriakane@example.com', 17, 1046], ['大高菜々美', 'オオダカナナミ', 'oodakananami@example.com', 17, 1047], ['上野まみ', 'ウエノマミ', 'uenomami@example.com', 17, 1048], ['深沢長利', 'フカザワナガトシ', 'fukazawanagatoshi@example.com', 17, 1049], ['徳永みあ', 'トクナガミア', 'tokunagamia@example.com', 18, 1050], ['深井慶二', 'フカイケイジ', 'fukaikeiji@example.com', 18, 1051], ['百瀬美和子', 'モモセミワコ', 'momosemiwako@example.com', 18, 1052], ['津田ノブヒコ', 'ツダノブヒコ', 'tsudanobuhiko@example.com', 18, 1053], ['末吉薫', 'スエキチカオル', 'suekichikaoru@example.com', 18, 1054], ['和田杏', 'ワダアン', 'wadaann@example.com', 18, 1055], ['斎藤勤', 'サイトウツトム', 'saitoutsutomu@example.com', 18, 1056], ['大竹美佐', 'オオタケミサ', 'ootakemisa@example.com', 18, 1057], ['宮崎敏和', 'ミヤザキトシカズ', 'miyazakitoshikazu@example.com', 18, 1058], ['川添一', 'カワゾエハジメ', 'kawazoehajime@example.com', 18, 1059], ['小幡寿々花', 'オバタスズカ', 'obatasuzuka@example.com', 18, 1060], ['神山美嘉', 'カミヤマミカ', 'kamiyamamika@example.com', 18, 1061], ['寺西美幸', 'テラニシミユキ', 'teranishimiyuki@example.com', 18, 1062], ['小久保禄郎', 'コクボロクロウ', 'kokuborokurou@example.com', 18, 1063], ['林奈々', 'ハヤシナナ', 'hayashinana@example.com', 18, 1064], ['高島利夫', 'タカシマトシオ', 'takashimatoshio@example.com', 18, 1065], ['山田菜摘', 'ヤマダナツミ', 'yamadanatsumi@example.com', 18, 1066], ['豊島将也', 'トヨシママサヤ', 'toyoshimamasaya@example.com', 18, 1067], ['大和田優', 'オオワダユウ', 'oowadayuu@example.com', 18, 1068], ['毛利遥', 'モウリハルカ', 'mouriharuka@example.com', 18, 1069], ['朝倉真帆', 'アサクラマホ', 'asakuramaho@example.com', 18, 1070], ['北山砂羽', 'キタヤマサワ', 'kitayamasawa@example.com', 18, 1071], ['柴田有海', 'シバタアミ', 'shibataami@example.com', 18, 1072], ['難波はじめ', 'ナンバハジメ', 'nannbahajime@example.com', 18, 1073], ['中本功補', 'ナカモトコウスケ', 'nakamotokousuke@example.com', 18, 1074], ['川口敏也', 'カワグチトシヤ', 'kawaguchitoshiya@example.com', 18, 1075], ['大貫はるみ', 'オオヌキハルミ', 'oonukiharumi@example.com', 18, 1076], ['手塚瞳', 'テヅカヒトミ', 'tedukahitomi@example.com', 18, 1077], ['尾崎了', 'オザキリョウ', 'ozakiryou@example.com', 18, 1078], ['畑中未來', 'ハタナカミライ', 'hatanakamirai@example.com', 18, 1079], ['丹羽ノブヒコ', 'タンバノブヒコ', 'tannbanobuhiko@example.com', 18, 1080], ['沖田美幸', 'オキタミユキ', 'okitamiyuki@example.com', 18, 1081], ['諏訪米蔵', 'スワヨネゾウ', 'suwayonezou@example.com', 18, 1082], ['小口聡', 'オグチサトシ', 'oguchisatoshi@example.com', 18, 1083], ['大竹まさし', 'オオタケマサシ', 'ootakemasashi@example.com', 18, 1084], ['小林美優', 'コバヤシミュウ', 'kobayashimyuu@example.com', 18, 1085], ['永田華子', 'ナガタハナコ', 'nagatahanako@example.com', 18, 1086], ['松岡精児', 'マツオカセイジ', 'matsuokaseiji@example.com', 18, 1087], ['白石美佐子', 'シライシミサコ', 'shiraishimisako@example.com', 18, 1088], ['大林結子', 'オオバヤシユウコ', 'oobayashiyuuko@example.com', 18, 1089], ['岩井雅彦', 'イワイマサヒコ', 'iwaimasahiko@example.com', 18, 1090], ['菅谷里奈', 'スガヤリナ', 'sugayarina@example.com', 18, 1091], ['黒川ひろみ', 'クロカワヒロミ', 'kurokawahiromi@example.com', 18, 1092], ['筒井薫', 'ツツイカオル', 'tsutsuikaoru@example.com', 18, 1093], ['松岡美智子', 'マツオカミチコ', 'matsuokamichiko@example.com', 18, 1094], ['島田杏', 'シマダアン', 'shimadaann@example.com', 18, 1095], ['森川景子', 'モリカワケイコ', 'morikawakeiko@example.com', 18, 1096], ['市田明日', 'イチダメイビ', 'ichidameibi@example.com', 18, 1097], ['森山誠治', 'モリヤマセイジ', 'moriyamaseiji@example.com', 18, 1098], ['桑田敦', 'クワタアツシ', 'kuwataatsushi@example.com', 18, 1099], ['寺沢真帆', 'テラサワマホ', 'terasawamaho@example.com', 19, 1100], ['柳田一恵', 'ヤナギダカヅエ', 'yanagidakadue@example.com', 19, 1101], ['緒形路子', 'オガタミチコ', 'ogatamichiko@example.com', 19, 1102], ['石倉扶樹', 'イシクラモトキ', 'ishikuramotoki@example.com', 19, 1103], ['浜田茜', 'ハマダアカネ', 'hamadaakane@example.com', 19, 1104], ['今川豊', 'イマガワユタカ', 'imagawayutaka@example.com', 19, 1105], ['藤野慶二', 'フジノケイジ', 'fujinokeiji@example.com', 19, 1106], ['吉岡咲', 'ヨシオカサキ', 'yoshiokasaki@example.com', 19, 1107], ['福山博明', 'フクヤマヒロアキ', 'fukuyamahiroaki@example.com', 19, 1108], ['前島サンタマリア', 'マエジマサンタマリア', 'maejimastmaria@example.com', 19, 1109], ['原田智花', 'ハラダトモカ', 'haradatomoka@example.com', 19, 1110], ['米沢一恵', 'ヨネザワカヅエ', 'yonezawakadue@example.com', 19, 1111], ['志村大樹', 'シムラヒロキ', 'shimurahiroki@example.com', 19, 1112], ['藤島まさみ', 'フジシママサミ', 'fujishimamasami@example.com', 19, 1113], ['浦田なつみ', 'ウラタナツミ', 'uratanatsumi@example.com', 19, 1114], ['沢井瑠璃亜', 'サワイルリア', 'sawairuria@example.com', 19, 1115], ['松原公顕', 'マツバラキミアキ', 'matsubarakimiaki@example.com', 19, 1116], ['河村しぼり', 'カワムラシボリ', 'kawamurashibori@example.com', 19, 1117], ['山崎美幸', 'ヤマザキミユキ', 'yamazakimiyuki@example.com', 19, 1118], ['神原優', 'カンバラユウ', 'kannbarayuu@example.com', 19, 1119], ['石崎洋', 'イシザキヨウ', 'ishizakiyou@example.com', 19, 1120], ['目黒淳', 'メグロアツシ', 'meguroatsushi@example.com', 19, 1121], ['竹下拓郎', 'タケシタタクロウ', 'takeshitatakurou@example.com', 19, 1122], ['岸部隼士', 'キシベシュンジ', 'kishibeshunji@example.com', 19, 1123], ['小出利夫', 'コイデトシオ', 'koidetoshio@example.com', 19, 1124], ['武藤徹', 'ムトウトオル', 'mutoutooru@example.com', 19, 1125], ['稲垣雅彦', 'イナガキマサヒコ', 'inagakimasahiko@example.com', 19, 1126], ['水田勇一', 'ミズタユウイチ', 'mizutayuuichi@example.com', 19, 1127], ['益岡亮', 'マスオカリョウ', 'masuokaryou@example.com', 19, 1128], ['岩谷美咲', 'イワタニミサキ', 'iwatanimisaki@example.com', 19, 1129], ['白川博明', 'シラカワヒロアキ', 'shirakawahiroaki@example.com', 19, 1130], ['大竹弘也', 'オオタケヒロナリ', 'ootakehironari@example.com', 19, 1131], ['田崎朝陽', 'タザキアサヒ', 'tazakiasahi@example.com', 19, 1132], ['鈴木理紗', 'スズキリサ', 'suzukirisa@example.com', 19, 1133], ['西本雅彦', 'ニシモトマサヒコ', 'nishimotomasahiko@example.com', 19, 1134], ['細野明宏', 'ホソノアキヒロ', 'hosonoakihiro@example.com', 19, 1135], ['深田美幸', 'フカダミユキ', 'fukadamiyuki@example.com', 19, 1136], ['山元佑', 'ヤマモトタスク', 'yamamototasuku@example.com', 19, 1137], ['中岡綾', 'ナカオカアヤ', 'nakaokaaya@example.com', 19, 1138], ['村田たかお', 'ムラタタカオ', 'muratatakao@example.com', 19, 1139], ['千葉妃里', 'チバユリ', 'chibayuri@example.com', 19, 1140], ['加藤知史', 'カトウトモフミ', 'katoutomofumi@example.com', 19, 1141], ['植松拓郎', 'ウエマツタクロウ', 'uematsutakurou@example.com', 19, 1142], ['藤なつみ', 'フジナツミ', 'fujinatsumi@example.com', 19, 1143], ['土田右京', 'ツチダウキョウ', 'tsuchidaukyou@example.com', 19, 1144], ['安雄太', 'ヤスユウタ', 'yasuyuuta@example.com', 19, 1145], ['庄司淳子', 'ショウジアツコ', 'shoujiatsuko@example.com', 19, 1146], ['守屋豊', 'モリヤユタカ', 'moriyayutaka@example.com', 19, 1147], ['栗林美里', 'クリバヤシミリ', 'kuribayashimiri@example.com', 19, 1148], ['藤川だん吉', 'フジカワダンキチ', 'fujikawadankichi@example.com', 19, 1149], ['野沢ひろみ', 'ノザワヒロミ', 'nozawahiromi@example.com', 19, 1150]]
userID = 1
all_users.each do |user|
  if userID <= 9 # 最初の九人は部門長
    User.create!(name: user[0], name_kana: user[1], email: user[2], term: user[3], student_number: user[4],
               is_active: true, is_admin: false,  password: "password", password_confirmation: "password")
    genre2 = rand_except_num(userID)
    UserGenreInfo.create!(genre_id: userID, user_id: userID, priority: 1, is_valid: true, is_genre_leader: true)
    UserGenreInfo.create!(genre_id: genre2, user_id: userID, priority: 2, is_valid: true, is_genre_leader: false)
  elsif userID <= 12# 10~12人目は代表
    User.create!(name: user[0], name_kana: user[1], email: user[2], term: user[3], student_number: user[4],
               is_active: true, is_admin: true,  password: "password", password_confirmation: "password")
    genre1 = rand(1..9)
    genre2 = rand_except_num(genre1)
    UserGenreInfo.create!(genre_id: genre1, user_id: userID, priority: 1, is_valid: true, is_genre_leader: false)
    UserGenreInfo.create!(genre_id: genre2, user_id: userID, priority: 2, is_valid: true, is_genre_leader: false)
  else
    User.create!(name: user[0], name_kana: user[1], email: user[2], term: user[3], student_number: user[4],
               is_active: true, is_admin: false,  password: "password", password_confirmation: "password")
    genre1 = rand(1..9)
    genre2 = rand_except_num(genre1)
    UserGenreInfo.create!(genre_id: genre1, user_id: userID, priority: 1, is_valid: true, is_genre_leader: false)
    UserGenreInfo.create!(genre_id: genre2, user_id: userID, priority: 2, is_valid: true, is_genre_leader: false)
  end
  userID += 1
end



# admins = [['白井まさし', 'シライマサシ', 'shiraimasashi@example.com', 17, 2001], ['上野美里', 'ウエノミリ', 'uenomiri@example.com', 17, 2002], ['小口雄太', 'オグチユウタ', 'oguchiyuuta@example.com', 17, 2003]]
# admins.each do |user|
#   User.create!(name: user[0], name_kana: user[1],email: user[2],
#                term: user[3], student_number: user[4], is_active: true,
#                is_admin: true,  password: "password", password_confirmation: "password")
# end

Event.create!(name: "FFバトルvol.1", start_at: Time.parse("2020/05/09"), end_at: Time.parse("2020/05/09"),
              url1: "https://forms.gle/hUKuvVD7nyrSUq346", url1_description: "エントリーフォーム",
              url2: "https://forms.gle/UjnMaZobvwSSUr8M6", url2_description: "アンケート",
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n
             【注意事項】\n新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。\n
             【コンテンツ】\n1on1バトル, 2on2バトル\n各バトルの優勝者には景品と次回エントリーの無料券があります！\n
             【スケジュール】\n13:00:Open\n13:30~14:30:バトル1,2回戦\n~14:45:DJタイム\n~15:45:3,4回戦\n15:00~決勝\n\nエントリーは参加後に表示されるURLからお願いします\n終了後アンケートに答えてもらえるとありがたいです！")

Event.create!(name: "FFバトルvol.2", start_at: Time.parse("2020/06/13"), end_at: Time.parse("2020/06/13"),
              url1: "https://forms.gle/hUKuvVD7nyrSUq346", url1_description: "エントリーフォーム",
              url2: "https://forms.gle/UjnMaZobvwSSUr8M6", url2_description: "アンケート",
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n
             【注意事項】新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。\n
             【コンテンツ】\n1on1バトル, 2on2バトル\n各バトルの優勝者には景品と次回エントリーの無料券があります！\n
             【スケジュール】\n13:00:Open\n13:30~14:30:バトル1,2回戦\n~14:45:DJタイム\n~15:45:3,4回戦\n15:00~決勝\n\nエントリーは参加後に表示されるURLからお願いします\n終了後アンケートに答えてもらえるとありがたいです！")

Event.create!(name: "スノボ合宿2020", start_at: Time.parse("2020/02/13"), end_at: Time.parse("2020/02/15"),
             description: "【場所】\n長野県　えふえふスキー場\n
              FFで唯一ダンス関係ないイベントですが、思いっきり楽しみましょう！\n夜は飲み会あるよ！\n
             【連絡事項】\nスキーウェアは各自持参してください。ボードとブーツはレンタルです(自分のやつ持ってきてもいいよ)\n一人3万円くらいになる予定です。")

Event.create!(name: "新歓飲み!", start_at: Time.parse("2021/05/10"), end_at: Time.parse("2021/05/10"),
              description: "【場所】\n庄屋\n
              1年生の皆さん先輩と仲良くなるチャンスです！みんな参加してね！\n
             【連絡事項】\n1年生：1000円\n2年生：2500円\n3年生：3500円")

Event.create!(name: "夏合宿2021", start_at: Time.parse("2021/09/22"), end_at: Time.parse("2021/09/25"),
             description: "【場所】\n長野県　えふえふ旅館\n気合入れていきましょう！")

Event.create!(name: "クリパ2020", start_at: Time.parse("2020/12/22"), end_at: Time.parse("2020/12/22"),
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n楽しんでいきましょう！\n
             【注意事項】新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。")

Event.create!(name: "FFバトルvol.3", start_at: Time.parse("2021/01/24"), end_at: Time.parse("2021/01/24"),
              url1: "https://forms.gle/hUKuvVD7nyrSUq346", url1_description: "エントリーフォーム",
              url2: "https://forms.gle/UjnMaZobvwSSUr8M6", url2_description: "アンケート",
             description: "【場所】\n都立大 南大沢キャンパス　1号館\n
             【注意事項】\n新型コロナウィルス対策として、各自、事前の検温をお願いします。\n体温が37度以上の方は参加できません。\nまた、当日は入り口に消毒用のアルコールを設置します。\n
             【コンテンツ】\n1on1バトル, 2on2バトル\n各バトルの優勝者には景品と次回エントリーの無料券があります！\n
             【スケジュール】\n13:00:Open\n13:30~14:30:バトル1,2回戦\n~14:45:DJタイム\n~15:45:3,4回戦\n15:00~決勝\n\nエントリーは参加後に表示されるURLからお願いします\n終了後アンケートに答えてもらえるとありがたいです！")


#全てのイベントに対して管理者と参加者を作成
for eventID in 1..Event.all.length do
  #管理者の作成
  for i in 1..rand(1..3) do
    begin
       EventParticipation.create!(user_id: rand(1..all_users.length),event_id: eventID, is_event_admin: true)
    rescue Exception => e
    end
  end
  #参加者の作成
  for i in 1..rand(15..30) do
    begin
       EventParticipation.create!(user_id: rand(1..all_users.length),event_id: eventID, is_event_admin: false)
    rescue Exception => e
    end
  end
end





User.create!(name: '山田太郎', name_kana: 'ヤマダタロウ', email: 'taro@yamada.com',
               term: 19, student_number: 888888, is_active: true,
               is_admin: false,  password: "password", password_confirmation: "password")
User.create!(name: '山田花子', name_kana: 'ヤマダハナコ', email: 'hanako@yamada.com',
               term: 19, student_number: 999999, is_active: true,
               is_admin: false,  password: "password", password_confirmation: "password")
