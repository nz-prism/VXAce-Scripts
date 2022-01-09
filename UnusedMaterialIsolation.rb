#==============================================================================
# �� ���g�p�f�ފu��
#------------------------------------------------------------------------------
# ver. 1.0.0
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/UnusedMaterialIsolation.rb
#------------------------------------------------------------------------------
# �� �������@
# 1. �X�N���v�g�G�f�B�^�ɂāA�u�� �f�ށv�́u( �����ɒǉ� )�v�ȉ��ɐV�K�Z�N�V����
#    ��}�����Ă��������B
#    �u�I�v�V������ʁv�𓱓����Ă���ꍇ�A���̉��ɑ}�����Ă��������B
# 2. 1 �̃Z�N�V�����ɂ��̃X�N���v�g�S�̂�\��t���Ă��������B
# 
# �� �g�p���@
# 1. �e�X�g�v���C���A���j���[�́u�Q�[���I���v����u�V���b�g�_�E���v��I�������
#    �摜�E�����f�ނŁA�e�X�g�v���C�����ۂɎg�p���ꂽ�f�ނ����X�g�A�b�v���ꂽ�e
#    �L�X�g�t�@�C�� "UsedGraphics.txt" "UsedAudio.txt" ���쐬����܂��B
# 2. �e�X�g�v���C���A���j���[�́u�Q�[���I���v����u���g�p�f�ނ��u�����ďI���v��
#    �I������ƁA 1 �̃e�L�X�g�t�@�C���ɂȂ��摜�E�����f�ނ� "UnusedMaterials"
#    �t�H���_�Ɋu������܂��B�܂� 1 �̃e�L�X�g�t�@�C�������̃t�H���_���Ɉړ�����
#    ���B
#
# �� �⑫
# �@��L�̃e�L�X�g�t�@�C���̓e�X�g�v���C���s�����тɒǋL����Ă����܂��B���̂���
# �u���g�p�f�ނ��u�����ďI���v�́A�z�z�O�̍ŏI�e�X�g�v���C�I�����Ɏg�p����Ƃ悢
# �ł��傤�B�܂��O�̂��߁A Graphics �t�H���_�� Audio �t�@���_�̓o�b�N�A�b�v��
# ����Ă������Ƃ������߂��܂��B�Ȃ��A�V���b�g�_�E���R�}���h�ȊO�̏I���i
# Alt + F4 �L�[��E�B���h�E�́u�~�v�{�^�����j�ł̓e�L�X�g�̍쐬/�ǋL���s���܂�
# ��̂ł����ӂ��������B
# �@���̃X�N���v�g�̓e�X�g�v���C���������s����܂���B���̂��� Game.exe �ɂ���
# ��N���ł́A�u���g�p�f�ނ��u�����ďI���v�R�}���h���\������邱�Ƃ͂���܂����
# �ł����S���������B
#------------------------------------------------------------------------------
# �{�f�ނ�MIT���C�Z���X�ɂă����[�X����Ă��܂��B
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2012/07/28 ver.1.0.0 ���J
#==============================================================================

