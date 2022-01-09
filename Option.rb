#==============================================================================
# ★ オプション画面
#------------------------------------------------------------------------------
# ver. 2.0.1
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/Option.rb
#------------------------------------------------------------------------------
# ■ 導入方法
# 1. スクリプトエディタにて、「▼ 素材」以下に新規セクションを挿入してください。
# 2. 1 のセクションにこのスクリプト全体を貼り付けてください。
# 3. 必要なら以下のカスタマイズセクションにて、お好みの設定に変更してください。
#
# ■ ウィンドウスキンについて
# 　オプションにてウィンドウスキンを切り替えられるようにするには、
# Graphics/System フォルダに「 Window2 」というファイル名にしたウィンドウ素材を
# 入れてください。 3 番目なら「 Window3 」になります（以降も同様）。
# なお追加スキンがない場合、ウィンドウスキン変更の項目は表示されません。
#------------------------------------------------------------------------------
# 本素材はMITライセンスにてリリースされています。
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2014/04/20 2.0.1 微バグを修正
# 2014/04/11 2.0.0 「カーソルの記憶」の追加をはじめとした様々な更新を適用
#                  旧版とのセーブデータの互換性なし
# 2012/07/28 1.0.2 不要処理を削除
# 2012/07/24 1.0.1 Window_Base の initialize メソッドを再定義ではなく、
#                  alias に変更
# 2012/07/24 1.0.0 公開
#==============================================================================

class Window_NZPrism_Option < Window_Selectable
#==============================================================================
# ★ カスタマイズセクション
#------------------------------------------------------------------------------
# 　以下の各設定をユーザーの好みに応じて変更できます。 = の右辺の数値や文字列を
# 任意に変更してください。 " " で囲まれた部分以外は全角文字を入力しないでくださ
# い。 [ ] や { } 、 " " や , などの記号を消さないでください。
#==============================================================================
  
  # 選択項目
  # 使用する場合は true 、不使用の場合は false を選択してください
    
    # オートダッシュ
    AddAutoDash        = true
    
    # ダッシュ速度
    AddDashSpeed       = true
    
    # 斜め移動
    AddDiagonalMove    = true
    
    # メッセージ表示速度
    AddFastMessage     = true
    
    # カーソルの記憶
    Add_C_Memorization = true
  
  
  # ウィンドウスキンの数（「 Window.png 」も含めてください）
  Max_W_Skin = 1
  
  
  # 各項目のデフォルト値
    
    # オートダッシュ（true ／ false）
    DefaultAutoDash        = false
    
    # ダッシュ速度（1 〜 3）
    DefaultDashSpeed       = 1
    
    # 斜め移動（true ／ false）
    DefaultDiagonalMove    = false
    
    # メッセージ表示速度（true ／ false）
    DefaultFastMessage     = false
    
    # カーソルの記憶（0 〜 2）
    # 0 : 無効
    # 1 : ターン毎に初期化
    # 2 : 有効
    Default_C_Memorization = 2
    
    # ウィンドウスキン ID （「 Window.png 」の ID は 1 です）
    Default_W_Skin         = 1
    
    # ウィンドウ透明度（0 〜 255）
    Default_W_Opacity      = 180
    
    # BGM 音量（0 〜 100）
    Default_M_Volume       = 75
    
    # SE 音量（0 〜 100）
    Default_S_Volume       = 60
    
  
  
  #============================================================================
  # ★ アウトラインなしフォントにするウィンドウスキン
  #----------------------------------------------------------------------------
  # 　以下に入力した ID のウィンドウスキンのフォントには、アウトラインがつかずに
  # 影がつくようになります。フォントがにじんで見づらくなってしまうウィンドウス
  # キンがある場合、ここに設定してみてください。
  # 　「 , 」で区切ればいくつでも設定可能です。
  #============================================================================
  NoOutlineFontSkins = [
    100, 200
  ]# ↑ダミー ID です。これを消して任意の ID を入力してください
  
  
  
  # 各設定項目の名前
  
  AutoDash       = "オートダッシュ"
  
  DashSpeed      = "ダッシュ速度"
  
  DiagonalMove   = "斜め移動"
  
  FastMessage    = "メッセージ表示速度"
  
  C_Memorization = "カーソルの記憶"
  
  W_Skin         = "ウィンドウスキン"
  
  W_Tone         = "ウィンドウカラー"
  
  W_Opacity      = "ウィンドウ透明度"
  
  M_Volume       = "ＢＧＭ音量"
  
  S_Volume       = "ＳＥ音量"
  
  Default        = "デフォルト"
  
  
  # 各設定項目の説明文
  
  Help_AutoDash       = # オートダッシュ
  "「オン」では通常ダッシュ、 ¥¥C[14]A¥¥C[0] 押下中歩行になります"
    
  Help_DashSpeed      = # ダッシュ速度
  "ダッシュ速度を変更します"
  
  Help_DiagonalMove   = # 斜め移動
  "マップ画面で斜め移動を可能にします"
    
  Help_FastMessage    = # メッセージ表示速度
  "「瞬時」ではメッセージが即座に表示されます"
  
  Help_C_Memorization = # カーソルの記憶
  "カーソルの記憶方法を変更します"
    
  Help_W_Skin         = # ウィンドウスキン
  "ウィンドウスキンを変更します"
  
  Help_W_Tone_R       = # ウィンドウカラー・R値
  "ウィンドウカラーのＲ値を変更します"
    
  Help_W_Tone_G       = # ウィンドウカラー・G値
  "ウィンドウカラーのＧ値を変更します"
    
  Help_W_Tone_B       = # ウィンドウカラー・B値
  "ウィンドウカラーのＢ値を変更します"
  
  Help_W_Opacity      = # ウィンドウ透明度
  "ウィンドウの透明度を変更します。低いほど背景が透けます"
  
  Help_M_Volume       = # BGM音量
  "ＢＧＭの音量を調節します"
    
  Help_S_Volume       = # SE音量
  "ＳＥの音量を調節します"
    
  Help_Default        = # デフォルト
  "すべての設定をデフォルト値に戻します"
  
  
  
