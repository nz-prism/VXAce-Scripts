#==============================================================================
# �� �I�v�V�������
#------------------------------------------------------------------------------
# ver. 2.0.1
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/Option.rb
#------------------------------------------------------------------------------
# �� �������@
# 1. �X�N���v�g�G�f�B�^�ɂāA�u�� �f�ށv�́u( �����ɒǉ� )�v�ȉ��ɐV�K�Z�N�V����
#    ��}�����Ă��������B
# 2. 1 �̃Z�N�V�����ɂ��̃X�N���v�g�S�̂�\��t���Ă��������B
# 3. �K�v�Ȃ�ȉ��̃J�X�^�}�C�Y�Z�N�V�����ɂāA���D�݂̐ݒ�ɕύX���Ă��������B
#
# �� �E�B���h�E�X�L���ɂ���
# �@�I�v�V�����ɂăE�B���h�E�X�L����؂�ւ�����悤�ɂ���ɂ́A
# Graphics/System �t�H���_�Ɂu Window2 �v�Ƃ����t�@�C�����ɂ����E�B���h�E�f�ނ�
# ����Ă��������B 3 �ԖڂȂ�u Window3 �v�ɂȂ�܂��i�ȍ~�����l�j�B
# �Ȃ��ǉ��X�L�����Ȃ��ꍇ�A�E�B���h�E�X�L���ύX�̍��ڂ͕\������܂���B
#------------------------------------------------------------------------------
# �{�f�ނ�MIT���C�Z���X�ɂă����[�X����Ă��܂��B
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2014/04/20 2.0.1 ���o�O���C��
# 2014/04/11 2.0.0 �u�J�[�\���̋L���v�̒ǉ����͂��߂Ƃ����l�X�ȍX�V��K�p
#                  ���łƂ̃Z�[�u�f�[�^�̌݊����Ȃ�
# 2012/07/28 1.0.2 �s�v�������폜
# 2012/07/24 1.0.1 Window_Base �� initialize ���\�b�h���Ē�`�ł͂Ȃ��A
#                  alias �ɕύX
# 2012/07/24 1.0.0 ���J
#==============================================================================

