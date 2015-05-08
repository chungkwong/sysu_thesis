%这是中山大学本科毕业论文非官方模版0.0.4的一部分
%维护者为陈颂光(1m02math@126.com)
%任何人可以自由使用本文件
%然而，无法保证它完全符合学校的相关要求，甚至不保证它可以正常编译
%对于使用此模版造成的任何后果，维护者不负有任何责任
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sysuthesis}
	[2015/04/03 v0.0.3 Sun Yat-Sen University undergraduate thesis document class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax
\LoadClass[adobefonts,a4paper,openright,cs4size,hyperref]{ctexbook}%在windows编译且希望使用微软的字体时请把adobefonts改为winfonts
\RequirePackage[margin=1in,outer=1.5in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{tocloft}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{listings}
\RequirePackage{subfig}
\RequirePackage{longtable}
\RequirePackage{endnotes}
\RequirePackage[section]{placeins}
\RequirePackage[chinese,onelanguage,noline,noend,linesnumbered,algochapter,ruled,vlined]{algorithm2e}%不需要描述算法时把这行去掉
\RequirePackage{enumitem}
\setlist[enumerate]{nosep}
\setlist[itemize]{nosep}
\setlist[description]{nosep}
\AtBeginDocument{\hypersetup{
	colorlinks=true,citecolor=black,filecolor=black,linkcolor=black,urlcolor=black,CJKbookmarks=true,xetex=true,
	pdftitle={\@title},
	pdfauthor={\@author},
	pdfkeywords={\@keywords},
	pdfcreator={LaTeX with hyperref package, using SYSU undergraduate Thesis LaTeX Template}}}
	
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\pagestyle{fancy}

\setlength{\cftbeforetoctitleskip}{50pt}
\setlength{\cftbeforelottitleskip}{50pt}
\setlength{\cftbeforeloftitleskip}{50pt}
\renewcommand{\cfttoctitlefont}{\hfill\zihao{3}\songti\bfseries}
\renewcommand{\cftlottitlefont}{\hfill\zihao{3}\songti\bfseries}
\renewcommand{\cftloftitlefont}{\hfill\zihao{3}\songti\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftchapfont}{\zihao{4}\heiti}
\addtolength{\cftchapnumwidth}{3\ccwd}
\renewcommand{\cftsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecfont}{\zihao{-4}\songti}
\renewcommand{\cftfigfont}{\zihao{-4}\songti}
\renewcommand{\cfttabfont}{\zihao{-4}\songti}
\renewcommand{\cftchappagefont}{\zihao{4}\heiti}
\renewcommand{\cftsecpagefont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecpagefont}{\zihao{-4}\songti}
\renewcommand{\cftfigpagefont}{\zihao{-4}\songti}
\renewcommand{\cfttabpagefont}{\zihao{-4}\songti}

\newcommand\etitle[1]{\def\@etitle{#1}}
\newcommand\authorx[1]{\def\@authorx{#1}}
\newcommand\studentid[1]{\def\@studentid{#1}}
\newcommand\school[1]{\def\@school{#1}}
\newcommand\major[1]{\def\@major{#1}}
\newcommand\mentor[1]{\def\@mentor{#1}}
\newcommand\keywords[1]{\def\@keywords{#1}}
\newcommand\ekeywords[1]{\def\@ekeywords{#1}}
\newcommand\openingopinion[1]{\def\@openingopinion{#1}}
\newcommand\firstcheck[1]{\def\@firstcheck{#1}}
\newcommand\firstopinion[1]{\def\@firstopinion{#1}}
\newcommand\secondcheck[1]{\def\@secondcheck{#1}}
\newcommand\secondopinion[1]{\def\@secondopinion{#1}}
\newcommand\thirdcheck[1]{\def\@thirdcheck{#1}}
\newcommand\thirdopinion[1]{\def\@thirdopinion{#1}}
\newcommand\forthcheck[1]{\def\@forthcheck{#1}}
\newcommand\forthopinion[1]{\def\@forthopinion{#1}}
\newcommand\overallopinion[1]{\def\@overallopinion{#1}}
\newcommand\instructorcomment[1]{\def\@instructorcomment{#1}}
\newcommand\instructorgrade[1]{\def\@instructorgrade{#1}}
\newcommand\majorcomment[1]{\def\@majorcomment{#1}}
\newcommand\majorgrade[1]{\def\@majorgrade{#1}}
\newcommand\schoolcomment[1]{\def\@schoolcomment{#1}}
\newcommand\schoolgrade[1]{\def\@schoolgrade{#1}}
\newcommand\openingrep[1]{\def\@openingrep{#1}}
\newcommand\cabstract[1]{\def\@cabstract{#1}}
\newcommand\eabstract[1]{\def\@eabstract{#1}}

\newtheoremstyle{dotless}{3pt}{3pt}{\normalfont}{}{\bfseries}{}{ }{}
\theoremstyle{dotless}
\newtheorem{theorem}{{定理}}[chapter]
\newtheorem{proposition}{{命题}}[chapter]
\newtheorem{lemma}{{引理}}[chapter]
\newtheorem{corollary}{{推论}}[chapter]
\newtheorem{definition}{{定义}}[chapter]
\newtheorem{remark}{{注记}}[chapter]
\newtheorem{eg}{例}[chapter]
\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
\renewcommand{\proofname}{{\heiti 证明}}
\renewcommand{\notesname}{{\zihao{-5}\heiti 注释：\hfill}}
\renewcommand{\bibname}{{\zihao{-5}\heiti 参考文献：}}
\renewcommand{\@biblabel}[1]{[#1]\hfill}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \itshape
    #1]\ignorespaces
}{
  \popQED\endtrivlist\@endpefalse
}

\xeCJKsetcharclass{`①}{`⑩}{1}
%\makeatletter
   \renewcommand{\@fnsymbol}[1]{%
    \ifcase#1\or \text{①}\or \text{②}\or \text{③}\or  \text{④}\or \text{⑤}\or \text{⑥}\or \text{⑦}\or \text{⑧} \or \text{⑨} \or \text{⑩} \else\@ctrerr\fi}
%  \makeatother
\renewcommand{\theendnote}{\fnsymbol{endnote}}

\renewcommand\maketitle{
	\cleardoublepage
	\begin{titlepage}
		\begin{center}
			\includegraphics[width=10cm]{image/logo.png}\\
			\songti
			\zihao{-0}\textbf{本科生毕业论文}\\
			\zihao{-3}
			\rule{0cm}{3\baselineskip}\\
			\begin{tabular}{lc}
				题\hspace{2\ccwd}目： & \underline{\makebox[8cm]{\hfill\@title\hfill}}\\\mbox{}\\
				院\hspace{2\ccwd}系： & \underline{\makebox[8cm]{\hfill\@school\hfill}}\\\mbox{}\\
				专\hspace{2\ccwd}业： & \underline{\makebox[8cm]{\hfill\@major\hfill}}\\\mbox{}\\
				学生姓名： & \underline{\makebox[8cm]{\hfill\@authorx\hfill}}\\\mbox{}\\
				学\hspace{2\ccwd}号： & \underline{\makebox[8cm]{\hfill\@studentid\hfill}}\\\mbox{}\\
				指导教师： & \underline{\makebox[8cm]{\hfill\@mentor\hfill}}\\
				（职 称）& \\
			\end{tabular}
			\vfill
			{\centering \@date}
		\end{center}
	\end{titlepage}
}

\newcommand\openingreport{
	\cleardoublepage
	\CTEXsetup[titleformat={\zihao{-3}\fangsong\bfseries}]{chapter}
	\CTEXsetup[beforeskip={-3.5ex plus -1ex minus -.2ex},afterskip={2.3ex plus .2ex}]{chapter}
	\chapter*{表一\hspace{\ccwd}毕业论文（设计）开题报告}
	\zihao{-4}\songti
	\begin{longtable}{|p{\textwidth}|}
		\hline
		\endfirsthead
		\hline
		\endhead
		\hline
		\endfoot
		\hline
		\endlastfoot
		论文(设计)题目:\@title
		\\\hline
		(简述选题的目的、思路、方法、相关支持条件及进度安排等)\\
		\@openingrep	\\
		\\
		\hspace{2\ccwd}学生签名：\hfill 年\qquad 月\qquad 日\\
		\\\hline
		指导教师意见:\\
		\@openingopinion\\
		1、同意开题( ) 2、修改后开题( ) 3、重新开题( )\\\rule{0cm}{\baselineskip}\\
		\hspace{2\ccwd}指导教师签名:\hfill 年\qquad 月\qquad 日\\\rule{0cm}{\baselineskip}\\
	\end{longtable}
}


\newcommand\progresscheck{
	\cleardoublepage
	\CTEXsetup[titleformat={\zihao{-3}\fangsong\bfseries}]{chapter}
	\CTEXsetup[beforeskip={-3.5ex plus -1ex minus -.2ex},afterskip={2.3ex plus .2ex}]{chapter}
	\chapter*{表二\hspace{\ccwd}毕业论文（设计）过程检查情况记录表}
	\zihao{-4}\songti
	\begin{longtable}{|p{1.5\ccwd}|p{\textwidth - 1.5\ccwd}|}
		\hline
		\endfirsthead
		\hline
		\endhead
		\hline
		\endfoot
		\hline
		\endlastfoot
		\multicolumn{2}{|l|}{指导教师分阶段检查论文的进展情况（要求过程检查记录不少于3次）：}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{{\bfseries 第1次检查}\\学生总结：\\\@firstcheck}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{指导教师意见：\\\@firstopinion}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{{\bfseries 第2次检查}\\学生总结：\\\@secondcheck}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{指导教师意见：\\\@secondopinion}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{{\bfseries 第3次检查}\\学生总结：\\\@thirdcheck}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{指导教师意见：\\\@thirdopinion}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{{\bfseries 第4次检查}\\学生总结：\\\@forthcheck}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{\parbox{\textwidth - 1.5\ccwd}{指导教师意见：\\\@forthopinion}}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{学生签名：\hfill 年\qquad 月\qquad 日}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\multicolumn{2}{|l|}{指导教师签名：\hfill 年\qquad 月\qquad 日}\\
		\multicolumn{2}{|l|}{\rule{0cm}{\baselineskip}}\\
		\hline
		{\bfseries 总体完成情况}& 指导教师意见：\\
		& \@overallopinion\\
		& 1、按计划完成，完成情况优（ ）\\
		& 2、按计划完成，完成情况良（ ）\\
		& 3、基本按计划完成，完成情况合格（ ）\\
		& 4、完成情况不合格（ ）\\
		& \rule{0cm}{\baselineskip}\\
		& 指导教师签名：\hfill 年\qquad 月\qquad 日\\
		& \rule{0cm}{\baselineskip}\\
	\end{longtable}
}

\newcommand\record{
	\cleardoublepage
	\CTEXsetup[titleformat={\zihao{-3}\fangsong\bfseries}]{chapter}
	\CTEXsetup[beforeskip={-3.5ex plus -1ex minus -.2ex},afterskip={2.3ex plus .2ex}]{chapter}
	\chapter*{表三\hspace{\ccwd}毕业论文(设计)答辩情况登记表}
	\zihao{-4}\songti
	\begin{tabular}{|c|c|c|c|}
	\hline
	答辩人 &  \@author & 专业 & \@major\\\hline
	论文（设计）题目 & \multicolumn{3}{c|}{\@title}\\\hline
	答辩小组成员 & \multicolumn{3}{c|}{}\\\hline
	\multicolumn{4}{|l|}{答辩记录：}\\
	\multicolumn{4}{|l|}{\rule{0cm}{16cm}}\\
	\multicolumn{4}{|p{\textwidth}|}{}\\
	\multicolumn{4}{|l|}{记录人签名：\hspace{\fill} 年\qquad 月\qquad 日}\\
	\multicolumn{4}{|l|}{\rule{0cm}{\baselineskip}}
	\\\hline
	\end{tabular}
}

\newcommand\disclaim{
	\CTEXsetup[titleformat={\zihao{-2}\fangsong\bfseries}]{chapter}
	\CTEXsetup[beforeskip={50pt},afterskip={40pt}]{chapter}
	\chapter*{学术诚信声明}
	\zihao{4}\songti
	
	本人所呈交的毕业论文，是在导师的指导下，独立进行研究工作所取得的成果，所有数据、图片资料均真实可靠。除文中已经注明引用的内容外，本论文不包含任何其他人或集体已经发表或撰写过的作品或成果。对本论文的研究作出重要贡献的个人和集体，均已在文中以明确的方式标明。本毕业论文的知识产权归属于培养单位。本人完全意识到本声明的法律结果由本人承担。
	\vspace{3\baselineskip}
	
	本人签名：\hfill 日期：\qquad\qquad\qquad\qquad
}

\newcommand\makecabstract{
	\cleardoublepage
	\CTEXsetup[titleformat={\zihao{3}\songti\bfseries}]{chapter}
	\CTEXsetup[beforeskip={50pt},afterskip={40pt}]{chapter}%-3.5ex plus -1ex minus -.2ex
	\chapter*{\@title}
	\zihao{5}
	\kaishu
	\paragraph{\normalfont\zihao{5}\heiti［论文摘要］}\mbox{}
	
	\@cabstract
	\vspace{\baselineskip}
	\paragraph{\normalfont\zihao{5}\heiti［关键词］}\kaishu\@keywords
}

\newcommand\makeeabstract{
	\cleardoublepage
	\CTEXsetup[titleformat={\zihao{3}\songti\bfseries}]{chapter}
	\CTEXsetup[beforeskip={50pt},afterskip={40pt}]{chapter}%-3.5ex plus -1ex minus -.2ex
	\chapter*{\@etitle}
	\zihao{-4}
	\rmfamily
	\paragraph{\normalfont\zihao{-4}\textbf{[Abstract]}}\mbox{}
	
	\@eabstract
	\vspace{\baselineskip}
	\paragraph{\normalfont\zihao{-4}\textbf{[Key Words]}}\@ekeywords
}

\newcommand\grading{
	\cleardoublepage
	\CTEXsetup[titleformat={\zihao{3}\fangsong},beforeskip={-3.5ex plus -1ex minus -.2ex},afterskip={2.3ex plus .2ex}]{chapter}
	\chapter*{毕业论文成绩评定记录}
	\zihao{-4}\songti
	\begin{longtable}{|p{\textwidth}|}
		\hline
		\endfirsthead
		\hline
		\endhead
		\hline
		\endfoot
		\hline
		\endlastfoot
		指导教师评语：\\\@instructorcomment
		成绩评定：\\\@instructorgrade
		指导教师签名：\hfill 年\qquad 月\qquad 日\\\rule{0cm}{\baselineskip}
		\\\hline
		答辩小组或专业负责人意见：\\\@majorcomment
		成绩评定：\\\@majorgrade
		签名（章）：\hfill 年\qquad 月\qquad 日\\\rule{0cm}{\baselineskip}
		\\\hline
		院系负责人意见：\\\@schoolcomment
		成绩评定：\\\@schoolgrade
		签名（章）：\hfill 年\qquad 月\qquad 日\\\rule{0cm}{\baselineskip}\\
	\end{longtable}
}

\newcommand\displayendnotes{
	\CTEXsetup[format={}]{chapter}
	\CTEXsetup[titleformat={\zihao{-5}\heiti}]{chapter}
	\cleardoublepage
	\begingroup
	\parindent 0pt
	\parskip 2ex
	\def\enotesize{\songti\zihao{-5}}
	\theendnotes
	\endgroup
}

\renewcommand\frontmatter{
	\cleardoublepage
	\@mainmatterfalse
	\fancyhf{}
	\fancypagestyle{plain}{
		\fancyfoot{}
	}
	\pagenumbering{roman}
	\maketitle
	\openingreport
	\progresscheck
	\record
	\disclaim
	\makecabstract
	\makeeabstract
	\CTEXsetup[titleformat={\zihao{3}\songti\bfseries}]{chapter}
	\CTEXsetup[beforeskip={50pt},afterskip={40pt}]{chapter}
}

\renewcommand\mainmatter{
	\cleardoublepage
	\@mainmattertrue
	\pagenumbering{arabic}
	\fancyfoot{}
	\fancyfoot[C]{\rmfamily\zihao{5}\thepage}
	\fancypagestyle{plain}{
		\fancyfoot{}
		\fancyfoot[C]{\rmfamily\zihao{5}\thepage}
	}
	\CTEXsetup[beforeskip={50pt},afterskip={40pt}]{chapter}
	\CTEXsetup[nameformat={\zihao{4}\heiti}]{chapter}
	\CTEXsetup[titleformat={\zihao{4}\heiti}]{chapter}
	\CTEXsetup[format={\centering}]{section}
	\CTEXsetup[nameformat={\zihao{4}\heiti}]{section}
	\CTEXsetup[titleformat={\zihao{4}\heiti}]{section}
	\CTEXsetup[format={}]{subsection}
	\CTEXsetup[nameformat={\zihao{4}\heiti}]{subsection}
	\CTEXsetup[titleformat={\zihao{4}\heiti}]{subsection}
	\zihao{-4}
	\songti
}

\renewcommand\appendix{\par
	\setcounter{chapter}{0}
	\setcounter{section}{0}
	\gdef\@chapapp{\appendixname}
	\gdef\thechapter{\@Alph\c@chapter}
	\gdef\CTEX@prechapter{\CTEX@appendixname}
	\gdef\CTEX@thechapter{\CTEX@appendixnumber}
	\gdef\CTEX@postchapter{}
	\CTEXsetup[format={\centering}]{chapter}
	\CTEXsetup[nameformat={\zihao{4}\heiti}]{chapter}
	\CTEXsetup[titleformat={\zihao{4}\heiti}]{chapter}
	\CTEXsetup[format={\centering}]{section}
	\CTEXsetup[nameformat={\zihao{4}\heiti}]{section}
	\CTEXsetup[titleformat={\zihao{4}\heiti}]{section}
	\CTEXsetup[format={}]{subsection}
	\CTEXsetup[nameformat={\zihao{4}\heiti}]{subsection}
	\CTEXsetup[titleformat={\zihao{4}\heiti}]{subsection}
}

\newenvironment{thankto}{
	\CTEXsetup[beforeskip={50pt},afterskip={40pt}]{chapter}%-3.5ex plus -1ex minus -.2ex
	\chapter*{致谢}
	\songti\zihao{-4}
}{
	\CTEXsetup[beforeskip={50pt},afterskip={40pt}]{chapter}
}

\renewcommand\backmatter{
	\cleardoublepage
	\@mainmatterfalse
	\grading
}

\endinput