if $TEST
  
  # �g���q���o���p���K�\��

    # �摜�t�@�C��
    GRAPHIC_EXT = /(\.(?:png|bmp|jp[eg]|jpeg))$/i
    
    # �����t�@�C��
    AUDIO_EXT   = /(\.(?:og[ga]|wma|mp3|wav|midi?))$/i
  
  class Dir
    #--------------------------------------------------------------------------
    # �� �摜�E�����f�ނ���������ꍇ�A�g���q���قȂ��Ă�����t�@�C���Ƃ݂Ȃ�
    #--------------------------------------------------------------------------
    class << self; alias :nzprism_isolation_glob :glob; end
    def self.glob(path)
      case path
      when GRAPHIC_EXT
        ext = $1.to_s
        d = path.sub(ext, "")
        path  = d + ".png\0"
        path += d + ".bmp\0"
        path += d + ".jpg\0"
        path += d + ".jpe\0"
        path += d + ".jpeg"
      when AUDIO_EXT
        ext = $1.to_s
        d = path.sub(ext, "")
        path  = d + ".ogg\0"
        path += d + ".oga\0"
        path += d + ".wma\0"
        path += d + ".mp3\0"
        path += d + ".wav\0"
        path += d + ".mid\0"
        path += d + ".midi"
      end
      nzprism_isolation_glob(path)
    end
  end
  
  module FileManager
    #--------------------------------------------------------------------------
    # �� ���g�p�f�ފu���̎��s
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
        used_graphics = graphics.split("\n")
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
        used_audio = audio.split("\n")
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
    # �� �N���X�ϐ��̏�����
    #--------------------------------------------------------------------------
    def self.init_text
      @@text_array = []
    end
    #--------------------------------------------------------------------------
    # �� �g�p�f�ރe�L�X�g�̒ǉ�
    #--------------------------------------------------------------------------
    def add_text
      class_name = self.class.to_s.sub("RPG::", "")
      str = "Audio/" + class_name + "/" + @name + "\n"
      @@text_array << str unless @@text_array.include?(str)
    end
    #--------------------------------------------------------------------------
    # �� �g�p�f�ރe�L�X�g�t�@�C���̕ۑ�
    #--------------------------------------------------------------------------
    def self.save_text
      path = "UsedAudio.txt"
      old = FileTest.exist?(path) ? File.read(path) : nil
      if old
        ary = old.split("\n")
        ary.collect!{|s| s + "\n" }
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
    # �� BGM �̉��t
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play(pos = 0)
        if @name.empty?
          Audio.bgm_stop
          @@last = RPG::BGM.new
        else
          add_text
          if $game_system.m_master_volume == 0     # �{�����[���� 0 �Ȃ�
            vol = 0                                # �����ɂ���
          else                                     # ����ȊO�Ȃ�Œ�ł� 5 �c��
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
    # �� BGS �̉��t
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play(pos = 0)
        if @name.empty?
          Audio.bgs_stop
          @@last = RPG::BGS.new
        else
          add_text
          if $game_system.s_master_volume == 0     # �{�����[���� 0 �Ȃ�
            vol = 0                                # �����ɂ���
          else                                     # ����ȊO�Ȃ�Œ�ł� 5 �c��
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
    # �� ME �̉��t
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play
        if @name.empty?
          Audio.me_stop
        else
          add_text
          if $game_system.m_master_volume == 0     # �{�����[���� 0 �Ȃ�
            vol = 0                                # �����ɂ���
          else                                     # ����ȊO�Ȃ�Œ�ł� 5 �c��
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
    # �� SE �̉��t
    #--------------------------------------------------------------------------
    if defined?(Window_NZPrism_Option)
      def play
        unless @name.empty?
          add_text
          if $game_system.s_master_volume == 0     # �{�����[���� 0 �Ȃ�
            vol = 0                                # �����ɂ���
          else                                     # ����ȊO�Ȃ�Œ�ł� 5 �c��
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
    # �� �r�b�g�}�b�v�̓ǂݍ���
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
    # �� �g�p�f�ރe�L�X�g�̒ǉ�
    #--------------------------------------------------------------------------
    def self.add_text(path)
      @text_array = [] unless @text_array
      str = path + "\n"
      @text_array << str unless @text_array.include?(str)
    end
    #--------------------------------------------------------------------------
    # �� �g�p�f�ރe�L�X�g�t�@�C���̕ۑ�
    #--------------------------------------------------------------------------
    def self.save_text
      if @text_array
        path = "UsedGraphics.txt"
        old = FileTest.exist?(path) ? File.read(path) : nil
        if old
          ary = old.split("\n")
          ary.collect!{|s| s + "\n" }
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
    # �� ���s
    #--------------------------------------------------------------------------
    class << self; alias :nzprism_isolation_run :run; end
    def self.run
      RPG::AudioFile.init_text
      nzprism_isolation_run
    end
  end

  class Window_GameEnd
    #--------------------------------------------------------------------------
    # �� �E�B���h�E���̎擾
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_window_width :window_width
    def window_width
      nzprism_isolation_window_width + 90
    end
    #--------------------------------------------------------------------------
    # �� �R�}���h���X�g�̍쐬
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_make_command_list :make_command_list
    def make_command_list
      nzprism_isolation_make_command_list
      add_command("���g�p�f�ނ��u�����ďI��", :isolate)
    end
  end

  class Scene_End
    #--------------------------------------------------------------------------
    # �� �R�}���h�E�B���h�E�̍쐬
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_create_command_window :create_command_window
    def create_command_window
      nzprism_isolation_create_command_window
      @command_window.set_handler(:isolate, method(:command_isolate))
    end
    #--------------------------------------------------------------------------
    # �� �R�}���h�m�V���b�g�_�E���n
    #--------------------------------------------------------------------------
    alias :nzprism_isolation_command_shutdown :command_shutdown
    def command_shutdown(isolate = false)
      Cache.save_text
      RPG::AudioFile.save_text
      FileManager.isolate_unused_materials if isolate
      nzprism_isolation_command_shutdown
    end
    #--------------------------------------------------------------------------
    # �� �R�}���h�m���g�p�f�ނ��u�����ďI���n
    #--------------------------------------------------------------------------
    def command_isolate
      command_shutdown(true)
    end
  end
  
end