class Window_NZPrism_Option < Window_Selectable
#==============================================================================
# �� �J�X�^�}�C�Y�Z�N�V����
#------------------------------------------------------------------------------
# �@�ȉ��̊e�ݒ�����[�U�[�̍D�݂ɉ����ĕύX�ł��܂��B = �̉E�ӂ̐��l�╶�����
# �C�ӂɕύX���Ă��������B " " �ň͂܂ꂽ�����ȊO�͑S�p��������͂��Ȃ��ł�����
# ���B [ ] �� { } �A " " �� , �Ȃǂ̋L���������Ȃ��ł��������B
#==============================================================================
  
  # �I������
  # �g�p����ꍇ�� true �A�s�g�p�̏ꍇ�� false ��I�����Ă�������
    
    # �I�[�g�_�b�V��
    AddAutoDash        = true
    
    # �_�b�V�����x
    AddDashSpeed       = true
    
    # �΂߈ړ�
    AddDiagonalMove    = true
    
    # ���b�Z�[�W�\�����x
    AddFastMessage     = true
    
    # �J�[�\���̋L��
    Add_C_Memorization = true
  
  
  # �E�B���h�E�X�L���̐��i�u Window.png �v���܂߂Ă��������j
  Max_W_Skin = 1
  
  
  # �e���ڂ̃f�t�H���g�l
    
    # �I�[�g�_�b�V���itrue �^ false�j
    DefaultAutoDash        = false
    
    # �_�b�V�����x�i1 ? 3�j
    DefaultDashSpeed       = 1
    
    # �΂߈ړ��itrue �^ false�j
    DefaultDiagonalMove    = false
    
    # ���b�Z�[�W�\�����x�itrue �^ false�j
    DefaultFastMessage     = false
    
    # �J�[�\���̋L���i0 ? 2�j
    # 0 : ����
    # 1 : �^�[�����ɏ�����
    # 2 : �L��
    Default_C_Memorization = 2
    
    # �E�B���h�E�X�L�� ID �i�u Window.png �v�� ID �� 1 �ł��j
    Default_W_Skin         = 1
    
    # �E�B���h�E�����x�i0 ? 255�j
    Default_W_Opacity      = 180
    
    # BGM ���ʁi0 ? 100�j
    Default_M_Volume       = 75
    
    # SE ���ʁi0 ? 100�j
    Default_S_Volume       = 60
    
  
  
  #============================================================================
  # �� �A�E�g���C���Ȃ��t�H���g�ɂ���E�B���h�E�X�L��
  #----------------------------------------------------------------------------
  # �@�ȉ��ɓ��͂��� ID �̃E�B���h�E�X�L���̃t�H���g�ɂ́A�A�E�g���C����������
  # �e�����悤�ɂȂ�܂��B�t�H���g���ɂ���Ō��Â炭�Ȃ��Ă��܂��E�B���h�E�X
  # �L��������ꍇ�A�����ɐݒ肵�Ă݂Ă��������B
  # �@�u , �v�ŋ�؂�΂����ł��ݒ�\�ł��B
  #============================================================================
  NoOutlineFontSkins = [
    100, 200
  ]# ���_�~�[ ID �ł��B����������ĔC�ӂ� ID ����͂��Ă�������
  
  
  
  # �e�ݒ荀�ڂ̖��O
  
  AutoDash       = "�I�[�g�_�b�V��"
  
  DashSpeed      = "�_�b�V�����x"
  
  DiagonalMove   = "�΂߈ړ�"
  
  FastMessage    = "���b�Z�[�W�\�����x"
  
  C_Memorization = "�J�[�\���̋L��"
  
  W_Skin         = "�E�B���h�E�X�L��"
  
  W_Tone         = "�E�B���h�E�J���["
  
  W_Opacity      = "�E�B���h�E�����x"
  
  M_Volume       = "�a�f�l����"
  
  S_Volume       = "�r�d����"
  
  Default        = "�f�t�H���g"
  
  
  # �e�ݒ荀�ڂ̐�����
  
  Help_AutoDash       = # �I�[�g�_�b�V��
  "�u�I���v�ł͒ʏ�_�b�V���A \\C[14]A\\C[0] ���������s�ɂȂ�܂�"
    
  Help_DashSpeed      = # �_�b�V�����x
  "�_�b�V�����x��ύX���܂�"
  
  Help_DiagonalMove   = # �΂߈ړ�
  "�}�b�v��ʂŎ΂߈ړ����\�ɂ��܂�"
    
  Help_FastMessage    = # ���b�Z�[�W�\�����x
  "�u�u���v�ł̓��b�Z�[�W�������ɕ\������܂�"
  
  Help_C_Memorization = # �J�[�\���̋L��
  "�J�[�\���̋L�����@��ύX���܂�"
    
  Help_W_Skin         = # �E�B���h�E�X�L��
  "�E�B���h�E�X�L����ύX���܂�"
  
  Help_W_Tone_R       = # �E�B���h�E�J���[�ER�l
  "�E�B���h�E�J���[�̂q�l��ύX���܂�"
    
  Help_W_Tone_G       = # �E�B���h�E�J���[�EG�l
  "�E�B���h�E�J���[�̂f�l��ύX���܂�"
    
  Help_W_Tone_B       = # �E�B���h�E�J���[�EB�l
  "�E�B���h�E�J���[�̂a�l��ύX���܂�"
  
  Help_W_Opacity      = # �E�B���h�E�����x
  "�E�B���h�E�̓����x��ύX���܂��B�Ⴂ�قǔw�i�������܂�"
  
  Help_M_Volume       = # BGM����
  "�a�f�l�̉��ʂ𒲐߂��܂�"
    
  Help_S_Volume       = # SE����
  "�r�d�̉��ʂ𒲐߂��܂�"
    
  Help_Default        = # �f�t�H���g
  "���ׂĂ̐ݒ���f�t�H���g�l�ɖ߂��܂�"
  
  
  
