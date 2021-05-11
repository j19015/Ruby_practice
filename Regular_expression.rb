=begin
/d 「一個の半角数字(0123456789)」を意味するメタ文字
例:
	\d\d-\d\d\d\d-\d\d\d\d
	半角数字2個、ハイフン、半角数字4個、ハイフン、半角数字4個」
	が並んだ文字列を検索したことになる

=end

=begin
text=<<-TEXT
名前：小畑碧人
電話:03-1234-5678
住所:兵庫県西脇市伊多波長1-2-3
TEXT
puts text.scan /\d\d-\d\d\d\d-\d\d\d\d/
# 「/ /」で囲んでる中が正規表現となる
=end

=begin
文字の個数を限定するときに {n,m}や{n}というメタ文字を用いる
{n,m}は「直前の文字がn個以上、m個以下」
{n}は　「ちょうどn文字」という意味

例 :
    名前：伊藤淳一
    電話：03-1234-5678
    電話：090-1234-5678
    電話：0795-12-3456
    電話：04992-1-2345
    住所：兵庫県西脇市板波町1-2-3

ここから電話番号を出すときは
\d{2,5}-\d{1,4}-\d{4}を指定する
=end

=begin
「AまたはBのいずれか一文字」表す場合は[AB]と書く
[]のなかに文字数制限は設けられていない
[ABC]と書けば「AまたはBまたはCいずれか一文字」という意味

例:
    名前：伊藤淳一
    電話：03(1234)5678
    電話：090-1234-5678 
    電話：0795(12)3456
    電話：04992-1-2345
    住所：兵庫県西脇市板波町1-2-3

    電話番号のみを抜き出す正規表現は
    \d{2,5}[-(]\d{1,4}[-)]\d{4}
=end

=begin

[a-z]は「aまたはbまたはcまたは..またはz」という意味になる
[a-zA-z0-9]は「a~zまたはA~Zまたは0~9」を表している

*しかし[-az]や[az-]は「aもしくはzもしくは-」という意味を表す
「-」真ん中以外にくると意味が変わってしまうので注意が必要

=end

=begin
「区切り文字が1文字、もしくは区切り無し」というパターンです。
「~が1文字、または無し」を表現するためには?というメタ文字を使います
ケープ[　  ・]?バ[ゲケ]ット


text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

puts text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)
=end

=begin
「直前の文字が一文字以上」を表す場合は+というメタ文字(量指定子)を使います」
=end

=begin
\dと[
=end


#参照 https://qiita.com/jnchito/items/893c887fbf19e17d3ff9
#     https://qiita.com/jnchito/items/64c3fdc53766ac6f2008
