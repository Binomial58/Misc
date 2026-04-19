#import "@preview/touying:0.7.1": *
#import themes.metropolis: *
#import "../others/theorems.typ": *

#import "@preview/numbly:0.1.0": numbly

#let accent = rgb("#204C3B")
#let accent-deep = rgb("#183A2D")
#let accent-soft = rgb("#e3eee8")
#let accent-pale = rgb("#f1f6f3")
#let warm-soft = rgb("#e8f1ec")
#let surface = rgb("#fafcfb")
#let text-strong = rgb("#18322b")
#let text-soft = rgb("#4a5e58")
#let border-soft = rgb("#d6e4de")
#let border-pale = rgb("#e3eee8")
#let accent-alt = rgb("#5f7e72")

#let theorem-fill = accent-soft
#let remark-fill = warm-soft

#let theorem = thmbox("theorem", "Thm", fill: theorem-fill)
#let lemma = thmbox("theorem", "Lem", fill: theorem-fill)
#let corollary = thmbox("corollary", "Cor", base: "theorem", fill: theorem-fill)
#let definition = thmbox("definition", "Def", fill: theorem-fill)
#let remark = thmbox("remark", "Rem", fill: remark-fill).with(numbering: none)
#let example = thmplain("example", "Ex").with(numbering: none)
#let proof = thmproof("proof", "Proof", base: "theorem")
#let Proposition = thmbox("Proposition", "Prop", fill: theorem-fill)

#let TeX = box[T#h(-0.2em)#text(baseline: 0.2em)[E]#h(-0.1em)X]
#let LaTeX = box[L#h(-0.3em)#text(size: 0.7em, baseline: -0.3em)[A]#h(-0.1em)#TeX]

#let title-chip(label, fill: accent-soft, text-fill: accent-deep) = box(
  inset: (x: .55em, y: .18em),
  radius: 999pt,
  fill: fill,
  stroke: none,
  text(size: .78em, weight: "semibold", fill: text-fill)[#label],
)

#let lead-card(title, body, fill: accent-soft, stroke-color: accent) = block(
  width: 100%,
  inset: 1.0em,
  radius: .65em,
  fill: fill,
  stroke: (
    left: .26em + stroke-color,
    top: .8pt + border-soft,
    right: .8pt + border-soft,
    bottom: .8pt + border-soft,
  ),
  [
    #set text(fill: text-strong)
    #title-chip(title, fill: white)
    #v(.42em)
    #body
  ],
)

#let soft-card(title, body, fill: white, stroke-color: border-soft) = block(
  width: 100%,
  inset: .9em,
  radius: .55em,
  fill: fill,
  stroke: .85pt + stroke-color,
  [
    #set text(fill: text-strong)
    #title-chip(title)
    #v(.34em)
    #set text(size: 0.95em, fill: text-soft)
    #body
  ],
)

#let key-point(title, body) = block(
  width: 100%,
  inset: .9em,
  radius: .55em,
  fill: accent-pale,
  stroke: (
    left: .24em + accent,
    top: .8pt + border-pale,
    right: .8pt + border-pale,
    bottom: .8pt + border-pale,
  ),
  [
    #title-chip(title, fill: white)
    #v(.3em)
    #body
  ],
)

#let section-lead(kicker, body) = block(
  width: 100%,
  inset: 0pt,
  fill: none,
  stroke: none,
  [
    #title-chip(kicker)
    #v(.32em)
    #block(
      width: 100%,
      inset: .9em,
      radius: .55em,
      fill: surface,
      stroke: .8pt + border-pale,
      [
        #set text(size: 1.03em, fill: text-strong)
        #body
      ],
    )
  ],
)

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
  width: 7.9em,
  height: 7.9em,
  inset: .7em,
  radius: 50%,
  fill: fill,
  stroke: 1pt + border-soft,
  align(center + horizon)[
    #set text(size: .92em, weight: "semibold", fill: accent-deep)
    #label
  ],
)