#------------------------------------------------------------------------------
# �� �J�X�^�}�C�Y�����܂�
#------------------------------------------------------------------------------
end
#------------------------------------------------------------------------------
class Font
  #--------------------------------------------------------------------------
  # �� �I�v�V�����ɂĐݒ肵���u�A�E�g���C���Ȃ��t�H���g�X�L���v��K�p
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
  # �� BGM �̉��t
  #--------------------------------------------------------------------------
  def play(pos = 0)
    if @name.empty?
      Audio.bgm_stop
      @@last = RPG::BGM.new
    else
      if $game_system.m_master_volume == 0         # �{�����[���� 0 �Ȃ�
        volume = 0                                 # �����ɂ���
      else                                         # ����ȊO�Ȃ�Œ�ł� 5 �c��
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
  # �� BGS �̉��t
  #--------------------------------------------------------------------------
  def play(pos = 0)
    if @name.empty?
      Audio.bgs_stop
      @@last = RPG::BGS.new
    else
      if $game_system.s_master_volume == 0         # �{�����[���� 0 �Ȃ�
        volume = 0                                 # �����ɂ���
      else                                         # ����ȊO�Ȃ�Œ�ł� 5 �c��
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
  # �� ME �̉��t
  #--------------------------------------------------------------------------
  def play
    if @name.empty?
      Audio.me_stop
    else
      if $game_system.m_master_volume == 0         # �{�����[���� 0 �Ȃ�
        volume = 0                                 # �����ɂ���
      else                                         # ����ȊO�Ȃ�Œ�ł� 5 �c��
        volume = [[@volume+$game_system.m_master_volume-100, 5].max, 100].min
      end
      Audio.me_play('Audio/ME/' + @name, volume, @pitch)
    end
  end
end
#------------------------------------------------------------------------------
class RPG::SE
  #--------------------------------------------------------------------------
  # �� SE �̉��t
  #--------------------------------------------------------------------------
  def play
    unless @name.empty?
      if $game_system.s_master_volume == 0         # �{�����[���� 0 �Ȃ�
        volume = 0                                 # �����ɂ���
      else                                         # ����ȊO�Ȃ�Œ�ł� 5 �c��
        volume = [[@volume+$game_system.s_master_volume-80, 5].max, 100].min
      end
      Audio.se_play('Audio/SE/' + @name, volume, @pitch)
    end
  end
end
#------------------------------------------------------------------------------
module DataManager
  #--------------------------------------------------------------------------
  # �� �Z�[�u�w�b�_�̍쐬
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
  # �� ���J�C���X�^���X�ϐ�
  #--------------------------------------------------------------------------
  attr_reader   :m_master_volume          # BGM ����
  attr_reader   :s_master_volume          # SE ����
  attr_accessor :auto_dash                # �I�[�g�_�b�V��
  attr_accessor :dash_speed               # �_�b�V�����x
  attr_accessor :diagonal_move            # �΂߈ړ�
  attr_accessor :fast_message             # ���b�Z�[�W�u�ԕ\��
  attr_accessor :c_memorization           # �J�[�\���̋L��
  attr_accessor :w_skin                   # �E�B���h�E�X�L��
  attr_accessor :w_opacity                # �E�B���h�E�����x
  #--------------------------------------------------------------------------
  # �� �I�u�W�F�N�g������
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
  # �� BGS �̕ۑ�
  #--------------------------------------------------------------------------
  def save_bgs
    @saved_bgs = RPG::BGS.last
  end
  #--------------------------------------------------------------------------
  # �� BGM / ME �{�����[���̕ύX
  #--------------------------------------------------------------------------
  def m_master_volume=(volume)
    @m_master_volume = volume         # �{�����[���ύX���A
    save_bgm                          # ���݂�BGM���L�^���邱�Ƃ�
    @saved_bgm.play if @saved_bgm     # �r�؂ꂸ�ɉ��t���ĊJ�\
  end
  #--------------------------------------------------------------------------
  # �� BGS / SE �{�����[���̕ύX
  #--------------------------------------------------------------------------
  def s_master_volume=(volume)
    @s_master_volume = volume         # �{�����[���ύX���A
    save_bgs                          # ���݂�BGS���L�^���邱�Ƃ�
    @saved_bgs.play if @saved_bgs     # �r�؂ꂸ�ɉ��t���ĊJ�\
  end
end
#------------------------------------------------------------------------------
class Game_Actor
  #--------------------------------------------------------------------------
  # �� ���J�C���X�^���X�ϐ�
  #--------------------------------------------------------------------------
  attr_writer   :last_skill               # �J�[�\���L���p : �X�L��
