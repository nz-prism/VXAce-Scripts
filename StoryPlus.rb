#==============================================================================
# ★ あらすじ拡張
#------------------------------------------------------------------------------
# ver. 1.0.1
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/StoryPlus.rb
#------------------------------------------------------------------------------
# ■ 導入方法
# 1. スクリプトエディタにて、「▼ 素材」の「( ここに追加 )」以下に新規セクション
#    を挿入してください。
# 2. 1 のセクションにこのスクリプト全体を貼り付けてください。
# 3. 必要なら以下のカスタマイズセクションにて、お好みの設定に変更してください。
# 
# ■ 使用方法
# 1. あらすじを必要なだけカスタマイズセクション最下部に追加してください。
#------------------------------------------------------------------------------
# 本素材はMITライセンスにてリリースされています。
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2014/06/22 1.0.1 画面下部にページ数表示を追加
# 2014/06/08 1.0.0 公開
#==============================================================================

class Window_NZPrism_Story < Window_Selectable
  Stories = Hash.new([""])
#==============================================================================
# ★ カスタマイズセクション
#------------------------------------------------------------------------------
# 　以下の各設定をユーザーの好みに応じて変更できます。 = の右辺の数値や文字列を
# 任意に変更してください。 " " で囲まれた部分以外は全角文字を入力しないでくださ
# い。 [ ] や { } 、 " " や , などの記号を消さないでください。
#==============================================================================
  
  # ストーリー進行度に使用する変数の ID
  StoryVariable_ID = 1
  
  
  
  # ページ切り替えボタン
  # 「 :A 」 「 :L 」 「 :R 」 「 :X 」 「 :Y 」 「 :Z  」のいずれかを選択して
  # ください
  SwitchButton = :X
  
  
  
  # 決定ボタンの用途
  # true  : ページ切り替え
  # false : あらすじの終了
  OK_Switch = true
  
  
  
  # 「あらすじ」のコマンド名
  StoryCommandName = "あらすじ"
  
  
  
  # ページ切り替え操作説明文
  # 一部の制御文字が使用可能ですが \ を二重にする必要があります
  Instruction = "ページ切り替え \\C[14]C X"
  
  
  
#==============================================================================
# ★ 各進行度のあらすじ文章
#------------------------------------------------------------------------------
# 　あらすじを追加する際はまず、以下の書式のすべての行（「 process = 0 」から
# 「 Stories[process] = texts 」まで）を一つの単位としてコピー＆ペーストしてくだ
# さい。そしてストーリー進行度変数の値と各文章を書き換えてください。
#==============================================================================


#------------------------------------------------------------------------------
# ★ 書式
#------------------------------------------------------------------------------

# ストーリー進行度変数の値
process = 0


texts = []  # ←これは消去したり書き換えたりしないでください


# 1 ページ目の文章
texts[0] =
"これは見本文章の 1 ページ目です。

改行は通常通り \\C[14]Enter\\C[0] キーで可能です。
制御文字を使用する場合は↑のように \(円マーク) を二重にし
なければならない点に注意してください。

なおスクリプトエディタ上では 1 行目が若干ずれていますが、
実際には 2 行目以降と同じように表示されますのでご安心くだ
さい。

また、この見本文はデフォルト解像度（ 544 * 416 ）の場合
横幅ぎりぎりの位置で改行するようにしています。
これも参考にしてみてください。"


# 2 ページ目の文章
# 2 ページ目が不要ならこの部分を丸ごと消去してください
texts[1] =
"これは見本文章の 2 ページ目です。

なお、ストーリー進行度変数の値が 0 の場合、実際のゲーム中
でもこの見本文が表示されてしまいます。
それを防ぐためには以下の二通りの方法があります。
一つ目は見本文そのものを、実際の進行度 0 にて使用する文章
に書き換えてしまうことです。
もう一つは、ストーリー進行度変数の値が実際のゲーム中にお
いて決して 0 にならないように管理することです。"


Stories[process] = texts  # ←これも消去したり書き換えたりしないでください


#------------------------------------------------------------------------------
# ★ 以下に必要なだけ上の書式を貼り付け・書き換えしてあらすじを追加してください
#------------------------------------------------------------------------------







#------------------------------------------------------------------------------
# ★ カスタマイズここまで
#------------------------------------------------------------------------------
end
#------------------------------------------------------------------------------
class Window_MenuCommand
  #--------------------------------------------------------------------------
  # ○ 独自コマンドの追加用
  #--------------------------------------------------------------------------
  alias nzprism_story_add_original_commands add_original_commands
  def add_original_commands
    nzprism_story_add_original_commands
    add_command(Window_NZPrism_Story::StoryCommandName, :nzprism_story)
  end
end
#------------------------------------------------------------------------------
class Scene_Menu
  #--------------------------------------------------------------------------
  # ○ コマンドウィンドウの作成
  #--------------------------------------------------------------------------
  alias nzprism_story_create_command_window create_command_window
  def create_command_window
    nzprism_story_create_command_window
    @command_window.set_handler(:nzprism_story, method(:command_nzprism_story))
  end
  #--------------------------------------------------------------------------
  # ★ コマンド［あらすじ］
  #--------------------------------------------------------------------------
  def command_nzprism_story
    SceneManager.call(Scene_NZPrism_Story)
  end
end
#------------------------------------------------------------------------------
class Window_NZPrism_Story
  #--------------------------------------------------------------------------
  # ● 定数
  #--------------------------------------------------------------------------
  PAGE_TEXT  = "%d \\C[16]/ 2"
  PAGE_WIDTH = 50
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize
    @page = 0
    super(0, 0, Graphics.width, Graphics.height)
    refresh
    activate
  end
  #--------------------------------------------------------------------------
  # ● 決定やキャンセルなどのハンドリング処理
  #--------------------------------------------------------------------------
  def process_handling
    return unless open? && active
    return process_cancel if cancel_enabled? && Input.trigger?(:B)
    if Input.trigger?(:C)
      return process_ok     if ok_enabled?
      return process_switch if switch_enabled?
    else
      return process_switch if switch_enabled? && Input.trigger?(SwitchButton)
    end
  end
  #--------------------------------------------------------------------------
  # ● 現在のあらすじ文章配列の取得
  #--------------------------------------------------------------------------
  def current_stories
    Stories[$game_variables[StoryVariable_ID]]
  end
  #--------------------------------------------------------------------------
  # ● ページ切り替え処理の有効状態を取得
  #--------------------------------------------------------------------------
  def switch_enabled?
    !!current_stories[1]
  end
  #--------------------------------------------------------------------------
  # ● ページ切り替えの処理
  #--------------------------------------------------------------------------
  def process_switch
    Sound.play_cursor
    @page = (@page - 1).abs
    refresh
    activate
  end
  #--------------------------------------------------------------------------
  # ● 全項目の描画
  #--------------------------------------------------------------------------
  def draw_all_items
    draw_text_ex(4, 0, current_stories[@page])
    return unless switch_enabled?
    y = contents_height - line_height
    draw_text_ex(0, y, Instruction)
    draw_text_ex(contents_width - PAGE_WIDTH, y, sprintf(PAGE_TEXT, @page + 1))
  end
end
#------------------------------------------------------------------------------
class Scene_NZPrism_Story < Scene_MenuBase
  #--------------------------------------------------------------------------
  # ● 開始処理
  #--------------------------------------------------------------------------
  def start
    super
    @story_window = Window_NZPrism_Story.new
    @story_window.set_handler(:cancel, method(:return_scene))
    return if Window_NZPrism_Story::OK_Switch
    @story_window.set_handler(:ok, method(:return_scene))
  end
end
