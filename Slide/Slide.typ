#import "@preview/touying:0.7.1": *
#import themes.metropolis: *
#import "../others/theorems.typ": *

#import "@preview/numbly:0.1.0": numbly

#let accent = rgb("#0f766e")
#let accent-deep = rgb("#134e4a")
#let accent-soft = rgb("#dff5f1")
#let accent-pale = rgb("#eefaf7")
#let warm-soft = rgb("#fff3e8")
#let surface = rgb("#fbfffe")
#let text-strong = rgb("#102027")
#let text-soft = rgb("#3c5258")

#let theorem-fill = rgb("#edf7f5")
#let remark-fill = rgb("#fff1e8")

#let theorem = thmbox("theorem", "Thm", fill: theorem-fill)
#let lemma = thmbox("theorem", "Lem", fill: theorem-fill)
#let corollary = thmbox("corollary", "Cor", base: "theorem", fill: theorem-fill)
#let definition = thmbox("definition", "Def", fill: theorem-fill)
#let remark = thmbox("remark", "Rem", fill: remark-fill).with(numbering: none)
#let example = thmplain("example", "Ex").with(numbering: none)
#let proof = thmproof("proof", "Proof", base: "theorem")
#let Proposition = thmbox("Proposition", "Prop", fill: theorem-fill)

#let lead-card(title, body, fill: accent-soft, stroke-color: accent) = block(
  width: 100%,
  inset: 1.05em,
  radius: .55em,
  fill: fill,
  stroke: (left: .28em + stroke-color),
  [
    #set text(fill: text-strong)
    #text(weight: "semibold")[#title]
    #v(.4em)
    #body
  ],
)

#let soft-card(title, body) = block(
  width: 100%,
  inset: .9em,
  radius: .45em,
  fill: white,
  stroke: rgb("#d7ece8"),
  [
    #set text(fill: text-strong)
    #text(weight: "semibold", fill: accent-deep)[#title]
    #v(.28em)
    #set text(size: 0.95em, fill: text-soft)
    #body
  ],
)

#let key-point(title, body) = block(
  width: 100%,
  inset: .9em,
  radius: .45em,
  fill: accent-pale,
  stroke: none,
  [
    #text(weight: "semibold", fill: accent-deep)[#title]
    #v(.25em)
    #body
  ],
)

#let section-lead(kicker, body) = [
  #text(size: .78em, weight: "semibold", fill: accent)[#kicker]
  #v(.2em)
  #set text(size: 1.03em)
  #body
]

#let schedule-item(day, body) = [
  #box(
    inset: (x: .5em, y: .18em),
    radius: 1em,
    fill: accent-soft,
    stroke: none,
    text(weight: "semibold", fill: accent-deep)[#day],
  )
  #h(.55em)
  #body
]

#let topic-bubble(label, fill: accent-soft) = box(
  width: 8.4em,
  height: 8.4em,
  inset: .75em,
  radius: 50%,
  fill: fill,
  stroke: 1pt + rgb("#c9e7e1"),
  align(center + horizon)[
    #set text(size: .92em, weight: "semibold", fill: accent-deep)
    #label
  ],
)

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-colors(
    primary: accent,
    primary-light: accent-soft,
    secondary: accent-deep,
    neutral-lightest: surface,
    neutral-darkest: text-strong,
  ),
  footer: self => self.info.institution,
  config-info(
    title: [数理科学研究会の紹介],
    author: [古寺爽楽（数理科学研究会 3 年）],
    date: [April 20, 2026],
    institution: [数理科学研究会],
  ),
)

#set heading(numbering: numbly("{1}.", default: "1.1"))
#set text(
  font: ("Noto Sans CJK JP", "IPAexGothic", "IPAPGothic"),
  lang: "ja",
  fill: text-strong,
)
#set par(justify: true, leading: 0.72em)

#title-slide()

#slide(title: [数理科学研究会とは])[
  #section-lead(
    [どんなサークル？],
    [数理科学分野に興味がある人，好きな人，勉強を頑張りたい人が集まるサークル],
  )

  #v(.9em)
  #align(center)[
    #grid(
      columns: 3,
      gutter: .9em,
      topic-bubble([数学]), topic-bubble([物理], fill: accent-pale), topic-bubble([プログラミング], fill: warm-soft),
    )
  ]


]

#slide(title: [どんなことしてるの？])[
  #section-lead(
    [主な活動],
    [数理研の活動は，定例の部会を軸に，発表・勉強・イベントなどがあります．],
  )

  #v(.8em)
  #grid(
    columns: 2,
    gutter: .8em,
    soft-card(
      [日常の活動],
      [
        - 部会
        - 勉強会・輪講
        - ノートまとめ
      ],
    ),
    soft-card(
      [イベント・発表],
      [
        - 大宮祭・芝浦祭での発表
        - 懸賞問題の作成
        - 夏合宿（春合宿）
        - コンテスト系
      ],
    ),
  )
]

