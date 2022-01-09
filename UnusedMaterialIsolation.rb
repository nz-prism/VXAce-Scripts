#==============================================================================
# ★ 未使用素材隔離
#------------------------------------------------------------------------------
# ver. 1.0.0
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/UnusedMaterialIsolation.rb
#------------------------------------------------------------------------------
# ■ 導入方法
# 1. スクリプトエディタにて、「▼ 素材」以下に新規セクションを挿入してください。
#    「オプション画面」を導入している場合、その下に挿入してください。
# 2. 1 のセクションにこのスクリプト全体を貼り付けてください。
# 
# ■ 使用方法
# 1. テストプレイ時、メニューの「ゲーム終了」から「シャットダウン」を選択すると
#    画像・音声素材で、テストプレイ中実際に使用された素材がリストアップされたテ
#    キストファイル "UsedGraphics.txt" "UsedAudio.txt" が作成されます。
# 2. テストプレイ時、メニューの「ゲーム終了」から「未使用素材を隔離して終了」を
#    選択すると、 1 のテキストファイルにない画像・音声素材が "UnusedMaterials"
#    フォルダに隔離されます。また 1 のテキストファイルもこのフォルダ内に移動しま
#    す。
#
# ■ 補足
# 　上記のテキストファイルはテストプレイを行うたびに追記されていきます。そのため
# 「未使用素材を隔離して終了」は、配布前の最終テストプレイ終了時に使用するとよい
# でしょう。また念のため、 Graphics フォルダと Audio ファルダはバックアップを
# 取っておくことをお勧めします。なお、シャットダウンコマンド以外の終了（
# Alt + F4 キーやウィンドウの「×」ボタン等）ではテキストの作成/追記が行われませ
# んのでご注意ください。
# 　このスクリプトはテストプレイ時しか実行されません。そのため Game.exe による通
# 常起動では、「未使用素材を隔離して終了」コマンドが表示されることはありませんの
# でご安心ください。
#------------------------------------------------------------------------------
# 本素材はMITライセンスにてリリースされています。
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2012/07/28 ver.1.0.0 公開
#==============================================================================