#------------------------------------------------------------------------------
# ★ カスタマイズここまで
#------------------------------------------------------------------------------
end
#------------------------------------------------------------------------------
class Font
  #--------------------------------------------------------------------------
  # ★ オプションにて設定した「アウトラインなしフォントスキン」を適用
  #--------------------------------------------------------------------------
  def self.adapt_windowskin
    nofs = Window_NZPrism_Option::NoOutlineFontSkins.include?($game_system.w_skin)
    self.default_outline = !nofs
    self.default_shadow  =  nofs
  end
end
#------------------------------------------------------------------------------
class RPG::BGM
  #--------------------------------------------------------------------------
  # ○ BGM の演奏
  #--------------------------------------------------------------------------
  def play(pos = 0)
    if @name.empty?
      Audio.bgm_stop
      @@last = RPG::BGM.new
    else
      if $game_system.m_master_volume == 0         # ボリュームが 0 なら
        volume = 0                                 # 無音にする
      else                                         # それ以外なら最低でも 5 残る
        volume = [[@volume+$game_system.m_master_volume-100, 5].max, 100].min
      end
      Audio.bgm_play('Audio/BGM/' + @name, volume, @pitch, pos)
      @@last = self.clone
    end
  end
end
#------------------------------------------------------------------------------
class RPG::BGS
  #--------------------------------------------------------------------------
  # ○ BGS の演奏
  #--------------------------------------------------------------------------
  def play(pos = 0)
    if @name.empty?
      Audio.bgs_stop
      @@last = RPG::BGS.new
    else
      if $game_system.s_master_volume == 0         # ボリュームが 0 なら
        volume = 0                                 # 無音にする
      else                                         # それ以外なら最低でも 5 残る
        volume = [[@volume+$game_system.s_master_volume-80, 5].max, 100].min
      end
      Audio.bgs_play('Audio/BGS/' + @name, volume, @pitch, pos)
      @@last = self.clone
    end
  end
end
#------------------------------------------------------------------------------
class RPG::ME
  #--------------------------------------------------------------------------
  # ○ ME の演奏
  #--------------------------------------------------------------------------
  def play
    if @name.empty?
      Audio.me_stop
    else
      if $game_system.m_master_volume == 0         # ボリュームが 0 なら
        volume = 0                                 # 無音にする
      else                                         # それ以外なら最低でも 5 残る
        volume = [[@volume+$game_system.m_master_volume-100, 5].max, 100].min
      end
      Audio.me_play('Audio/ME/' + @name, volume, @pitch)
    end
  end
end
#------------------------------------------------------------------------------
class RPG::SE
  #--------------------------------------------------------------------------
  # ○ SE の演奏
  #--------------------------------------------------------------------------
  def play
    unless @name.empty?
      if $game_system.s_master_volume == 0         # ボリュームが 0 なら
        volume = 0                                 # 無音にする
      else                                         # それ以外なら最低でも 5 残る
        volume = [[@volume+$game_system.s_master_volume-80, 5].max, 100].min
      end
      Audio.se_play('Audio/SE/' + @name, volume, @pitch)
    end
  end
end
#------------------------------------------------------------------------------
module DataManager
  #--------------------------------------------------------------------------
  # ○ セーブヘッダの作成
  #--------------------------------------------------------------------------
  class << self; alias :nzprism_option_make_save_header :make_save_header; end
  def self.make_save_header
    header = nzprism_option_make_save_header
    header[:window] = [$game_system.w_skin, $game_system.window_tone,
                       $game_system.w_opacity]
    header
  end
end
#------------------------------------------------------------------------------
class Game_System
  #--------------------------------------------------------------------------
  # ★ 公開インスタンス変数
  #--------------------------------------------------------------------------
  attr_reader   :m_master_volume          # BGM 音量
  attr_reader   :s_master_volume          # SE 音量
  attr_accessor :auto_dash                # オートダッシュ
  attr_accessor :dash_speed               # ダッシュ速度
  attr_accessor :diagonal_move            # 斜め移動
  attr_accessor :fast_message             # メッセージ瞬間表示
  attr_accessor :c_memorization           # カーソルの記憶
  attr_accessor :w_skin                   # ウィンドウスキン
  attr_accessor :w_opacity                # ウィンドウ透明度
  #--------------------------------------------------------------------------
  # ○ オブジェクト初期化
  #--------------------------------------------------------------------------
  alias :nzprism_option_initialize :initialize
  def initialize
    nzprism_option_initialize
    @saved_bgs = nil
    @window_tone = $data_system.window_tone.dup
    @auto_dash       = Window_NZPrism_Option::DefaultAutoDash
    @dash_speed      = Window_NZPrism_Option::DefaultDashSpeed
    @diagonal_move   = Window_NZPrism_Option::DefaultDiagonalMove
    @fast_message    = Window_NZPrism_Option::DefaultFastMessage
    @c_memorization  = Window_NZPrism_Option::Default_C_Memorization
    @w_skin          = Window_NZPrism_Option::Default_W_Skin
    @w_opacity       = Window_NZPrism_Option::Default_W_Opacity
    @m_master_volume = Window_NZPrism_Option::Default_M_Volume
    @s_master_volume = Window_NZPrism_Option::Default_S_Volume
  end
  #--------------------------------------------------------------------------
  # ★ BGS の保存
  #--------------------------------------------------------------------------
  def save_bgs
    @saved_bgs = RPG::BGS.last
  end
  #--------------------------------------------------------------------------
  # ★ BGM / ME ボリュームの変更
  #--------------------------------------------------------------------------
  def m_master_volume=(volume)
    @m_master_volume = volume         # ボリューム変更時、
    save_bgm                          # 現在のBGMを記録することで
    @saved_bgm.play if @saved_bgm     # 途切れずに演奏を再開可能
  end
  #--------------------------------------------------------------------------
  # ★ BGS / SE ボリュームの変更
  #--------------------------------------------------------------------------
  def s_master_volume=(volume)
    @s_master_volume = volume         # ボリューム変更時、
    save_bgs                          # 現在のBGSを記録することで
    @saved_bgs.play if @saved_bgs     # 途切れずに演奏を再開可能
  end