end
#------------------------------------------------------------------------------
class Game_Party
  #--------------------------------------------------------------------------
  # �� �J�[�\���L���p�A�C�e���̏�����
  #--------------------------------------------------------------------------
  def nzprism_option_init_last_items
    @last_item = Game_BaseItem.new
    members.each{|member| member.last_skill = Game_BaseItem.new }
  end
end
#------------------------------------------------------------------------------
class Game_CharacterBase
  #--------------------------------------------------------------------------
  # �� �ړ����x�̎擾�i�_�b�V�����l���j
  #--------------------------------------------------------------------------
  alias :nzprism_option_real_move_speed :real_move_speed
  def real_move_speed
    speed = nzprism_option_real_move_speed
    speed += $game_system.dash_speed - 1 if dash?
    [speed, 7].min
  end
  #--------------------------------------------------------------------------
  # �� �΂߂Ɉړ�
  #     horz : �������i4 or 6�j
  #     vert : �c�����i2 or 8�j
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
  # �� �_�b�V����Ԕ���
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
  # �� �����{�^�����͂ɂ��ړ�����
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
  # �� �ړ����x�̎擾
  #--------------------------------------------------------------------------
  alias :nzprism_option_speed :speed
  def speed
    nzprism_option_speed + $game_system.dash_speed - 1
  end
end
#------------------------------------------------------------------------------
class Window_Base
  #--------------------------------------------------------------------------
  # �� �I�u�W�F�N�g������
  #--------------------------------------------------------------------------
  alias :nzprism_option_initialize :initialize
  def initialize(x, y, width, height)
    nzprism_option_initialize(x, y, width, height)
    self.windowskin = Cache.system(windowskin_name)
    self.back_opacity = $game_system.w_opacity
  end
  #--------------------------------------------------------------------------
  # �� �������̕`��
  #--------------------------------------------------------------------------
  def draw_horz_line(y, color = normal_color, alpha = 48)
    line_y = y + line_height / 2 - 1
    color.alpha = alpha
    contents.fill_rect(0, line_y, contents_width, 2, color)
  end
  #--------------------------------------------------------------------------
  # �� �E�B���h�E�X�L�� �t�@�C�����̎擾
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
  # �� �ꕶ���o�͌�̃E�F�C�g
  #--------------------------------------------------------------------------
  alias :nzprism_option_wait_for_one_character :wait_for_one_character
  def wait_for_one_character
    unless $game_system.fast_message
      nzprism_option_wait_for_one_character
    end
  end
  #--------------------------------------------------------------------------
  # �� �E�F�C�g
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
  # �� �Ǝ��R�}���h�̒ǉ��p
  #--------------------------------------------------------------------------
  alias :nzprism_option_add_original_commands :add_original_commands
  def add_original_commands
    nzprism_option_add_original_commands
    add_command("�I�v�V����", :option)
  end
  #--------------------------------------------------------------------------
  # �� �O��̑I���ʒu�𕜋A
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
  # �� �O��̑I���ʒu�𕜋A
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
  # �� �O��̑I���ʒu�𕜋A
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
  # �� �O��̑I���ʒu�𕜋A
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
  # �� �O��̑I���ʒu�𕜋A
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
  # �� �O��̑I���ʒu�𕜋A
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
  # �� �I�u�W�F�N�g������
  #     index : �Z�[�u�t�@�C���̃C���f�b�N�X
  #--------------------------------------------------------------------------
  def initialize(height, index)
    super(0, index * height, Graphics.width, height)
    @file_index = index
    nzprism_option_update_tone unless setup_window
    refresh
    @selected = false
  end
  #--------------------------------------------------------------------------
  # �� �E�B���h�E�̊e��ݒ���Z�b�g�A�b�v
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
  # �� �F���̍X�V
  #--------------------------------------------------------------------------
  alias :nzprism_option_update_tone :update_tone
  def update_tone
  end
end
#------------------------------------------------------------------------------
class Scene_Title
  #--------------------------------------------------------------------------
  # �� �J�n����
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
  # �� �J�n����
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
  # �� �J�n����
  #--------------------------------------------------------------------------
  alias :nzprism_option_start :start
  def start
    Font.adapt_windowskin
    nzprism_option_start
  end
  #--------------------------------------------------------------------------
  # �� �R�}���h�E�B���h�E�̍쐬
  #--------------------------------------------------------------------------
  alias :nzprism_option_create_command_window :create_command_window
  def create_command_window
    nzprism_option_create_command_window
    @command_window.set_handler(:option, method(:command_option))
  end
  #--------------------------------------------------------------------------
  # �� �R�}���h�m�I�v�V�����n
  #--------------------------------------------------------------------------
  def command_option
    SceneManager.call(Scene_NZPrism_Option)
  end