#slide(title: [部会])[
  #grid(
    columns: (1.25fr, 1fr),
    gutter: .8em,
    [
      #section-lead(
        [定例で集まる時間],
        [部員が教室に集まって部会を行います．

          連絡共有だけでなく，勉強や研究の進捗報告，イベントの相談もここで進めます．],
      )

      #v(.75em)
      - 2026 年度前期は毎週月曜 6 限
      - 教室は 5 限から予約予定
      - 欠席時は連絡があれば大丈夫
      - 基本的には参加必須
    ],
    [
      #lead-card(
        [この時間でやること],
        [
          - 連絡事項の共有
          - 進捗報告
          - 勉強や研究の相談
          - 行事の方針決め
        ],
      )
    ],
  )
]

#slide(title: [大宮祭・芝浦祭での発表])[
  #section-lead(
    [大宮祭・芝浦祭],
    [学祭では，原則として全員に発表してもらいます．

      自分が興味を持ったテーマを，自分なりに調べてまとめ，発表する活動です．],
  )

  #v(.8em)
  #grid(
    columns: 2,
    gutter: .8em,
    key-point(
      [発表の進め方],
      [
        - 勉強したことを形にする
        - テーマは自分の興味から決めてよい
        - 最初は上の学年がサポートします
      ],
    ),
    key-point(
      [補足],
      [
        - 資料作成は LaTeX を使用
        - 過去資料は数理研の HP で閲覧可能
        - 1 年生は芝浦祭からでも OK
      ],
    ),
  )
]

#slide(title: [過去の発表テーマ例])[
  #section-lead(
    [テーマはかなり自由です],
    [かなり幅広いテーマで発表しています．

      専門的でも，身近な疑問から入る形でも大丈夫です．],
  )

  #v(.9em)
  #grid(
    columns: 2,
    gutter: .8em,
    soft-card(
      [数学寄り],
      [
        - クリフォード代数の定義
        - $n$ 次元立体角における直角の定義
        - 四元数函数と微分可能性
      ],
    ),
    soft-card(
      [応用・計算寄り],
      [
        - 月最大降雨量の確率密度関数
        - 大きい数が素数かどうか判定するアプローチ
      ],
    ),
  )
]

#slide(title: [懸賞問題作成])[
  #section-lead(
    [学祭企画のひとつ],
    [大宮祭・芝浦祭では，お客さんに実際に解いてもらう懸賞問題も作成します．],
  )

  #v(.8em)
  #lead-card(
    [どんな問題？],
    [
      - 難しい知識が必要というより「頭をひねる」タイプ
      - 学祭前になると準備が活発になります
      - 発表とは違う形で数理の面白さを伝えられます
    ],
    fill: warm-soft,
    stroke-color: rgb("#d97706"),
  )
]

#slide(title: [勉強会])[
  #section-lead(
    [みんなで進める学習],
    [自分が勉強したい本や分野でメンバーを募って，勉強会や輪講を行えます．

      授業内容の復習や発展でも問題ありません．],
  )

  #v(.8em)
  #grid(
    columns: 2,
    gutter: .8em,
    soft-card(
      [進め方],
      [
        - わからないところは共有して助け合う
        - まずは自分たちでノートや本と向き合う
        - 上の学年も必要に応じてサポート
      ],
    ),
    soft-card(
      [時間の使い方],
      [
        - 基本は部会の時間を利用
        - 別の時間に集まっても OK
        - 少人数でも気軽に始められます
      ],
    ),
  )
]

#slide(title: [ノートまとめ])[
  #section-lead(
    [LaTeX に慣れる練習],
    [授業ノートを LaTeX でまとめる活動も勧めています．

      慣れが必要なので，早めに触っておくのが大事です．],
  )

  #v(.8em)
  #lead-card(
    [こんな狙いがあります],
    [
      - 書かないと忘れるので，継続のきっかけになる
      - 添削も予定している
      - 微積や数学基礎あたりのノートが始めやすそう
    ],
  )
]

#slide(title: [夏合宿（春合宿）])[
  #section-lead(
    [勉強＋交流のイベント],
    [夏休みには合宿を企画しています．

      勉強だけでなく，部員同士の親睦を深める目的も大きいイベントです．],
  )

  #v(.8em)
  - 夏合宿は企画予定
  - 詳細はこれから決定
  - 希望があればぜひ聞かせてください
  - 春合宿は，参加希望者が多ければ検討します
]

#slide(title: [コンテスト系])[
  #lead-card(
    [外部チャレンジも応援します],
    [サイエンスインカレなど，外部コンテストに挑戦したい人がいれば数理研として応援します．興味がある段階でも相談して大丈夫です．],
  )
]