#let image-panel(path, width: 100%) = block(
  width: 100%,
  inset: .55em,
  radius: .55em,
  fill: white,
  stroke: .85pt + border-soft,
  align(center)[#image(path, width: width)],
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

  #v(.65em)
  #text(size: .8em, weight: "semibold", fill: accent)[興味のある分野はいろいろ]
  #v(.35em)
  #align(center)[
    #grid(
      columns: 3,
      gutter: .6em,
      topic-bubble([数学]), topic-bubble([物理], fill: accent-pale), topic-bubble([プログラミング], fill: warm-soft),
    )
  ]
]

#slide(title: [どんなことしてるの？])[
  #section-lead(
    [主な活動],
    [活動は大きく，日常の活動とイベント・発表に分かれます．],
  )

  #v(.55em)
  #grid(
    columns: 2,
    gutter: .65em,
    soft-card(
      [日常の活動],
      [
        - 部会
        - 勉強会・輪講
        - ノートまとめ
      ],
      fill: rgb("#fbfefd"),
    ),
    soft-card(
      [イベント・発表],
      [
        - 大宮祭・芝浦祭での発表
        - 懸賞問題の作成
        - 夏合宿（春合宿）
        - コンテスト系
      ],
      fill: warm-soft,
      stroke-color: accent-alt,
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
        - 資料作成は #LaTeX を使用
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
      - 発表とは違う形で数学の面白さを伝えられます
    ],
    fill: warm-soft,
    stroke-color: accent-alt,
  )
]

#slide(title: [実際に配布した問題])[
  #grid(
    columns: 2,
    gutter: .8em,
    image-panel("problem1.png"), image-panel("problem2.png"),
  )
]

#slide(title: [勉強会・輪講])[
  #title-chip([みんなで進める学習])
  #v(.25em)
  #set text(size: .97em)
  自分が勉強したい本や分野でメンバーを募って，勉強会や輪講を行えます．

  授業内容の復習や発展でも問題ありません．

  #v(.45em)
  #grid(
    columns: 2,
    gutter: .65em,
    soft-card(
      [進め方],
      [
        - わからないところは共有し助け合う
        - まずは自身でノートや本と向き合う
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

  #v(.4em)
  #block(
    width: 100%,
    inset: .5em,
    radius: .45em,
    fill: accent-pale,
    stroke: (left: .24em + accent),
    [
      #set text(size: .9em)
      昨年は #text(weight: "semibold")[微分積分]，
      #text(weight: "semibold")[線形代数]，
      #text(weight: "semibold")[集合と位相]
      について勉強会・輪講を行いました．
    ],
  )
]

#slide(title: [ノートまとめ])[
  #section-lead(
    [#LaTeX に慣れる練習],
    [授業ノートを #LaTeX でまとめる活動も勧めています．

      慣れが必要なので，早めに触っておくのが大事です．],
  )

  #v(.8em)
  #lead-card(
    [こんな狙いがあります],
    [
      - 書かないと忘れるので，継続のきっかけになる
      - 添削も予定している
      - 微分積分のノートが始めやすそう
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
  #lead-card(
    [予定していること],
    [
      - 夏合宿は企画予定
      - 詳細はこれから決定
      - 希望があればぜひ聞かせてください
      - 春合宿は，参加希望者が多ければ検討します
    ],
  )
]

#slide(title: [コンテスト系])[
  #lead-card(
    [外部チャレンジも応援します],
    [サイエンスインカレなど，外部コンテストに挑戦したい人がいれば数理研として応援します．興味がある段階でも相談して大丈夫です．],
  )
  #v(.8em)
  #lead-card(
    [競技プログラミング歓迎],
    [部員の中で競技プログラミングが流行っている(諸説あり)ので是非やりましょう],
    fill: warm-soft,
    stroke-color: accent-alt,
  )
]

#slide(title: [数理研に入って嬉しいこと])[
  #soft-card(
    [1. 仲間が見つかる],
    [数理科学科の人が多く，似た関心を持つ人と出会いやすいです．],
  )

  #v(.55em)
  #soft-card(
    [2. 興味を広げやすい],
    [発表テーマ探しや雑談から，知らなかった分野に触れる機会が多いです．],
    fill: rgb("#fbfefd"),
  )

  #v(.55em)
  #soft-card(
    [3. 勉強の勢いが出る],
    [勉強が好きな人，頑張りたい人が多いので，自然とモチベーションが上がります．],
    fill: warm-soft,
    stroke-color: accent-alt,
  )
]



