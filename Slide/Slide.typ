#import "@preview/touying:0.7.1": *
#import themes.metropolis: *
#import "../others/theorems.typ": *

#import "@preview/numbly:0.1.0": numbly

#let accent = rgb("#0f766e")
#let accent-soft = rgb("#dff5f1")
#let surface = rgb("#fbfffe")
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

#let lead-card(title, body) = block(
  width: 100%,
  inset: 1.1em,
  radius: .4em,
  fill: accent-soft,
  stroke: (left: .28em + accent),
  [
    #set text(fill: rgb("#12312d"))
    #text(weight: "semibold")[#title]

    #v(.45em)
    #body
  ],
)

#show: metropolis-theme.with(
  aspect-ratio: "16-9",
  config-colors(
    primary: accent,
    primary-light: accent-soft,
    secondary: rgb("#153c44"),
    neutral-lightest: surface,
    neutral-darkest: rgb("#102027"),
  ),
  footer: self => self.info.institution,
  config-info(
    title: [数理科学研究会の紹介],
    author: [古寺爽楽 （数理科学研究会3年）],
    date: [April 20, 2026],
    institution: [数理科学研究会],
  ),
)

#set heading(numbering: numbly("{1}.", default: "1.1"))
#set text(
  font: ("Noto Sans CJK JP", "IPAexGothic", "IPAPGothic"),
  lang: "ja",
)
#set par(justify: true, leading: 0.75em)

#title-slide()

#slide(title: [数理研って何？])[
  数学やその周辺のことに興味がある人，好きな人，
  勉強頑張ってみたいかも，という人たちが集まるサークルです．
]

#slide(title: [どんなことしてるの？])[
  1. 週 1 の部会
  #list(
    [2025 年度前期は毎週月曜 6 限に集まります．],
    [教室は 5 限から予約するつもりなので，早めに集まって何かしてもらってても OK です．],
    [連絡事項の共有や，勉強（研究）の進捗報告，イベントの決めごとなどをします．],
    [基本的に参加してほしいです．],
    [欠席の場合は連絡ください．],
  )

  #v(.8em)
  2. 大宮祭，芝浦祭での発表
  #list(
    [自分なりに勉強したこと，研究したことなどを発表します．],
    [自分の興味があるトピックを自分なりに掘り進めていく感じです．],
    [最初は悩み満載かと思いますが，上の学年もお手伝いします．],
    [LaTeX での資料作成必須です．],
    [過去の資料が数理研の HP から見られます．],
    [1 年生は芝浦祭からでよいです（もちろん大宮祭で発表したい人がいれば歓迎）．],
  )
]

#slide(title: [どんなことしてるの？])[
  3. 懸賞問題作成
  #list(
    [大宮祭，芝浦祭でお客さんに解いてもらいます．],
    [学祭前に活発化します．],
    [難しい知識を，というよりは頭ひねる系の．],
  )

  #v(.8em)
  4. 勉強会
  #list(
    [自分の勉強したい本や分野でメンバーを募ってお勉強します．],
    [授業の勉強などでも可です．],
    [わからないところは共有して，理解している人に助けてもらいましょう．],
    [上の学年もお手伝いしますが，まずはみんなでノートや本とにらめっこしましょう．],
    [基本的には部会の時間を利用してもらえれば良いですが，他の時間に集まっても OK です．],
  )
]

#slide(title: [どんなことしてるの？])[
  5. ノートまとめ
  #list(
    [LaTeX できるようになってほしいなあ...という気持ちからです．],
    [やらないと忘れますし，慣れが必須です．],
    [添削もします（予定）．],
    [微積，数学基礎あたりがよさそう（線形代数 I は行列ばっかで大変そう）．],
  )

  #v(.8em)
  6. 夏合宿（春合宿）
  #list(
    [夏休みに合宿を企画しています．],
    [まだ何も決まっていません．],
    [勉強するだけじゃなくて，親睦を深める目的強め．],
    [何か希望があればぜひ．],
    [春合宿については，まだ実施した事例がないですが，参加希望者多数なら検討します．],
  )

  #v(.8em)
  7. コンテスト系
  #list(
    [もし外部のコンテスト（サイエンスインカレなど）に挑戦したい，という方がいれば応援します．],
  )
]

#slide(title: [数理研に入って嬉しいこと（？）])[
  1. 数理科学科のひとがいっぱいいます！
  #list(
    [数理の人数は芝浦でいちばん多い気がします（するだけ，たぶんそう？）！],
  )

  #v(.8em)
  2. やりたいことを探せる機会が多いです！
  #list(
    [発表テーマ探しをしてたらいろんな分野を知れそう！],
    [いろんな分野に興味がある人が揃っているので，たくさんお話聞けます！],
  )

  #v(.8em)
  3. お勉強が好きな人や頑張りたいって人が多いので，モチベあがります！
  #list(
    [みんなを見てたらやる気になるかも！],
  )
]

#slide(title: [入部したいかも！と思ったら])[
  1. 4 月いっぱい（5 月の上旬も多分）仮入部期間です．
  #list(
    [ぜひ部会に顔を出してみてください．],
    [部会の雰囲気が知れます．],
  )

  #v(.8em)
  2. 数理研の Discord に招待します．
  #list(
    [数理研は基本的に連絡を Discord にて行っています．],
    [仮入部期間の予定などはここで流す予定です（X などでも流すように心がけます）．],
    [仮入部のロール付与になるのでお気軽に！],
  )

  #v(.8em)
  3. 本入部の詳細は 5 月上旬にお知らせします．
  #list(
    [時期はまだ未定です...ごめんね],
  )
]

#slide(title: [仮入部期間の部会の活動])[
  #enum(
    [部員が自己紹介します．],
    [部員が自分の興味のある分野，大宮祭の研究テーマなどを発表します．],
    [あとなんだろ],
  )
]

#slide(title: [LaTeX 講座のお知らせ])[
  #list(
    [5/5（月）（GW 最終日，オンデマンド授業実施日），時間未定，教室未定],
    [LaTeX の使い方，1 から手取り足取り教えます！],
    [PC さえあれば OK],
    [まずは導入...],
  )

  #v(1em)

  #list(
    [5/12（月）6 限，教室未定],
    [授業でも少しずつ LaTeX に触り，なんとなくわかってきたようなわからないような...],
    [そんな皆さんの質問にお答えします！],
    [よくわかっていないところをすべてもってきちゃってください！解決しましょう！],
  )
]

#slide(title: [そもそも LaTeX ってなに？])[
  #lead-card(
    [ひとことで言うと],
    [
      数式などを含む文書をいい感じに書けるツールです．
    ],
  )

  #v(.8em)

  $
    sum_(k = 1)^infinity 1/k^2 = pi^2 / 6
    quad
    integral_(-infinity)^infinity e^(-a t^2) dif t = sqrt(pi / a)
  $

  #v(.8em)

  などがこんな感じにきれいに書けます．
  ちなみにこれは，

  #raw(
    "\\begin{align*}\n\\sum_{k=1}^{\\infty}\\frac{1}{k^2}=\\frac{\\pi^2}{6}\n\\int_{-\\infty}^{\\infty}e^{-at^2}dt=\\sqrt{\\frac{\\pi}{a}}\n\\end{align*}",
    block: true,
    lang: "tex",
  )

  などと書いています．このスライドも LaTeX を使って作成しています．

  #list(
    [数理の人は卒論で LaTeX 必須らしいです．],
    [早くから慣れておけば，とっても良いスタートがきれます！],
    [授業ノートやレポート作成などで使いこなしちゃおう！],
  )
]