end
#------------------------------------------------------------------------------
class Game_Actor
  #--------------------------------------------------------------------------
  # ★ 公開インスタンス変数
  #--------------------------------------------------------------------------
  attr_writer   :last_skill               # カーソル記憶用 : スキル
end
#------------------------------------------------------------------------------
class Game_Party
  #--------------------------------------------------------------------------
  # ★ カーソル記憶用アイテムの初期化
  #--------------------------------------------------------------------------
  def nzprism_option_init_last_items
    @last_item = Game_BaseItem.new
    members.each{|member| member.last_skill = Game_BaseItem.new }
  end
end
#------------------------------------------------------------------------------
class Game_CharacterBase
  #--------------------------------------------------------------------------
  # ○ 移動速度の取得（ダッシュを考慮）
  #--------------------------------------------------------------------------
  alias :nzprism_option_real_move_speed :real_move_speed
  def real_move_speed
    speed = nzprism_option_real_move_speed
    speed += $game_system.dash_speed - 1 if dash?
    [speed, 7].min
  end
  #--------------------------------------------------------------------------
  # ○ 斜めに移動
  #     horz : 横方向（4 or 6）
  #     vert : 縦方向（2 or 8）
  #--------------------------------------------------------------------------
  def move_diagonal(horz, vert)
    if diagonal_passable?(x, y, horz, vert)
      @move_succeed = true
    elsif passable?(x, y, horz)
      return move_straight(horz)
    elsif passable?(x, y, vert)
      return move_straight(vert)
    else
      @move_succeed = false
    end
    if @move_succeed
      @x = $game_map.round_x_with_direction(@x, horz)
      @y = $game_map.round_y_with_direction(@y, vert)
      @real_x = $game_map.x_with_direction(@x, reverse_dir(horz))
      @real_y = $game_map.y_with_direction(@y, reverse_dir(vert))
      increase_steps
    end
    set_direction(horz) if @direction == reverse_dir(horz)
    set_direction(vert) if @direction == reverse_dir(vert)
  end
end
#------------------------------------------------------------------------------
class Game_Player
  #--------------------------------------------------------------------------
  # ○ ダッシュ状態判定
  #--------------------------------------------------------------------------
  alias :nzprism_option_dash? :dash?
  def dash?
    if $game_system.auto_dash
      return false if @move_route_forcing
      return false if $game_map.disable_dash?
      return false if vehicle
      return !Input.press?(:A)
    else
      nzprism_option_dash?
    end
  end
  #--------------------------------------------------------------------------
  # ○ 方向ボタン入力による移動処理
  #--------------------------------------------------------------------------
  def move_by_input
    return if !movable? || $game_map.interpreter.running?
    ip = $game_system.diagonal_move ? Input.dir8 : Input.dir4
    if ip > 0
      if ip % 2 == 0
        move_straight(ip)
      else
        horz = (ip > 5)      ? (ip - 3) : (ip + 3)
        vert = (ip % 3 == 0) ? (ip - 1) : (ip + 1)
        move_diagonal(horz, vert)
      end
    end
  end
end
#------------------------------------------------------------------------------
class Game_Vehicle
  #--------------------------------------------------------------------------
  # ○ 移動速度の取得
  #--------------------------------------------------------------------------
  alias :nzprism_option_speed :speed
  def speed
    nzprism_option_speed + $game_system.dash_speed - 1
  end
end
#------------------------------------------------------------------------------
class Window_Base
  #--------------------------------------------------------------------------
  # ○ オブジェクト初期化
  #--------------------------------------------------------------------------
  alias :nzprism_option_initialize :initialize
  def initialize(x, y, width, height)
    nzprism_option_initialize(x, y, width, height)
    self.windowskin = Cache.system(windowskin_name)
    self.back_opacity = $game_system.w_opacity
  end
  #--------------------------------------------------------------------------
  # ★ 水平線の描画
  #--------------------------------------------------------------------------
  def draw_horz_line(y, color = normal_color, alpha = 48)
    line_y = y + line_height / 2 - 1
    color.alpha = alpha
    contents.fill_rect(0, line_y, contents_width, 2, color)
  end
  #--------------------------------------------------------------------------
  # ★ ウィンドウスキン ファイル名の取得
  #--------------------------------------------------------------------------
  def windowskin_name(skin_id = $game_system.w_skin)
    skin_name = "Window"
    skin_name += skin_id.to_s unless skin_id == 1
    skin_name
  end