end
#------------------------------------------------------------------------------
class Scene_Battle
  #--------------------------------------------------------------------------
  # �� �퓬�J�n
  #--------------------------------------------------------------------------
  alias :nzprism_option_battle_start :battle_start
  def battle_start
    $game_party.nzprism_option_init_last_items if $game_system.c_memorization == 1
    nzprism_option_battle_start
  end
  #--------------------------------------------------------------------------
  # �� �^�[���J�n
  #--------------------------------------------------------------------------
  alias :nzprism_option_turn_start :turn_start
  def turn_start
    $game_party.nzprism_option_init_last_items if $game_system.c_memorization == 1
    nzprism_option_turn_start
  end
end

#==============================================================================
# �� Window_NZPrism_Option
#------------------------------------------------------------------------------
# �@�I�v�V������ʂŁA�l�X�Ȑݒ荀�ڂ�\������E�B���h�E�ł��B
#==============================================================================

class Window_NZPrism_Option
  #--------------------------------------------------------------------------
  # �� �萔
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
  
  command1 = "%s\n\\C[14]�� ��\\C[0] �؂�ւ�"
  command2 = "%s\n" +
             "\\C[14]��\\C[0] %+2d�@�@" +
             "\\C[14]��\\C[0] %+2d�@�@" +
             "\\C[14]L \\C[29]/\\C[14] A\\C[0]+\\C[14]��\\C[0] %+3d�@�@" +
             "\\C[14]R \\C[29]/\\C[14] A\\C[0]+\\C[14]��\\C[0] %+3d"
  command3 = "%s\n\\C[14]C\\C[0] ���s"
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
  # �� �I�u�W�F�N�g������
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
  # �� ���ڐ��̎擾
  #--------------------------------------------------------------------------
  def item_max
    ITEMS.size
  end
  #--------------------------------------------------------------------------
  # �� �s���̎擾
  #--------------------------------------------------------------------------
  def row_max
    super + 1
  end
  #--------------------------------------------------------------------------
  # �� ���݂̍s�̎擾
  #--------------------------------------------------------------------------
  def row
    result = super
    result += 1 if @index == ITEMS.index(:default)
    result
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ̕����擾
  #--------------------------------------------------------------------------
  def item_width
    contents_width / 2
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ�`�悷���`�̎擾
  #--------------------------------------------------------------------------
  def item_rect(index, left = false)
    rect = super(index)
    rect.x = left ? 0 : item_width
    rect.y += line_height if index == ITEMS.index(:default)
    rect
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ̏���
  #--------------------------------------------------------------------------
  def clear_item(index)
    contents = self.contents
    contents.clear_rect(item_rect(index, true))
    contents.clear_rect(item_rect(index, false))
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ̃e�L�X�g�`��
  #     index     : �C���f�b�N�X
  #     l_text    : �����e�L�X�g
  #     r_text    : �E���e�L�X�g
  #     option = 0: �L��
  #     option = 1: ����
  #     option = 2: �Q�[�W�n���ڗp�i�ʏ�j
  #     option = 3: �Q�[�W�n���ڗp�i�~���[�g�j
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
  # �� �Q�[�W�̕`��
  #     index : �C���f�b�N�X
  #     rate  : �����i1.0 �Ŗ��^���j
  #     c1    : �O���f�[�V���� ���[
  #     c2    : �O���f�[�V���� �E�[
  #--------------------------------------------------------------------------
  def draw_gauge(index, rate, c1 = power_down_color, c2 = power_up_color)
    rect = item_rect(index)
    super(rect.x + 4, rect.y, rect.width - 8, rate, c1, c2)
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ̕`��
  #--------------------------------------------------------------------------
  def draw_item(index)
    case index
    when ITEMS.index(:auto_dash)
      r_text = $game_system.auto_dash ? "�I��" : "�I�t"
      draw_item_texts(index, AutoDash, r_text)
    when ITEMS.index(:dash_speed)
      draw_item_texts(index, DashSpeed, $game_system.dash_speed)
    when ITEMS.index(:diagonal_move)
      r_text = $game_system.diagonal_move ? "�I��" : "�I�t"
      draw_item_texts(index, DiagonalMove, r_text)
    when ITEMS.index(:fast_message)
      r_text = $game_system.fast_message ? "�u��" : "����"
      draw_item_texts(index, FastMessage, r_text)
    when ITEMS.index(:c_memorization)
      case $game_system.c_memorization
      when 0; r_text = "����"
      when 2; r_text = "�L��"
      else;   r_text = "�^�[�����ɏ�����"
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
        r_text = "�~���[�g"
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
        r_text = "�~���[�g"
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
  # �� �S���ڂ̕`��
  #--------------------------------------------------------------------------
  def draw_all_items
    super
    draw_horz_line(line_height * ITEMS.index(:default))
  end
  #--------------------------------------------------------------------------
  # �� �e���ڂ̒l�̑���
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
  # �� �e���ڂ̒l�𐳋K��
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
  # �� �e��J�[�\���ړ����\�b�h
  #--------------------------------------------------------------------------
  def cursor_right(wrap = false); value_plus( 1, false, wrap); end  # �E
  def cursor_left (wrap = false); value_plus(-1, false, wrap); end  # ��
  def cursor_pagedown;            value_plus( 1, true);        end  # 1 �y�[�W�O
  def cursor_pageup;              value_plus(-1, true);        end  # 1 �y�[�W��
  #--------------------------------------------------------------------------
  # �� �J�[�\���̈ړ�����
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
  # �� �f�t�H���g�l�Ɠ��������𔻒�
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
  # �� ���ׂĂ̍��ڂ��f�t�H���g�ɖ߂�
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
  # �� ���ׂĂ̍��ڂ����ɖ߂�
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
  # �� ���݂̃C���f�b�N�X�����ځu�f�t�H���g�v�̈ʒu�ɂ��邩�ǂ����𔻒�
  #--------------------------------------------------------------------------
  def default_index?
    @index == ITEMS.index(:default)
  end
  #--------------------------------------------------------------------------
  # �� �I�����ڂ̗L����Ԃ��擾
  #--------------------------------------------------------------------------
  def current_item_enabled?
    if default_index?
      !default?
    else
      true
    end
  end
  #--------------------------------------------------------------------------
  # �� �E�B���h�E�X�L���̍X�V
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
  # �� �F���̍X�V
  #--------------------------------------------------------------------------
  def update_tone
    tone = $game_system.window_tone
    self.tone.set         (tone)
    @help_window.tone.set (tone)
  end
  #--------------------------------------------------------------------------
  # �� �����x�̍X�V
  #--------------------------------------------------------------------------
  def update_back_opacity
    opacity = $game_system.w_opacity
    self.back_opacity         = opacity
    @help_window.back_opacity = opacity
  end
  #--------------------------------------------------------------------------
  # �� �w���v�E�B���h�E�̍X�V
  #--------------------------------------------------------------------------
  def update_help
    @help_window.set_text(HELPS[@index])
  end
end
  
#==============================================================================
# �� Scene_NZPrism_Option
#------------------------------------------------------------------------------
# �@�I�v�V������ʂ̏������s���N���X�ł��B
#==============================================================================

class Scene_NZPrism_Option < Scene_MenuBase
  #--------------------------------------------------------------------------
  # �� �J�n����
  #--------------------------------------------------------------------------
  def start
    super
    create_help_window
    create_option_window
  end
  #--------------------------------------------------------------------------
  # �� �I�v�V�����E�B���h�E�̍쐬
  #--------------------------------------------------------------------------
  def create_option_window
    @option_window = Window_NZPrism_Option.new(@help_window)
    @option_window.set_handler(:ok,     method(:on_option_ok))
    @option_window.set_handler(:cancel, method(:on_option_cancel))
    @option_window.activate
  end
  #--------------------------------------------------------------------------
  # �� �I�v�V�����m����n
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
  # �� �I�v�V�����m�L�����Z���n
  #--------------------------------------------------------------------------
  def on_option_cancel
    @option_window.restore_old_values
    return_scene
  end
end