#slide(title: [LaTeX 講座のお知らせ])[
  #lead-card(
    [5/9（土）13:00〜 9333 教室],
    [
      - #LaTeX の使い方を 1 から説明します
      - PC さえあれば参加 OK
      - 本入部を考えている人は基本参加必須
    ],
  )

  #v(.8em)
  #lead-card(
    [5/25（月）6 限 教室未定],
    [
      - 授業で触れて「なんとなくわかる」を整理する回
      - わからないところを持ってきてもらえれば一緒に解決します
    ],
    fill: warm-soft,
    stroke-color: accent-alt,
  )
]

#slide(title: [そもそも LaTeX ってなに？])[
  #lead-card(
    [クイズ],
    [AとBのどちらが #LaTeX で書かれたものでしょう？],
  )

  #v(.8em)
  #grid(
    columns: (1.15fr, .85fr),
    gutter: .9em,
    soft-card(
      [A],
      [
        $
          sum_(k=1)^(infinity) 1/k^2 = pi^2/6, quad integral_(-infinity)^(infinity) e^(-a t^2) dif t = sqrt(pi / a)
        $
        $
          1/(2pi i) integral.cont_C f(z) dif z = sum_(k=1)^n text("Res")(f, a_k)
        $
      ],
    ),
    soft-card(
      [B],
      [
        #align(center)[#image("dirty.png", width: 80%)]
      ],
    ),
  )

  #v(.7em)
  #key-point(
    [答え：A],
    [#LaTeX は数式を含む文書をきれいに書くためのツール．

      - 数理科学課程の卒論は基本的に #LaTeX が必須らしい
      - 数理研の学祭の発表資料も #LaTeX で書きます

      ちなみに先ほどの数式は次のように書いています．

      ```latex
      \sum_{k=1}^{\infty} \frac{1}{k^2} = \frac{\pi^2}{6},
      \quad
      \int_{-\infty}^{\infty} e^{-a t^2}\,dt = \sqrt{\frac{\pi}{a}}

      \frac{1}{2\pi i}\int_C f(z)\,dz= \sum_{k=1}^n \operatorname{Res}(f, a_k)
      ```
    ],
  )
]

#slide(title: [今後の新歓日程])[
  #text(size: .8em, weight: "semibold", fill: accent)[直近の予定]
  #v(.4em)
  #grid(
    columns: 2,
    gutter: .8em,
    soft-card(
      [部会（月曜 5・6 限）2308教室],
      [
        - 4/27： 各部員の興味のある分野の紹介
        - 5/11：(内容未定)
      ],
    ),
    soft-card(
      [#LaTeX 講座],
      [
        - 5/9（土）
          時間: 13:00〜
          場所: 9333教室

        - 5/25（月）
          時間: 6 限
          場所: 未定
      ],
    ),
  )


  #key-point(
    [本入部について],
    [
      #set text(size: .95em)
      5/9 の #LaTeX 講座から，本入部の受付を始めます．

      本入部を考えている人は，ぜひ 5/9 の #LaTeX 講座に来てください．

      (例年#LaTeX 講座の終わった後はご飯会をやっています)
    ],
  )
]

#slide(title: [仮入部について])[
  #grid(
    columns: (4.2fr, 1.5fr),
    column-gutter: 1em,
    row-gutter: 0em,
    [
      #title-chip([仮入部の手順])

      #v(.42em)
      #line(length: 100%, stroke: 1.2pt + accent)
      #v(.22em)
      #text(size: .95em)[手順①: QR コードから Discord サーバーに入る]

      #v(.14em)
      #line(length: 100%, stroke: 1.2pt + accent)
      #v(.22em)
      #text(size: .95em)[手順②: サーバーネームを「名前 / 学番」にする

        例：古寺爽楽/bv24044]

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