end
#------------------------------------------------------------------------------
class Window_Message
  #--------------------------------------------------------------------------
  # ○ 一文字出力後のウェイト
  #--------------------------------------------------------------------------
  alias :nzprism_option_wait_for_one_character :wait_for_one_character
  def wait_for_one_character
    unless $game_system.fast_message
      nzprism_option_wait_for_one_character
    end
  end
  #--------------------------------------------------------------------------
  # ○ ウェイト
  #--------------------------------------------------------------------------
  alias :nzprism_option_wait :wait
  def wait(duration)
    duration /= 5 if $game_system.fast_message
    nzprism_option_wait(duration)
  end
end
#------------------------------------------------------------------------------
class Window_MenuCommand
  #--------------------------------------------------------------------------
  # ○ 独自コマンドの追加用
  #--------------------------------------------------------------------------
  alias :nzprism_option_add_original_commands :add_original_commands
  def add_original_commands
    nzprism_option_add_original_commands
    add_command("オプション", :option)
  end
  #--------------------------------------------------------------------------
  # ○ 前回の選択位置を復帰
  #--------------------------------------------------------------------------
  alias :nzprism_option_select_last :select_last
  def select_last
    if $game_system.c_memorization == 0
      select(0)
    else
      nzprism_option_select_last
    end
  end
end
#------------------------------------------------------------------------------
class Window_MenuStatus
  #--------------------------------------------------------------------------
  # ○ 前回の選択位置を復帰
  #--------------------------------------------------------------------------
  alias :nzprism_option_select_last :select_last
  def select_last
    if $game_system.c_memorization == 0
      select(0)
    else
      nzprism_option_select_last
    end
  end
end
#------------------------------------------------------------------------------
class Window_MenuActor
  #--------------------------------------------------------------------------
  # ○ 前回の選択位置を復帰
  #--------------------------------------------------------------------------
  alias :nzprism_option_select_last :select_last
  def select_last
    if $game_system.c_memorization == 0
      select(0)
    else
      nzprism_option_select_last
    end
  end
end
#------------------------------------------------------------------------------
class Window_ItemList
  #--------------------------------------------------------------------------
  # ○ 前回の選択位置を復帰
  #--------------------------------------------------------------------------
  alias :nzprism_option_select_last :select_last
  def select_last
    if $game_system.c_memorization == 0
      select(0)
    else
      nzprism_option_select_last
    end
  end
end
#------------------------------------------------------------------------------
class Window_SkillCommand
  #--------------------------------------------------------------------------
  # ○ 前回の選択位置を復帰
  #--------------------------------------------------------------------------
  alias :nzprism_option_select_last :select_last
  def select_last
    if $game_system.c_memorization == 0
      select(0)
    else
      nzprism_option_select_last
    end
  end
end
#------------------------------------------------------------------------------
class Window_SkillList
  #--------------------------------------------------------------------------
  # ○ 前回の選択位置を復帰
  #--------------------------------------------------------------------------
  alias :nzprism_option_select_last :select_last
  def select_last
    if $game_system.c_memorization == 0
      select(0)
    else
      nzprism_option_select_last
    end
  end
end
#------------------------------------------------------------------------------
class Window_SaveFile
  #--------------------------------------------------------------------------
  # ○ オブジェクト初期化
  #     index : セーブファイルのインデックス
  #--------------------------------------------------------------------------
  def initialize(height, index)
    super(0, index * height, Graphics.width, height)
    @file_index = index
    nzprism_option_update_tone unless setup_window
    refresh
    @selected = false
  end
  #--------------------------------------------------------------------------
  # ★ ウィンドウの各種設定をセットアップ
  #--------------------------------------------------------------------------
  def setup_window
    return false unless header = DataManager.load_header(@file_index)
    return false unless window_settings = header[:window]
    skin_id = window_settings[0]
    self.windowskin = Cache.system(windowskin_name(skin_id))
    self.tone.set(window_settings[1])
    self.back_opacity = window_settings[2]
    font = self.contents.font
    nofs = Window_NZPrism_Option::NoOutlineFontSkins.include?(skin_id)
    font.outline = !nofs
    font.shadow  =  nofs
    return true
  end
  #--------------------------------------------------------------------------
  # ○ 色調の更新
  #--------------------------------------------------------------------------
  alias :nzprism_option_update_tone :update_tone
  def update_tone
  end
end
#------------------------------------------------------------------------------
class Scene_Title
  #--------------------------------------------------------------------------
  # ○ 開始処理
  #--------------------------------------------------------------------------
  alias :nzprism_option_start :start
  def start
    Font.adapt_windowskin
    nzprism_option_start
  end
end
#------------------------------------------------------------------------------
class Scene_Map
  #--------------------------------------------------------------------------
  # ○ 開始処理
  #--------------------------------------------------------------------------
  alias :nzprism_option_start :start
  def start
    Font.adapt_windowskin
    nzprism_option_start
  end
end
#------------------------------------------------------------------------------
class Scene_Menu
  #--------------------------------------------------------------------------
  # ○ 開始処理
  #--------------------------------------------------------------------------
  alias :nzprism_option_start :start
  def start
    Font.adapt_windowskin
    nzprism_option_start
  end
  #--------------------------------------------------------------------------
  # ○ コマンドウィンドウの作成
  #--------------------------------------------------------------------------
  alias :nzprism_option_create_command_window :create_command_window
  def create_command_window
    nzprism_option_create_command_window
    @command_window.set_handler(:option, method(:command_option))
  end
  #--------------------------------------------------------------------------
  # ★ コマンド［オプション］
  #--------------------------------------------------------------------------
  def command_option
    SceneManager.call(Scene_NZPrism_Option)
  end
