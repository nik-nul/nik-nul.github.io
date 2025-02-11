#import "@preview/touying:0.5.5": *
#import themes.university: *
#import "@preview/numbly:0.1.0": numbly
#import "@preview/physica:0.9.4": ket, dd

#set text(
  font: ("New Computer Modern", "Noto Serif CJK TC", "Noto Serif CJK SC"),
  size: 24pt
)

#show: university-theme.with(
  aspect-ratio: "16-9",
  // align: horizon,
  // config-common(handout: true),
  config-info(
  title: [科學哲學101],
  subtitle: [A Brief Introduction to the Philosophy of Science(?)],
  author: [231220103
    劉贊宸],
  date: datetime.today(),
  institution: [*Department of Computer Science and Technology*

    *Nanjing University*
  ],
    // logo: emoji.school,
  ),
)

#let blockquote(cite: none, body) = [
  #set text(size: 0.97em)
  #pad(left: 1.5em)[
    #block(
    breakable: true,
    width: 100%,
    fill: gray.lighten(90%),
    radius: (left: 0pt, right: 5pt),
    stroke: (left: 5pt + gray, rest: 1pt + silver),
    inset: 1em
    )[#body]
  ]
]

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

== Outline <touying:hidden>

#components.adaptive-columns(outline(title: none, indent: 1em))

= 什麼是科學哲學？

== 科學哲學的三個維度
#pause
+ 科學問題闡釋的哲學 #pause
  - 時空觀
  - 因果觀
  - 認識論
  - ... #pause
+ 有關於科學的哲學 #pause
+ 科學化的哲學學科 #pause
  - 分析哲學
  - 心靈哲學

= 科學問題闡釋的哲學

== 時空觀
#pause

時空的本質是什麼？

時空是以怎樣的形式存在的？

時間是否是單向度流動的？

時空是連續的還是離散可分的？

時空是否是對易的？

#pagebreak()

=== Henri-Louis Bergson 的直覺主義時間觀念
#pause
- 當人們試圖測量某個瞬間的時候，那個瞬間已然消逝。測量到的是靜止的，完整的線段，而時間是流動的，未完成的#pause

- la durée （時間的綿延）是內在的時間體驗，不是均質化的科學意義上的時間#pause

- la durée 是內在的時間體驗，不是均質化的科學意義上的時間。自由意志存在於時間棲居的綿延之中#pause

- la durée 無法通過符號概念來表達，只能通過直覺把握其流動
#pagebreak()

=== Isaac Newton 的絕對時空觀
#pause
- 絕對時間和空間都是存在的，不會隨著任何外部的作用或觀察者改變#pause
- 對於相對速度恆定的兩參考系，有 Galilean 變換成立： $ mat(x'; t') = mat(1, -v; 0, 1) mat(x; t) $#pause
- 這也意味着兩個慣性系不可分，且物理定律相同(相對性原理)#pause
- Newton 認爲水桶實驗證實了絕對空間的存在性，也就是慣性系確實可以作爲特殊的參考系和非慣性系存在區別(?)#pause
- 絕對時間的存在是不言自明的(?)
#pagebreak()

=== 狹義相對論時空觀
#pause
- Mach #emoji.star 原理指出了水桶實驗的漏洞#pause
- Maxwell 方程組在 Galilean 變換下不協變#pause
- 以太理論被 Michelson–Morley 實驗推翻#pause
- Lorentz 變換#emoji.star 取代了 Galilean 變換：$ mat(x'; t') = 1/sqrt(1-v^2/c^2)mat(1, -v; -v/c^2, 1) mat(x; t) $#pause
- 狹義相對論中時間和相對觀測者的速度有關#pause
- 狹義相對論中保守了狹義相對性原理#pause
- more explaination...

#pagebreak()