#slide(title: [数理研に入って嬉しいこと])[
  #grid(
    columns: 3,
    gutter: .8em,
    soft-card(
      [1. 仲間が見つかる],
      [数理科学科の人が多く，似た関心を持つ人と出会いやすいです．],
    ),
    soft-card(
      [2. 興味を広げやすい],
      [発表テーマ探しや雑談から，知らなかった分野に触れる機会が多いです．],
    ),
    soft-card(
      [3. 勉強の勢いが出る],
      [勉強が好きな人，頑張りたい人が多いので，自然とモチベーションが上がります．],
    ),
  )
]

#slide(title: [入部したいかも！と思ったら])[
  #grid(
    columns: 3,
    gutter: .8em,
    key-point(
      [1. まずは仮入部],
      [
        5月上旬まで

        部会に顔を出してみてください．

        雰囲気がわかります．
      ],
    ),
    key-point(
      [2. Discord に招待],
      [
        連絡は基本的にDiscordで行います．

        仮入部期間の予定もここで流す予定です．
      ],
    ),
    key-point(
      [3. 本入部の案内],
      [
        詳細は 5 月上旬にお知らせします．
        時期はまだ未定です．
      ],
    ),
  )
]

#slide(title: [仮入部期間の部会予定])[
  #section-lead(
    [まずはここから],
    [仮入部期間の部会では，サークル紹介だけでなく，部員がどんなことに興味を持っているかも知れるようにします．],
  )

  #v(.8em)
  - #schedule-item([4/20], [数理研の紹介と数学の小話])
  - #schedule-item([4/27], [各部員の興味のある分野の紹介（自己紹介）])
]

#slide(title: [LaTeX 講座のお知らせ])[
  #grid(
    columns: 2,
    gutter: .8em,
    lead-card(
      [5/9（土）13:00〜 9333 教室],
      [
        - LaTeX の使い方を 1 から説明します
        - PC さえあれば参加 OK
      ],
    ),
    lead-card(
      [5/25（月）6 限 教室未定],
      [
        - 授業で触れて「なんとなくわかる」を整理する回
        - わからないところを持ってきてもらえれば一緒に解決します
      ],
      fill: warm-soft,
      stroke-color: rgb("#d97706"),
    ),
  )
]

#slide(title: [そもそも LaTeX ってなに？])[
  #lead-card(
    [クイズ],
    [A と B のうち，どちらが `tex` で書いたもので，どちらが Word で作ったものでしょう？],
  )

  #v(.8em)
  #grid(
    columns: (1.15fr, .85fr),
    gutter: .9em,
    soft-card(
      [A],
      [
        #raw(
          "$\n  sum_(k = 1)^infinity 1/k^2 = pi^2 / 6\n  quad\n  integral_(-infinity)^infinity e^(-a t^2) dif t = sqrt(pi / a)\n$",
          block: true,
          lang: "typ",
        )
      ],
    ),
    soft-card(
      [B],
      [
        #align(center)[#image("dirty.png", width: 100%)]
      ],
    ),
  )

  #v(.7em)
  #key-point(
    [答え],
    [A のように `tex` のコードで数式を書くのが LaTeX です．
    LaTeX は，数式や文章を「見た目」ではなく「記述」で作るので，修正しやすく，整った文書を作りやすいのが強みです．],
  )
]

#slide(title: [今後の新歓日程])[
  #grid(
    columns: 2,
    gutter: .8em,
    soft-card(
      [部会（月曜 5・6 限）],
      [
        - 4/27 各部員の興味のある分野の紹介（自己紹介）
        - 5/11
      ],
    ),
    soft-card(
      [LaTeX 講座],
      [
        - 5/9（土）13:00〜 9333 教室
        - 5/25（月）6 限 教室未定
      ],
    ),
  )
]

#slide(title: [仮入部について])[
  #grid(
    columns: (4.6fr, 1.3fr),
    column-gutter: 1em,
    row-gutter: 0em,
    [
      #text(size: 1.45em, weight: "regular")[仮入部の手順]

      #v(.42em)
      #line(length: 100%, stroke: 1.2pt + accent)
      #v(.22em)
      #text(size: .95em)[手順①: QR コードから Discord サーバーに入る]

      #v(.14em)
      #line(length: 100%, stroke: 1.2pt + accent)
      #v(.22em)
      #text(size: .95em)[手順②: サーバーネームを「名前 / 学番」にする]

      #v(.14em)
      #line(length: 100%, stroke: 1.2pt + accent)
      #v(.22em)
      #text(size: .95em)[手順③: チャンネルの使い方を確認する]

      #v(.14em)
      #line(length: 100%, stroke: 1.2pt + accent)
      #v(.16em)
      #grid(
        columns: (auto, auto, auto),
        column-gutter: .08em,
        row-gutter: 0em,
        align(center + horizon)[#text(size: 1.02em, weight: "medium")[手順④: 確認できたら]],
        align(center + horizon)[#image("haaku.png", height: .74em)],
        align(center + horizon)[#text(size: 1.02em, weight: "medium")[を押す]],
      )
    ],
    [
      #align(center + top)[
        #image("QR_322564.png", width: 1.55in)
      ]
    ],
  )
]