end
#------------------------------------------------------------------------------
class Scene_Battle
  #--------------------------------------------------------------------------
  # ○ 戦闘開始
  #--------------------------------------------------------------------------
  alias :nzprism_option_battle_start :battle_start
  def battle_start
    $game_party.nzprism_option_init_last_items if $game_system.c_memorization == 1
    nzprism_option_battle_start
  end
  #--------------------------------------------------------------------------
  # ○ ターン開始
  #--------------------------------------------------------------------------
  alias :nzprism_option_turn_start :turn_start
  def turn_start
    $game_party.nzprism_option_init_last_items if $game_system.c_memorization == 1
    nzprism_option_turn_start
  end
end

#==============================================================================
# ★ Window_NZPrism_Option
#------------------------------------------------------------------------------
# 　オプション画面で、様々な設定項目を表示するウィンドウです。
#==============================================================================

class Window_NZPrism_Option
  #--------------------------------------------------------------------------
  # ● 定数
  #--------------------------------------------------------------------------
  ary = Array.new
  ary << :auto_dash      if AddAutoDash
  ary << :dash_speed     if AddDashSpeed
  ary << :diagonal_move  if AddDiagonalMove
  ary << :fast_message   if AddFastMessage
  ary << :c_memorization if Add_C_Memorization
  ary << :w_skin         if Max_W_Skin > 1
  ary << :w_tone_r
  ary << :w_tone_g
  ary << :w_tone_b
  ary << :w_opacity
  ary << :m_master_volume
  ary << :s_master_volume
  ary << :default
  ITEMS = ary
  
  WS_SHIFT = [(Max_W_Skin / 3), 2].max
  
  command1 = "%s¥n¥¥C[14]← →¥¥C[0] 切り替え"
  command2 = "%s¥n" +
             "¥¥C[14]←¥¥C[0] %+2d　　" +
             "¥¥C[14]→¥¥C[0] %+2d　　" +
             "¥¥C[14]L ¥¥C[29]/¥¥C[14] A¥¥C[0]+¥¥C[14]←¥¥C[0] %+3d　　" +
             "¥¥C[14]R ¥¥C[29]/¥¥C[14] A¥¥C[0]+¥¥C[14]→¥¥C[0] %+3d"
  command3 = "%s¥n¥¥C[14]C¥¥C[0] 実行"
  ary = Array.new
  ary << sprintf(command1,Help_AutoDash)                 if AddAutoDash
  ary << sprintf(command2,Help_DashSpeed,     -1,1,-2,2) if AddDashSpeed
  ary << sprintf(command1,Help_DiagonalMove)             if AddDiagonalMove
  ary << sprintf(command1,Help_FastMessage)              if AddFastMessage
  ary << sprintf(command2,Help_C_Memorization,-1,1,-2,2) if Add_C_Memorization
  if Max_W_Skin == 2
    ary << sprintf(command1, Help_W_Skin)
  elsif Max_W_Skin > 2
    ary << sprintf(command2, Help_W_Skin, -1, 1, -WS_SHIFT, WS_SHIFT)
  end
  ary << sprintf(command2, Help_W_Tone_R,  -5, 5, -50, 50)
  ary << sprintf(command2, Help_W_Tone_G,  -5, 5, -50, 50)
  ary << sprintf(command2, Help_W_Tone_B,  -5, 5, -50, 50)
  ary << sprintf(command2, Help_W_Opacity, -5, 5, -25, 25)
  ary << sprintf(command2, Help_M_Volume,  -5, 5, -20, 20)
  ary << sprintf(command2, Help_S_Volume,  -5, 5, -20, 20)
  ary << sprintf(command3, Help_Default)
  HELPS = ary
  
  remove_const(:Help_AutoDash)
  remove_const(:Help_DashSpeed)
  remove_const(:Help_DiagonalMove)
  remove_const(:Help_FastMessage)
  remove_const(:Help_C_Memorization)
  remove_const(:Help_W_Skin)
  remove_const(:Help_W_Tone_R)
  remove_const(:Help_W_Tone_G)
  remove_const(:Help_W_Tone_B)
  remove_const(:Help_W_Opacity)
  remove_const(:Help_M_Volume)
  remove_const(:Help_S_Volume)
  remove_const(:Help_Default)
  #--------------------------------------------------------------------------
  # ● オブジェクト初期化
  #--------------------------------------------------------------------------
  def initialize(help_window)
    @help_window = help_window
    help_height = help_window.height
    super(0, help_height, Graphics.width, Graphics.height - help_height)
    @old_auto_dash       = $game_system.auto_dash
    @old_dash_speed      = $game_system.dash_speed
    @old_diagonal_move   = $game_system.diagonal_move
    @old_fast_message    = $game_system.fast_message
    @old_c_memorization  = $game_system.c_memorization
    @old_w_skin          = $game_system.w_skin
    @old_w_tone          = $game_system.window_tone.dup
    @old_w_opacity       = $game_system.w_opacity
    @old_m_master_volume = $game_system.m_master_volume 
    @old_s_master_volume = $game_system.s_master_volume
    refresh
    select(0)
  end
  #--------------------------------------------------------------------------
  # ● 項目数の取得
  #--------------------------------------------------------------------------
  def item_max
    ITEMS.size
  end
  #--------------------------------------------------------------------------
  # ● 行数の取得
  #--------------------------------------------------------------------------
  def row_max
    super + 1
  end
  #--------------------------------------------------------------------------
  # ● 現在の行の取得
  #--------------------------------------------------------------------------
  def row
    result = super
    result += 1 if @index == ITEMS.index(:default)
    result
  end
  #--------------------------------------------------------------------------
  # ● 項目の幅を取得
  #--------------------------------------------------------------------------
  def item_width
    contents_width / 2
  end
  #--------------------------------------------------------------------------
  # ● 項目を描画する矩形の取得
  #--------------------------------------------------------------------------
  def item_rect(index, left = false)
    rect = super(index)
    rect.x = left ? 0 : item_width
    rect.y += line_height if index == ITEMS.index(:default)
    rect
  end
  #--------------------------------------------------------------------------
  # ● 項目の消去
  #--------------------------------------------------------------------------
  def clear_item(index)
    contents = self.contents
    contents.clear_rect(item_rect(index, true))
    contents.clear_rect(item_rect(index, false))
  end
  #--------------------------------------------------------------------------
  # ● 項目のテキスト描画
  #     index     : インデックス
  #     l_text    : 左側テキスト
  #     r_text    : 右側テキスト
  #     option = 0: 有効
  #     option = 1: 無効
  #     option = 2: ゲージ系項目用（通常）
  #     option = 3: ゲージ系項目用（ミュート）
  #--------------------------------------------------------------------------
  def draw_item_texts(index, l_text, r_text, option = 0)
    if l_text
      change_color(system_color)
      draw_text(item_rect(index, true), l_text)
    end
    color = (option == 3) ? knockout_color : normal_color
    change_color(color, !(option == 1))
    if option > 1
      draw_text(item_rect(index, true), r_text, 2)
    else
      draw_text(item_rect(index), r_text, 1)
    end
  end
  #--------------------------------------------------------------------------
  # ● ゲージの描画
  #     index : インデックス
  #     rate  : 割合（1.0 で満タン）
  #     c1    : グラデーション 左端
  #     c2    : グラデーション 右端
  #--------------------------------------------------------------------------
  def draw_gauge(index, rate, c1 = power_down_color, c2 = power_up_color)
    rect = item_rect(index)
    super(rect.x + 4, rect.y, rect.width - 8, rate, c1, c2)
  end
  #--------------------------------------------------------------------------
  # ● 項目の描画
  #--------------------------------------------------------------------------
  def draw_item(index)
    case index
    when ITEMS.index(:auto_dash)
      r_text = $game_system.auto_dash ? "オン" : "オフ"
      draw_item_texts(index, AutoDash, r_text)
    when ITEMS.index(:dash_speed)
      draw_item_texts(index, DashSpeed, $game_system.dash_speed)
    when ITEMS.index(:diagonal_move)
      r_text = $game_system.diagonal_move ? "オン" : "オフ"
      draw_item_texts(index, DiagonalMove, r_text)
    when ITEMS.index(:fast_message)
      r_text = $game_system.fast_message ? "瞬時" : "普通"
      draw_item_texts(index, FastMessage, r_text)
    when ITEMS.index(:c_memorization)
      case $game_system.c_memorization
      when 0; r_text = "無効"
      when 2; r_text = "有効"
      else;   r_text = "ターン毎に初期化"
      end
      draw_item_texts(index, C_Memorization, r_text)
    when ITEMS.index(:w_skin)
      draw_item_texts(index, W_Skin, $game_system.w_skin)
    when ITEMS.index(:w_tone_r)
      red = $game_system.window_tone.red
      draw_item_texts(index, nil, red.to_i, 2)
      rate = (red + 255) / 510
      c1 = Color.new(100, 0, 0)
      c2 = Color.new(255, 100, 100)
      draw_gauge(index, rate, c1, c2)
    when ITEMS.index(:w_tone_g)
      green = $game_system.window_tone.green
      draw_item_texts(index, W_Tone, green.to_i, 2)
      rate = (green + 255) / 510
      c1 = Color.new(0, 100, 0)
      c2 = Color.new(100, 255, 100)
      draw_gauge(index, rate, c1, c2)
    when ITEMS.index(:w_tone_b)
      blue = $game_system.window_tone.blue
      draw_item_texts(index, nil, blue.to_i, 2)
      rate = (blue + 255) / 510
      c1 = Color.new(0, 0, 100)
      c2 = Color.new(100, 100, 255)
      draw_gauge(index, rate, c1, c2)
    when ITEMS.index(:w_opacity)
      op = $game_system.w_opacity
      draw_item_texts(index, W_Opacity, op, 2)
      rate = op / 255.0
      c1 = Color.new(100, 100, 100, 100)
      c2 = Color.new(255, 255, 255, 255)
      draw_gauge(index, rate, c1, c2)
    when ITEMS.index(:m_master_volume)
      vol = $game_system.m_master_volume
      if vol == 0
        r_text = "ミュート"
        option = 3
      else
        r_text = vol
        option = 2
      end
      draw_item_texts(index, M_Volume, r_text, option)
      rate = vol / 100.0
      draw_gauge(index, rate)
    when ITEMS.index(:s_master_volume)
      vol = $game_system.s_master_volume
      if vol == 0
        r_text = "ミュート"
        option = 3
      else
        r_text = vol
        option = 2
      end
      draw_item_texts(index, S_Volume, r_text, option)
      rate = vol / 100.0
      draw_gauge(index, rate)
    when ITEMS.index(:default)
      option = default? ? 1 : 0
      draw_item_texts(index, nil, Default, option)
    end
  end
  #--------------------------------------------------------------------------
  # ● 全項目の描画
  #--------------------------------------------------------------------------
  def draw_all_items
    super
    draw_horz_line(line_height * ITEMS.index(:default))
  end
  #--------------------------------------------------------------------------
  # ● 各項目の値の増減
  #--------------------------------------------------------------------------
  def value_plus(sign, skip, wrap = false)
    type = value = 0
    case @index
    when ITEMS.index(:auto_dash)
      old_value = $game_system.auto_dash
      new_value = wrap ? !old_value : (sign > 0)
      $game_system.auto_dash = new_value
    when ITEMS.index(:dash_speed)
      type = 3
      old_value = $game_system.dash_speed
      plus = skip ? 2 : 1
      $game_system.dash_speed += plus * sign
    when ITEMS.index(:diagonal_move)
      old_value = $game_system.diagonal_move
      new_value = wrap ? !old_value : (sign > 0)
      $game_system.diagonal_move = new_value
    when ITEMS.index(:fast_message)
      old_value = $game_system.fast_message
      new_value = wrap ? !old_value : (sign > 0)
      $game_system.fast_message = new_value
    when ITEMS.index(:c_memorization)
      type = 3
      old_value = $game_system.c_memorization
      plus = skip ? 2 : 1
      $game_system.c_memorization += plus * sign
    when ITEMS.index(:w_skin)
      type = 1
      plus = skip ? WS_SHIFT : 1
      plus *= sign
      old_value = $game_system.w_skin
      $game_system.w_skin += plus
    when ITEMS.index(:w_tone_r)
      type = 11
      old_value = $game_system.window_tone.red
      plus = skip ? 50 : 5
      value = old_value + plus * sign
    when ITEMS.index(:w_tone_g)
      type = 12
      old_value = $game_system.window_tone.green
      plus = skip ? 50 : 5
      value = old_value + plus * sign
    when ITEMS.index(:w_tone_b)
      type = 13
      old_value = $game_system.window_tone.blue
      plus = skip ? 50 : 5
      value = old_value + plus * sign
    when ITEMS.index(:w_opacity)
      type = 2
      old_value = $game_system.w_opacity
      plus = skip ? 25 : 5
      $game_system.w_opacity += plus * sign
    when ITEMS.index(:m_master_volume)
      type = 3
      old_value = $game_system.m_master_volume
      plus = skip ? 20 : 5
      $game_system.m_master_volume += plus * sign
    when ITEMS.index(:s_master_volume)
      type = 3
      old_value = $game_system.s_master_volume
      plus = skip ? 20 : 5
      $game_system.s_master_volume += plus * sign
    end
    new_value = justify_value(wrap, value) unless type == 0
    return if new_value == old_value
    Sound.play_cursor
    case type
    when 1
      update_skin
      return
    when 2
      update_back_opacity
    when 11
      $game_system.window_tone.red = new_value
      update_tone
    when 12
      $game_system.window_tone.green = new_value
      update_tone
    when 13
      $game_system.window_tone.blue = new_value
      update_tone
    end
    redraw_current_item
    redraw_item(ITEMS.index(:default))
  end
  #--------------------------------------------------------------------------
  # ● 各項目の値を正規化
  #--------------------------------------------------------------------------
  def justify_value(wrap, value)
    case @index
    when ITEMS.index(:dash_speed)
      value = $game_system.dash_speed
      if    value > 3; value = wrap ? 1 : 3
      elsif value < 1; value = wrap ? 3 : 1
      else;            return value
      end
      $game_system.dash_speed = value
    when ITEMS.index(:c_memorization)
      value = $game_system.c_memorization
      if    value > 2; value = wrap ? 0 : 2
      elsif value < 0; value = wrap ? 2 : 0
      else;            return value
      end
      $game_system.c_memorization = value
    when ITEMS.index(:w_skin)
      value = $game_system.w_skin
      if    value > Max_W_Skin; value = wrap ?          1 : Max_W_Skin
      elsif value <          1; value = wrap ? Max_W_Skin : 1
      else;                     return value
      end
      $game_system.w_skin = value
    when ITEMS.index(:w_tone_r), ITEMS.index(:w_tone_g), ITEMS.index(:w_tone_b)
      if    value >  255; value = wrap ? -255 :  255
      elsif value < -255; value = wrap ?  255 : -255
      end
    when ITEMS.index(:w_opacity)
      value = $game_system.w_opacity
      if    value > 255; value = wrap ?   0 : 255
      elsif value <   0; value = wrap ? 255 : 0
      else;              return value
      end
      $game_system.w_opacity = value
    when ITEMS.index(:m_master_volume)
      value = $game_system.m_master_volume
      if    value > 100; value = wrap ?   0 : 100
      elsif value <   0; value = wrap ? 100 : 0
      else;              return value
      end
      $game_system.m_master_volume = value
    when ITEMS.index(:s_master_volume)
      value = $game_system.s_master_volume
      if    value > 100; value = wrap ?   0 : 100
      elsif value <   0; value = wrap ? 100 : 0
      else;              return value
      end
      $game_system.s_master_volume = value
    end
    return value
  end
  #--------------------------------------------------------------------------
  # ● 各種カーソル移動メソッド
  #--------------------------------------------------------------------------
  def cursor_right(wrap = false); value_plus( 1, false, wrap); end  # 右
  def cursor_left (wrap = false); value_plus(-1, false, wrap); end  # 左
  def cursor_pagedown;            value_plus( 1, true);        end  # 1 ページ前
  def cursor_pageup;              value_plus(-1, true);        end  # 1 ページ後
  #--------------------------------------------------------------------------
  # ● カーソルの移動処理
  #--------------------------------------------------------------------------
  def process_cursor_move
    return unless cursor_movable?
    last_index = @index
    cursor_down(Input.trigger?(:DOWN)) if Input.repeat?(:DOWN)
    cursor_up  (Input.trigger?(:UP))   if Input.repeat?(:UP)
    if Input.press?(:A)
      cursor_pagedown if Input.repeat?(:RIGHT) || Input.repeat?(:R)
      cursor_pageup   if Input.repeat?(:LEFT)  || Input.repeat?(:L)
    else
      cursor_right(Input.trigger?(:RIGHT)) if Input.repeat?(:RIGHT)
      cursor_left (Input.trigger?(:LEFT))  if Input.repeat?(:LEFT)
      cursor_pagedown if Input.repeat?(:R)
      cursor_pageup   if Input.repeat?(:L)
    end
    Sound.play_cursor if @index != last_index
  end
  #--------------------------------------------------------------------------
  # ● デフォルト値と等しいかを判定
  #--------------------------------------------------------------------------
  def default?
    $game_system.auto_dash       == DefaultAutoDash        &&
    $game_system.dash_speed      == DefaultDashSpeed       &&
    $game_system.diagonal_move   == DefaultDiagonalMove    &&
    $game_system.fast_message    == DefaultFastMessage     &&
    $game_system.c_memorization  == Default_C_Memorization &&
    $game_system.w_skin          == Default_W_Skin         &&
    $game_system.w_opacity       == Default_W_Opacity      &&
    $game_system.m_master_volume == Default_M_Volume       &&
    $game_system.s_master_volume == Default_S_Volume       &&
    $game_system.window_tone     == $data_system.window_tone
  end
  #--------------------------------------------------------------------------
  # ● すべての項目をデフォルトに戻す
  #--------------------------------------------------------------------------
  def restore_default_values
    $game_system.auto_dash       = DefaultAutoDash
    $game_system.dash_speed      = DefaultDashSpeed
    $game_system.diagonal_move   = DefaultDiagonalMove
    $game_system.fast_message    = DefaultFastMessage
    $game_system.c_memorization  = Default_C_Memorization
    $game_system.w_skin          = Default_W_Skin
    $game_system.window_tone     = $data_system.window_tone.dup
    $game_system.w_opacity       = Default_W_Opacity
    $game_system.m_master_volume = Default_M_Volume
    $game_system.s_master_volume = Default_S_Volume
    update_tone
    update_back_opacity
    update_skin
    select(0)
  end
  #--------------------------------------------------------------------------
  # ● すべての項目を元に戻す
  #--------------------------------------------------------------------------
  def restore_old_values
    $game_system.auto_dash       = @old_auto_dash
    $game_system.dash_speed      = @old_dash_speed
    $game_system.diagonal_move   = @old_diagonal_move
    $game_system.fast_message    = @old_fast_message
    $game_system.c_memorization  = @old_c_memorization
    $game_system.w_skin          = @old_w_skin
    $game_system.window_tone     = @old_w_tone
    $game_system.w_opacity       = @old_w_opacity
    $game_system.m_master_volume = @old_m_master_volume
    $game_system.s_master_volume = @old_s_master_volume
  end
  #--------------------------------------------------------------------------
  # ● 現在のインデックスが項目「デフォルト」の位置にあるかどうかを判定
  #--------------------------------------------------------------------------
  def default_index?
    @index == ITEMS.index(:default)
  end
  #--------------------------------------------------------------------------
  # ● 選択項目の有効状態を取得
  #--------------------------------------------------------------------------
  def current_item_enabled?
    if default_index?
      !default?
    else
      true
    end
  end
  #--------------------------------------------------------------------------
  # ● ウィンドウスキンの更新
  #--------------------------------------------------------------------------
  def update_skin
    skin_id = $game_system.w_skin
    skin = Cache.system(windowskin_name(skin_id))
    self.windowskin         = skin
    @help_window.windowskin = skin
    self_font = self.contents.font
    help_font = @help_window.contents.font
    nofs = NoOutlineFontSkins.include?(skin_id)
    self_font.outline = help_font.outline = !nofs
    self_font.shadow  = help_font.shadow  =  nofs
    self.refresh
    @help_window.refresh
  end
  #--------------------------------------------------------------------------
  # ● 色調の更新
  #--------------------------------------------------------------------------
  def update_tone
    tone = $game_system.window_tone
    self.tone.set         (tone)
    @help_window.tone.set (tone)
  end
  #--------------------------------------------------------------------------
  # ● 透明度の更新
  #--------------------------------------------------------------------------
  def update_back_opacity
    opacity = $game_system.w_opacity
    self.back_opacity         = opacity
    @help_window.back_opacity = opacity
  end
  #--------------------------------------------------------------------------
  # ● ヘルプウィンドウの更新
  #--------------------------------------------------------------------------
  def update_help
    @help_window.set_text(HELPS[@index])
  end
end
  
#==============================================================================
# ★ Scene_NZPrism_Option
#------------------------------------------------------------------------------
# 　オプション画面の処理を行うクラスです。
#==============================================================================

class Scene_NZPrism_Option < Scene_MenuBase
  #--------------------------------------------------------------------------
  # ● 開始処理
  #--------------------------------------------------------------------------
  def start
    super
    create_help_window
    create_option_window
  end
  #--------------------------------------------------------------------------
  # ● オプションウィンドウの作成
  #--------------------------------------------------------------------------
  def create_option_window
    @option_window = Window_NZPrism_Option.new(@help_window)
    @option_window.set_handler(:ok,     method(:on_option_ok))
    @option_window.set_handler(:cancel, method(:on_option_cancel))
    @option_window.activate
  end
  #--------------------------------------------------------------------------
  # ● オプション［決定］
  #--------------------------------------------------------------------------
  def on_option_ok
    if @option_window.default_index?
      @option_window.restore_default_values
      @option_window.activate
    else
      return_scene
    end
  end
  #--------------------------------------------------------------------------
  # ● オプション［キャンセル］
  #--------------------------------------------------------------------------
  def on_option_cancel
    @option_window.restore_old_values
    return_scene
  end
end