=== 廣義相對論時空觀
// #pause
- 廣義相對論中有廣義相對性原理，即在基本物理定律下，所有座標系都該是等價的
- Einstein 場方程描述了質量，時間和空間三者的統一：$ R_(mu nu)-1/2R g_(mu nu) + Lambda g_(mu nu) = (8pi G)/c^4T_(mu nu) $
- no more explaination...
#pagebreak()

=== 物理的對時間和空間的理解
// #pause
#blockquote([Time is what a clock measures.\
#h(1fr)——Albert Einstein])
// #pause
- e.g. $Delta S>0 => S$ is a time.
// #pause
#blockquote([Space is where the momentum spans.])

== 因果觀
=== 經典因果觀
#pause
- Aristotle: 因果是基本秩序
- Newton 力學: 強決定論
#pause
=== 統計因果觀
- David Hume: constant conjunction, continuity#pause
  - 因果 #math.arrow 相關性#pause
- Hans Reichenbach: 因果推理模型
  - $P(B|A)>P(B)$
- Pearl 三個層次：
  - 事件 #math.arrow 事件的性質 #math.arrow 性質
#pagebreak()
- Lord 悖論
  - One statistician does not adjust for initial weight, instead using t-test and comparing gain scores (individuals' average final weight − average initial weight) as the outcome.
  - The second statistician adjusts for initial weight, using analysis of covariance (ANCOVA), and compares (adjusted) final weights as the outcome.
- 隱變量的處理
  - 反事實推理
  - 直接的介入
#pagebreak()
=== 量子力學與因果觀
- 延遲選擇實驗
- Schrödinger 方程：$ i planck.reduce dd("")/dd(t) ket(Psi(t))=hat(H) ket(Psi(t)) $
  - 哥本哈根詮釋：“事實以概率形式存在”
  - 多世界詮釋
  - 非定域隱變量
    - 大 Bell 實驗
#pagebreak()
== 認識論
- 科學實在論
  - 科學探索的世界是獨立於心靈而存在的
  - 科學對於這個世界的描述是以其字面意義來解釋
  - 科學理論構成了關於這個世界的知識
- 結構同構、物項實在...
#pause
- 工具主義
  - 科學理論是惟象的模型
  - 不保證真實性，但是確實有有效性
#pagebreak()
#v(5em)
#blockquote([Force is a culture.\
#h(1fr)——Richard Feynman])
= 有關於科學的哲學
或有關於科學發展的科學
== 批判理性主義
- Karl Popper, Imre Lakatos
- 可證僞性：科學需要提出能夠被否定的命題
  - e.g. 形式科學不是科學
- 被證僞後揚棄原有的理論，提出更準確逼近的理論
- 形式化：$ and_(p in {O_1, O_2,...}) p and {O_1, O_2,...} tack.r not S $
- 反對通過驗證正確性的方式來確認理論正確（歸納主義）
#pagebreak()
== 歷史主義
=== Thomas Kuhn
#pause
- 科學共同體
- 前科學 #math.arrow 常態科學 #math.arrow 科學危機 #math.arrow #underline([範式])轉換革命 #math.arrow ...
- 非線性的"斷裂"和革命，不可通約
- 科學共同體決定了科學知識，科學是一種社會的建構
- e.g. 日心與地心
  - 基本假設
  - 具體解釋
  - 概念
- e.g. 月下世界與月上世界
#pagebreak()
=== Imre Lakatos
- 硬核
  - 理論的核心假設和推理
  - 如 Newton 力學中三定律、地心說
  - 反面啓示
- 保護帶
  - 由核心導出的模型，或者附加的輔助假設
  - 海王星的發現、均輪
  - 正面啓示
- 積極的改進的增加和挽救性的增加
- e.g. 發射理論

= 更多的內容
#pagebreak()
- 還原主義，機械決定論和當前的科學教育
- 科學進步的 Whig 史觀
- 科學與政治
  - 馬赫主義
  - 唯物主義與經驗批判主義
  - 李森科
  - 資產階級反動學術觀點相對論
- 科學哲學的歷史主義與馬克思主義的辯證法
- ...