if $TEST
  
  # 拡張子取り出し用正規表現

    # 画像ファイル
    GRAPHIC_EXT = /(¥.(?:png|bmp|jp[eg]|jpeg))$/i
    
    # 音声ファイル
    AUDIO_EXT   = /(¥.(?:og[ga]|wma|mp3|wav|midi?))$/i
  
  class Dir
    #--------------------------------------------------------------------------
    # ○ 画像・音声素材を検索する場合、拡張子が異なっても同一ファイルとみなす
    #--------------------------------------------------------------------------
    class << self; alias :nzprism_isolation_glob :glob; end
    def self.glob(path)
      case path
      when GRAPHIC_EXT
        ext = $1.to_s
        d = path.sub(ext, "")
        path  = d + ".png¥0"
        path += d + ".bmp¥0"
        path += d + ".jpg¥0"
        path += d + ".jpe¥0"
        path += d + ".jpeg"
      when AUDIO_EXT
        ext = $1.to_s
        d = path.sub(ext, "")
        path  = d + ".ogg¥0"
        path += d + ".oga¥0"
        path += d + ".wma¥0"
        path += d + ".mp3¥0"
        path += d + ".wav¥0"
        path += d + ".mid¥0"
        path += d + ".midi"
      end
      nzprism_isolation_glob(path)
    end
  end
  
  module FileManager
    #--------------------------------------------------------------------------
    # ★ 未使用素材隔離の実行
    #--------------------------------------------------------------------------
    def self.isolate_unused_materials
      path = "UnusedMaterials"
      gpath = path + "/Graphics"
      apath = path + "/Audio"
      Dir.mkdir(path)  unless FileTest.exist?(path)
      Dir.mkdir(gpath) unless FileTest.exist?(gpath)
      Dir.mkdir(apath) unless FileTest.exist?(apath)
      gtext = "UsedGraphics.txt"
      if FileTest.exist?(gtext)
        graphics = File.read(gtext)
        used_graphics = graphics.split("¥n")
        unused_graphics = Dir.glob("Graphics/**/*.png")
        used_graphics.each{|g1|
          unused_graphics.delete_if{|g2| g2.sub(GRAPHIC_EXT, "") == g1 }
        }
        unused_graphics.each{|g|
          dir = File.dirname(g)
          base = File.basename(g)
          dir = File.join(path, dir)
          Dir.mkdir(dir) unless FileTest.exist?(dir)
          File.rename(g, File.join(dir, base))
        }
        File.rename(gtext, File.join(gpath, gtext))
      end
      atext = "UsedAudio.txt"
      if FileTest.exist?(atext)
        audio = File.read(atext)
        used_audio = audio.split("¥n")
        unused_audio = Dir.glob("Audio/**/*.ogg")
        used_audio.each{|a1|
          unused_audio.delete_if{|a2| a2.sub(AUDIO_EXT, "") == a1 }
        }
        unused_audio.each{|a|
          dir = File.dirname(a)
          base = File.basename(a)
          dir = File.join(path, dir)
          Dir.mkdir(dir) unless FileTest.exist?(dir)
          File.rename(a, File.join(dir, base))
        }
        File.rename(atext, File.join(apath, atext))
      end
    end
  end

  class RPG::AudioFile
    #--------------------------------------------------------------------------
    # ★ クラス変数の初期化
    #--------------------------------------------------------------------------
    def self.init_text
      @@text_array = []
    end
    #--------------------------------------------------------------------------
    # ★ 使用素材テキストの追加
    #--------------------------------------------------------------------------
    def add_text
      class_name = self.class.to_s.sub("RPG::", "")
      str = "Audio/" + class_name + "/" + @name + "¥n"
      @@text_array << str unless @@text_array.include?(str)
    end
    #--------------------------------------------------------------------------
    # ★ 使用素材テキストファイルの保存
    #--------------------------------------------------------------------------
    def self.save_text
      path = "UsedAudio.txt"
      old = FileTest.exist?(path) ? File.read(path) : nil
      if old
        ary = old.split("¥n")
        ary.collect!{|s| s + "¥n" }
        @@text_array |= ary
      end
      f = File.open(path, "w")
      @@text_array.sort!
      text = @@text_array.inject(""){|r, str| r += str }
      f.write(text)
      f.close
    end
  end
  
  class RPG::BGM
    #--------------------------------------------------------------------------
    # ○ BGM の演奏
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play(pos = 0)
        if @name.empty?
          Audio.bgm_stop
          @@last = RPG::BGM.new
        else
          add_text
          if $game_system.m_master_volume == 0     # ボリュームが 0 なら
            vol = 0                                # 無音にする
          else                                     # それ以外なら最低でも 5 残る
            vol =
              [[(@volume + $game_system.m_master_volume - 100), 5].max, 100].min
          end
          Audio.bgm_play('Audio/BGM/' + @name, vol, @pitch, pos)
          @@last = self.clone
        end
      end
    else
      def play(pos = 0)
        if @name.empty?
          Audio.bgm_stop
          @@last = RPG::BGM.new
        else
          add_text
          Audio.bgm_play('Audio/BGM/' + @name, @volume, @pitch, pos)
          @@last = self.clone
        end
      end
    end
  end
  class RPG::BGS
    #--------------------------------------------------------------------------
    # ○ BGS の演奏
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play(pos = 0)
        if @name.empty?
          Audio.bgs_stop
          @@last = RPG::BGS.new
        else
          add_text
          if $game_system.s_master_volume == 0     # ボリュームが 0 なら
            vol = 0                                # 無音にする
          else                                     # それ以外なら最低でも 5 残る
            vol =
              [[(@volume + $game_system.s_master_volume - 80), 5].max, 100].min
          end
          Audio.bgs_play('Audio/BGS/' + @name, vol, @pitch, pos)
          @@last = self.clone
        end
      end
    else
      def play(pos = 0)
        if @name.empty?
          Audio.bgs_stop
          @@last = RPG::BGS.new
        else
          add_text
          Audio.bgs_play('Audio/BGS/' + @name, @volume, @pitch, pos)
          @@last = self.clone
        end
      end
    end
  end
  class RPG::ME
    #--------------------------------------------------------------------------
    # ○ ME の演奏
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play
        if @name.empty?
          Audio.me_stop
        else
          add_text
          if $game_system.m_master_volume == 0     # ボリュームが 0 なら
            vol = 0                                # 無音にする
          else                                     # それ以外なら最低でも 5 残る
            vol =
              [[(@volume + $game_system.m_master_volume - 100), 5].max, 100].min
          end
          Audio.me_play('Audio/ME/' + @name, vol, @pitch)
        end
      end
    else
      def play
        if @name.empty?
          Audio.me_stop
        else
          add_text
          Audio.me_play('Audio/ME/' + @name, @volume, @pitch)
        end
      end
    end
  end
  class RPG::SE
    #--------------------------------------------------------------------------
    # ○ SE の演奏
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play
        unless @name.empty?
          add_text
          if $game_system.s_master_volume == 0     # ボリュームが 0 なら
            vol = 0                                # 無音にする
          else                                     # それ以外なら最低でも 5 残る
            vol =
              [[(@volume + $game_system.s_master_volume - 80), 5].max, 100].min
          end
          Audio.se_play('Audio/SE/' + @name, vol, @pitch)
        end
      end
    else
      def play
        unless @name.empty?
          add_text
          Audio.se_play('Audio/SE/' + @name, @volume, @pitch)
        end
      end
    end
  end

  module Cache
    #--------------------------------------------------------------------------
    # ○ ビットマップの読み込み
    #--------------------------------------------------------------------------
    def self.load_bitmap(folder_name, filename, hue = 0)
      @cache ||= {}
      if filename.empty?
        empty_bitmap
      else
        path = folder_name + filename
        add_text(path)
        if hue == 0
          normal_bitmap(path)
        else
          hue_changed_bitmap(path, hue)
        end
      end
    end
    #--------------------------------------------------------------------------
    # ★ 使用素材テキストの追加
    #--------------------------------------------------------------------------
    def self.add_text(path)
      @text_array = [] unless @text_array
      str = path + "¥n"
      @text_array << str unless @text_array.include?(str)
    end
    #--------------------------------------------------------------------------
    # ★ 使用素材テキストファイルの保存
    #--------------------------------------------------------------------------
    def self.save_text
      if @text_array
        path = "UsedGraphics.txt"
        old = FileTest.exist?(path) ? File.read(path) : nil
        if old
          ary = old.split("¥n")
          ary.collect!{|s| s + "¥n" }
          @text_array |= ary
        end
        f = File.open(path, "w")
        @text_array.sort!
        text = @text_array.inject(""){|r, str| r += str }
        f.write(text)
        f.close
      end
    end
  end

  module SceneManager
    #--------------------------------------------------------------------------
    # ○ 実行
    #--------------------------------------------------------------------------
    class << self; alias :nzprism_isolation_run :run; end
    def self.run
      RPG::AudioFile.init_text
      nzprism_isolation_run
    end
  end

  class Window_GameEnd
    #--------------------------------------------------------------------------
    # ○ ウィンドウ幅の取得
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_window_width :window_width
    def window_width
      nzprism_isolation_window_width + 90
    end
    #--------------------------------------------------------------------------
    # ○ コマンドリストの作成
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_make_command_list :make_command_list
    def make_command_list
      nzprism_isolation_make_command_list
      add_command("未使用素材を隔離して終了", :isolate)
    end
  end

  class Scene_End
    #--------------------------------------------------------------------------
    # ○ コマンドウィンドウの作成
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_create_command_window :create_command_window
    def create_command_window
      nzprism_isolation_create_command_window
      @command_window.set_handler(:isolate, method(:command_isolate))
    end
    #--------------------------------------------------------------------------
    # ○ コマンド［シャットダウン］
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_command_shutdown :command_shutdown
    def command_shutdown(isolate = false)
      Cache.save_text
      RPG::AudioFile.save_text
      FileManager.isolate_unused_materials if isolate
      nzprism_isolation_command_shutdown
    end
    #--------------------------------------------------------------------------
    # ★ コマンド［未使用素材を隔離して終了］
    #--------------------------------------------------------------------------
    def command_isolate
      command_shutdown(true)
    end
  end
  
end
