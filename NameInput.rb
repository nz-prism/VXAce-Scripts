#==============================================================================
# �� ���O���͉���
#------------------------------------------------------------------------------
# ver. 1.0.2
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/NameInput.rb
#------------------------------------------------------------------------------
# �� �������@
# 1. �X�N���v�g�G�f�B�^�ɂāA�u�� �f�ށv�́u( �����ɒǉ� )�v�ȉ��ɐV�K�Z�N�V����
#    ��}�����Ă��������B
#    �u�I�v�V������ʁv�𓱓����Ă���ꍇ�A���̉��ɑ}�����Ă��������B
# 2. 1 �̃Z�N�V�����ɂ��̃X�N���v�g�S�̂�\��t���Ă��������B
# 3. �K�v�Ȃ�ȉ��̃J�X�^�}�C�Y�Z�N�V�����ɂāA���D�݂̐ݒ�ɕύX���Ă��������B
# 
# ���̃X�N���v�g�� 640 * 480 �̉𑜓x�ɂ��Ή����Ă���A�𑜓x���傫���ق������
# ���₷���Ȃ�܂��B
# 
# 
# �� �A�N�^�[�́u���v�E�����̏����ɂ���
# �@�A�N�^�[�Ƀf�t�H���g�́u���v��ݒ肷��ꍇ�A�A�N�^�[�̃�������
# �u *��[�R�c] �v�̂悤�ɓ��͂���ΐݒ�ł��܂��B
# �@���l�ɁA�A�N�^�[�̃�������
# �u *�����t�] �v�Ɠ��͂���ƁA���̃A�N�^�[�́u�������v�̏������f�t�H���g�ƂȂ�
# �܂��i�������͂��Ȃ���΁u�������v�̏������f�t�H���g�ł��j�B
# 
# �� ���䕶���ɂ���
# �@���̃X�N���v�g�𓱓����邱�Ƃɂ��A�ȉ��̐��䕶���̎d�l���f�t�H���g����ύX
# ����܂��B�啶�������������A���p�������S�p�������ɂ���ĕ\������镶�����ω���
# ��悤�ɂȂ�܂��B
# �@�Ȃ��J�X�^�}�C�Y�Z�N�V�����ɂāu���v���g�p���Ȃ����Ƃ�I�������ꍇ�́A�啶
# ���E�������A���p�E�S�p���������ʂȂ��f�t�H���g�ʂ�ɕ\������܂��B
# 
# 
# �@\N[n]  �i���p�j : �A�N�^�[ n �Ԃ̃t���l�[���ɒu�������܂��B
# �@\�m[n] �i�S�p�j : �A�N�^�[ n �Ԃ̃t���l�[���ɒu�������܂��B
# 
# �@\n[n]  �i���p�j : �A�N�^�[ n �Ԃ́u���v�ɒu�������܂��B
# �@\��[n] �i�S�p�j : �A�N�^�[ n �Ԃ́u���v�ɒu�������܂��B
# 
# 
# �@\P[n]  �i���p�j : �p�[�e�B�����o�[ n �ԁi���я��j�̃t���l�[���ɒu�������܂��B
# �@\�o[n] �i�S�p�j : �p�[�e�B�����o�[ n �ԁi���я��j�̃t���l�[���ɒu�������܂��B
# 
# �@\p[n]  �i���p�j : �p�[�e�B�����o�[ n �ԁi���я��j�́u���v�ɒu�������܂��B
# �@\��[n] �i�S�p�j : �p�[�e�B�����o�[ n �ԁi���я��j�́u���v�ɒu�������܂��B
#------------------------------------------------------------------------------
# �{�f�ނ�MIT���C�Z���X�ɂă����[�X����Ă��܂��B
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2014/04/21 1.0.2 ���o�O�̏C��
# 2014/04/20 1.0.1 ���䕶�����u���v�ɑΉ�������ȂǁA���@�\�ǉ�
# 2012/11/04 1.0.0 ���J
#==============================================================================

class Scene_Name
#==============================================================================
# �� �J�X�^�}�C�Y�Z�N�V����
#------------------------------------------------------------------------------
# �ȉ��̊e�ݒ�����[�U�[�̍D�݂ɉ����ĕύX�ł��܂��B = �̉E�ӂ̐��l�╶�����
# �C�ӂɕύX���Ă��������B " " �ň͂܂ꂽ�����ȊO�͑S�p��������͂��Ȃ��ł�����
# ���B [ ] �� { } �A " " �� , �Ȃǂ̋L���������Ȃ��ł��������B
#==============================================================================

  # �����g�p���邩�ǂ���
  # �g�p���Ȃ��Ȃ� true �� false �ɏ��������Ă�������
  UseLastName = true
  
  
  # �ȉ��͐����g�p����ۂ̃I�v�V�����ł�
  
  # �t���l�[���\�����A��������؂镶��
  # ��؂蕶�����g�p�����ɐ�����A�����ĕ\�����������ꍇ�A "" �i�󕶎���j�ɂ���
  # ��������
  
  # �u�������v���̂Ƃ��i�� : �W����[��]�E�X�~�X[��]�j
  StringBetweenNames1 = "�E"
  
  # �u�������v���̂Ƃ��i�� : �R�c[��]�@���Y[��]�j
  StringBetweenNames2 = "�@"
  
  
  # �u���Ɩ����t�ɂ���v�R�}���h���g�p���邩�ǂ���
  # �g�p���Ȃ��Ȃ� true �� false �ɏ��������Ă�������
  UseReverseNames = true
  
  
  # ��Ɂu���v������͂��n�߂邩�ǂ���
  # �u�����t�]�v�A�N�^�[�̏ꍇ�́u���v������͊J�n�ɂ���Ȃ�A
  # true �� false �ɏ��������Ă�������
  FirstNameStart = true
  
  
  
#------------------------------------------------------------------------------
# �� �J�X�^�}�C�Y�����܂�
#------------------------------------------------------------------------------
end
#------------------------------------------------------------------------------
class Game_Actor
  attr_accessor :last_name                # ��
  attr_accessor :reverse_name_order       # �����t�]�t���O
  #--------------------------------------------------------------------------
  # �� �Z�b�g�A�b�v
  #--------------------------------------------------------------------------
  alias :nzprism_name_setup :setup
  def setup(actor_id)
    nzprism_name_setup(actor_id)
    note = actor.note
    if /\*(?:��|[���c]��|(?:���X�g|�t�@�~���[)�l�[��)\s*\[(.*)\]/ =~ note
      @last_name = $1
    else
      @last_name = ""
    end
    @reverse_name_order = !!(/\*�����t�]/ =~ note)
  end
  #--------------------------------------------------------------------------
  # �� �������̂̎擾
  #--------------------------------------------------------------------------
  def full_name
    return @name if @last_name.empty?
    if @reverse_name_order
      return @last_name + Scene_Name::StringBetweenNames2 + @name
    else
      return @name + Scene_Name::StringBetweenNames1 + @last_name
    end
  end
end
#------------------------------------------------------------------------------
class Window_Base
  #--------------------------------------------------------------------------
  # �� ���䕶���̎��O�ϊ�
  #    ���ۂ̕`����n�߂�O�ɁA�����Ƃ��ĕ�����ɕς����̂�����u��������B
  #    �����u\�v�̓G�X�P�[�v�����i\e�j�ɕϊ��B
  #--------------------------------------------------------------------------
  def convert_escape_characters(text)
    result = text.to_s.clone
    result.gsub!(/\\/)            { "\e" }
    result.gsub!(/\e\e/)          { "\\" }
    result.gsub!(/\eV\[(\d+)\]/i) { $game_variables[$1.to_i] }
    result.gsub!(/\eV\[(\d+)\]/i) { $game_variables[$1.to_i] }
    result.gsub!(/\eN\[(\d+)\]/)  { actor_name($1.to_i, 2) }
    result.gsub!(/\e�m\[(\d+)\]/) { actor_name($1.to_i, 2) }
    result.gsub!(/\en\[(\d+)\]/)  { actor_name($1.to_i, 0) }
    result.gsub!(/\e��\[(\d+)\]/) { actor_name($1.to_i, 1) }
    result.gsub!(/\eP\[(\d+)\]/)  { party_member_name($1.to_i, 2) }
    result.gsub!(/\e�o\[(\d+)\]/) { party_member_name($1.to_i, 2) }
    result.gsub!(/\ep\[(\d+)\]/)  { party_member_name($1.to_i, 0) }
    result.gsub!(/\e��\[(\d+)\]/) { party_member_name($1.to_i, 1) }
    result.gsub!(/\eG/i)          { Vocab::currency_unit }
    result
  end
  #--------------------------------------------------------------------------
  # �� �A�N�^�[ n �Ԃ̖��O���擾
  #--------------------------------------------------------------------------
  alias :nzprism_name_actor_name :actor_name
  def actor_name(n, type = 0)
    return nzprism_name_actor_name(n) if type == 0 or !Scene_Name::UseLastName
    return "" unless actor = (n > 0) ? $game_actors[n] : nil
    return (type == 2) ? actor.full_name : actor.last_name
  end
  #--------------------------------------------------------------------------
  # �� �p�[�e�B�����o�[ n �Ԃ̖��O���擾
  #--------------------------------------------------------------------------
  alias :nzprism_name_party_member_name :party_member_name
  def party_member_name(n, type = 0)
    return nzprism_name_party_member_name(n) if type == 0 or !Scene_Name::UseLastName
    return "" unless actor = (n >= 1) ? $game_party.members[n - 1] : nil
    return (type == 2) ? actor.full_name : actor.last_name
  end
end
#------------------------------------------------------------------------------
class Window_Status
  #--------------------------------------------------------------------------
  # �� ���O�̕`��
  #--------------------------------------------------------------------------
  alias :nzprism_name_draw_actor_name :draw_actor_name
  def draw_actor_name(actor, x, y, width = 240)
    if Scene_Name::UseLastName
      change_color(hp_color(actor))
      draw_text(x, y, width, line_height, actor.full_name)
    else
      nzprism_name_draw_actor_name(actor, x, y, width)
    end
  end
  #--------------------------------------------------------------------------
  # �� �u���b�N 1 �̕`��
  #--------------------------------------------------------------------------
  alias :nzprism_name_draw_block1 :draw_block1
  def draw_block1(y)
    if Scene_Name::UseLastName
      draw_actor_name(@actor, 4, y)
      draw_actor_class(@actor, 256, y)
      draw_actor_nickname(@actor, 400, y)
    else
      nzprism_name_draw_block1(y)
    end
  end
end
#------------------------------------------------------------------------------
class Window_NameEdit
  #--------------------------------------------------------------------------
  # �� �I�u�W�F�N�g������
  #--------------------------------------------------------------------------
  def initialize(actor, max_char, x = nil, last = false)
    @last = last
    if Scene_Name::UseLastName
      width = Graphics.width / 2
      height = 56
    else
      width = 360
      height = fitting_height(4)
    end
    x ||= (Graphics.width - width) / 2
    y = (Graphics.height - 264 - height) / 2
    super(x, y, width, height)
    @actor = actor
    @max_char = max_char
    if @last
      @default_name = @name = actor.last_name[0, @max_char]
      deactivate if Scene_Name::FirstNameStart || !actor.reverse_name_order
    else
      @default_name = @name = actor.name[0, @max_char]
      deactivate if !Scene_Name::FirstNameStart && actor.reverse_name_order
    end
    @index = @name.size
    refresh
  end
  #--------------------------------------------------------------------------
  # �� �W���p�f�B���O�T�C�Y�̎擾
  #--------------------------------------------------------------------------
  alias :nzprism_name_standard_padding :standard_padding
  def standard_padding
    Scene_Name::UseLastName ? 8 : nzprism_name_standard_padding
  end
  #--------------------------------------------------------------------------
  # �� �����̕����擾
  #--------------------------------------------------------------------------
  def char_width
    text_size("��").width 
  end
  #--------------------------------------------------------------------------
  # �� ���O��`�悷�鍶�[�̍��W���擾
  #--------------------------------------------------------------------------
  alias :nzprism_name_left :left
  def left
    if Scene_Name::UseLastName
      name_center = (contents_width + char_width * 2) / 2
      name_width = (@max_char + 1) * char_width
      return [name_center - name_width / 2, contents_width - name_width].min
    else
      return nzprism_name_left
    end
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ�`�悷���`�̎擾
  #--------------------------------------------------------------------------
  alias :nzprism_name_item_rect :item_rect
  def item_rect(index)
    rect = nzprism_name_item_rect(index)
    rect.y = 12 if Scene_Name::UseLastName
    rect
  end
  #--------------------------------------------------------------------------
  # �� ���t���b�V��
  #--------------------------------------------------------------------------
  alias :nzprism_name_refresh :refresh
  def refresh
    if Scene_Name::UseLastName
      contents.clear
      str = @last ? "��" : "��"
      change_color(system_color)
      draw_text(left - char_width * 2, 12, char_width, line_height, str)
      change_color(normal_color)
      @max_char.times{|i| draw_underline(i) }
      @name.size.times{|i| draw_char(i) }
      active ? cursor_rect.set(item_rect(@index)) : cursor_rect.empty
    else
      nzprism_name_refresh
    end
  end
end
#------------------------------------------------------------------------------
class Scene_Name < Scene_MenuBase
  #--------------------------------------------------------------------------
  # �� �J�n����
  #--------------------------------------------------------------------------
  def start
    super
    @actor = $game_actors[@actor_id]
    if UseLastName
      @reverse_name_order = @actor.reverse_name_order
      if @reverse_name_order
        fx = Graphics.width / 2
        lx = 0
      else
        fx = 0
        lx = Graphics.width / 2
      end
      @f_edit_window = Window_NameEdit.new(@actor, @max_char, fx, false)
      @l_edit_window = Window_NameEdit.new(@actor, @max_char, lx, true)
      edit_window = @l_edit_window.active ? @l_edit_window : @f_edit_window
      @kanji_window  = Window_KanjiInput.new(edit_window)
      @kana_window   = Window_KanaInput.new(edit_window, @kanji_window)
    else
      @edit_window  = Window_NameEdit.new(@actor, @max_char)
      @kanji_window = Window_KanjiInput.new(@edit_window)
      @kana_window  = Window_KanaInput.new(@edit_window, @kanji_window)
    end
    @command_window = Window_NameCommand.new(@kana_window)
    @command_window.set_handler(:hiragana, method(:process_hiragana))
    @command_window.set_handler(:katakana, method(:process_katakana))
    @command_window.set_handler(:alphabet, method(:process_alphabet))
    @command_window.set_handler(:kanji,    method(:process_kanji))
    @command_window.set_handler(:ok,       method(:process_ok))
    @command_window.set_handler(:cancel,   method(:process_cancel))
    @kana_window.set_handler(:ok,      method(:on_kana_ok))
    @kana_window.set_handler(:cancel,  method(:on_kana_cancel))
    @kanji_window.set_handler(:ok,     method(:on_kanji_ok))
    @kanji_window.set_handler(:cancel, method(:on_kanji_cancel))
  end
  #--------------------------------------------------------------------------
  # �� �t���[���X�V
  #--------------------------------------------------------------------------
  def update
    super
    update_input
  end
  #--------------------------------------------------------------------------
  # �� ���͂̍X�V
  #--------------------------------------------------------------------------
  def update_input
    if UseLastName
      unless @kanji_window.active
        return process_left  if Input.trigger?(:L)
        return process_right if Input.trigger?(:R)
      end
      if UseReverseNames
        return process_reverse if Input.trigger?(:X) || Input.trigger?(:Y)
      end
    end
    return process_cancel  if Input.repeat?(:A)
    return process_ok      if Input.trigger?(:Z)
  end
  #--------------------------------------------------------------------------
  # �� �����؂�ւ� : ��
  #--------------------------------------------------------------------------
  def process_left
    if @reverse_name_order
      @kana_window.edit_window = @kanji_window.edit_window = @l_edit_window
      Sound.play_cursor if @f_edit_window.active
      @l_edit_window.activate
      @f_edit_window.deactivate
    else
      @kana_window.edit_window = @kanji_window.edit_window = @f_edit_window
      Sound.play_cursor if @l_edit_window.active
      @f_edit_window.activate
      @l_edit_window.deactivate
    end
    @f_edit_window.refresh
    @l_edit_window.refresh
  end
  #--------------------------------------------------------------------------
  # �� �����؂�ւ� : �E
  #--------------------------------------------------------------------------
  def process_right
    if @reverse_name_order
      @kana_window.edit_window = @kanji_window.edit_window = @f_edit_window
      Sound.play_cursor if @l_edit_window.active
      @f_edit_window.activate
      @l_edit_window.deactivate
    else
      @kana_window.edit_window = @kanji_window.edit_window = @l_edit_window
      Sound.play_cursor if @f_edit_window.active
      @l_edit_window.activate
      @f_edit_window.deactivate
    end
    @f_edit_window.refresh
    @l_edit_window.refresh
  end
  #--------------------------------------------------------------------------
  # �� �����t�]
  #--------------------------------------------------------------------------
  def process_reverse
    @reverse_name_order = !@reverse_name_order
    if @reverse_name_order
      @f_edit_window.x = Graphics.width / 2
      @l_edit_window.x = 0
    else
      @f_edit_window.x = 0
      @l_edit_window.x = Graphics.width / 2
    end
    Sound.play_cursor
  end
  #--------------------------------------------------------------------------
  # �� �R�}���h�E�B���h�E���莞�̏���
  #--------------------------------------------------------------------------
  def process_character(page)
    @kana_window.change_page(page)
    @kana_window.select_last
    @kana_window.activate
  end
  #--------------------------------------------------------------------------
  # �� �e��R�}���h
  #--------------------------------------------------------------------------
  def process_hiragana; process_character(0); end    # ����
  def process_katakana; process_character(1); end    # �J�i
  def process_alphabet; process_character(2); end    # �p��
  def process_kanji;    process_character(3); end    # ����
  #--------------------------------------------------------------------------
  # �� ����
  #--------------------------------------------------------------------------
  alias :nzprism_name_on_input_ok :on_input_ok
  def process_ok
    if UseLastName
      if @f_edit_window.name.empty?
        if @f_edit_window.restore_default
          Sound.play_ok
        else
          Sound.play_buzzer
        end
        unless @kana_window.active or @kanji_window.active
          @command_window.activate
        end
      else
        Sound.play_ok
        @actor.name = @f_edit_window.name
        @actor.last_name  = @l_edit_window.name
        @actor.reverse_name_order = @reverse_name_order
        return_scene
      end
    else
      if @edit_window.name.empty?
        if @edit_window.restore_default
          Sound.play_ok
        else
          Sound.play_buzzer
        end
        unless @kana_window.active or @kanji_window.active
          @command_window.activate
        end
      else
        Sound.play_ok
        nzprism_name_on_input_ok
      end
    end
  end
  #--------------------------------------------------------------------------
  # �� ����
  #--------------------------------------------------------------------------
  def process_cancel
    if UseLastName
      if @f_edit_window.active
        Sound.play_cancel if @f_edit_window.back
      else
        Sound.play_cancel if @l_edit_window.back
      end
    else
      Sound.play_cancel if @edit_window.back
    end
  end
  #--------------------------------------------------------------------------
  # �� �����m����n
  #--------------------------------------------------------------------------
  def on_kana_ok
    if @command_window.current_symbol == :kanji
      if @kana_window.on_kanji_select
        @kanji_window.select_last
        @kanji_window.show
        @kanji_window.activate
        @kana_window.deactivate
      end
    else
      @kana_window.on_name_add if !@kana_window.character.empty?
    end
  end
  #--------------------------------------------------------------------------
  # �� �����m�L�����Z���n
  #--------------------------------------------------------------------------
  def on_kana_cancel
    @command_window.activate
    @kana_window.unselect
  end
  #--------------------------------------------------------------------------
  # �� �����m����n
  #--------------------------------------------------------------------------
  def on_kanji_ok
    @kanji_window.on_name_add if !@kanji_window.character.empty?
  end
  #--------------------------------------------------------------------------
  # �� �����m�L�����Z���n
  #--------------------------------------------------------------------------
  def on_kanji_cancel
    @kana_window.activate
    @kanji_window.unselect
    @kanji_window.hide
  end
end

#==============================================================================
# �� Window_NameInputBase
#------------------------------------------------------------------------------
# �@���O���͉�ʂŁA������I������E�B���h�E�̃X�[�p�[�N���X�ł��B
#==============================================================================

class Window_NameInputBase < Window_Selectable
  #--------------------------------------------------------------------------
  # �� ���J�C���X�^���X�ϐ�
  #--------------------------------------------------------------------------
  attr_writer   :edit_window
  #--------------------------------------------------------------------------
  # �� �I�u�W�F�N�g������
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height, edit_window)
    @page = 0
    super(x, y, width, height)
    @edit_window = edit_window
    @index = 0
    refresh
    update_cursor
    deactivate
    unselect
  end
  #--------------------------------------------------------------------------
  # �� �����̎擾
  #--------------------------------------------------------------------------
  def character
    table[@page][@index]
  end
  #--------------------------------------------------------------------------
  # �� ���ڐ��̎擾
  #--------------------------------------------------------------------------
  def item_max
    table[@page].size
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ̑I������
  #--------------------------------------------------------------------------
  def unselect
    @last_index = @index
    super
  end
  #--------------------------------------------------------------------------
  # �� �Ō�ɑI�񂾍��ڂ�I��
  #--------------------------------------------------------------------------
  def select_last
    select((@last_index >= item_max) ? 0 : @last_index)
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ̕`��
  #--------------------------------------------------------------------------
  def draw_item(index)
    draw_text(item_rect(index), table[@page][index], 1)
  end
  #--------------------------------------------------------------------------
  # �� �y�[�W�ύX
  #--------------------------------------------------------------------------
  def change_page(page)
    @page = page
    refresh
  end
  #--------------------------------------------------------------------------
  # �� ���O�ɕ�����ǉ�
  #--------------------------------------------------------------------------
  def on_name_add
    if @edit_window.add(character)
      Sound.play_ok
    else
      Sound.play_buzzer
    end
  end
  #--------------------------------------------------------------------------
  # �� ����{�^���������ꂽ�Ƃ��̏���
  #--------------------------------------------------------------------------
  def process_ok
    if current_item_enabled?
      Sound.play_ok
      Input.update
      call_ok_handler
    else
      Sound.play_buzzer
    end
  end
  #--------------------------------------------------------------------------
  # �� �J�[�\�������Ɉړ�
  #     wrap : ���b�v�A���E���h����
  #--------------------------------------------------------------------------
  def cursor_down(wrap = false)
    if row_max > 1
      n = @index + col_max
      if n > item_max - 1
        if wrap
          select(n % col_max)
        end
      else
        select(n)
      end
    end
  end
  #--------------------------------------------------------------------------
  # �� �J�[�\������Ɉړ�
  #     wrap : ���b�v�A���E���h����
  #--------------------------------------------------------------------------
  def cursor_up(wrap = false)
    if row_max > 1
      n = @index - col_max
      if n < 0
        if wrap
          n = (row_max - 1) * col_max + @index
          if n > item_max - 1
            select(n - col_max)
          else
            select(n)
          end
        end
      else
        select(n)
      end
    end
  end
  #--------------------------------------------------------------------------
  # �� �J�[�\�����E�Ɉړ�
  #     wrap : ���b�v�A���E���h����
  #--------------------------------------------------------------------------
  def cursor_right(wrap = false)
    if item_max > 1
      n = col_max - 1
      if @index % col_max < n
        if @index == item_max - 1
          select((row_max - 1) * col_max) if wrap
        else
          select(@index + 1)
        end
      elsif wrap
        select(@index - n)
      end
    end
  end
  #--------------------------------------------------------------------------
  # �� �J�[�\�������Ɉړ�
  #     wrap : ���b�v�A���E���h����
  #--------------------------------------------------------------------------
  def cursor_left(wrap = false)
    if item_max > 1
      if @index % col_max > 0
        select(@index - 1)
      elsif wrap
        select([@index + col_max - 1, item_max - 1].min)
      end
    end
  end
end

#==============================================================================
# �� Window_KanaInput
#------------------------------------------------------------------------------
# �@���O���͉�ʂŁA������I������E�B���h�E�ł��B
#==============================================================================

class Window_KanaInput < Window_NameInputBase
  #--------------------------------------------------------------------------
  # �� �萔�i�e����������j
  #--------------------------------------------------------------------------
  lr = "\\C[14]L R \\C[0]"
  lr_short = lr + "�ؑ�"
  lr_long  = lr + "�������͐؂�ւ�"
  lr = Hash.new(lr_short)
  lr[640] = lr_long
  xy = "\\C[14]X Y \\C[0]"
  xy_short = xy + "�t�]"
  xy_long  = xy + "���Ɩ����t�ɂ���"
  xy = Hash.new(xy_short)
  xy[640] = xy_long
  a = " \\C[14]A  \\C[0]"
  a_short = a + "����"
  a_long  = a + "�ꕶ������"
  a = Hash.new(a_short)
  a[640] = a_long
  z = " \\C[14]Z  \\C[0]"
  z_short = z + "����"
  z_long  = z + "���O���͂̊���"
  z = Hash.new(z_short)
  z[640] = z_long
  INSTRUCTION_C = " \\C[14]C  \\C[0]����"
  INSTRUCTION_B = " \\C[14]B  \\C[0]�߂�"
  INSTRUCTIONS_LR = lr
  INSTRUCTIONS_XY = xy
  INSTRUCTIONS_A  = a
  INSTRUCTIONS_Z  = z
  #--------------------------------------------------------------------------
  # �� �����\�i���{��j
  #--------------------------------------------------------------------------
  JAPAN1 = [ '��','��','��','��','��',  '��','��','��','��','��',
             '��','��','��','��','��',  '��','��','��','��','��',
             '��','��','��','��','��',  '��','��','��','��','��',
             '��','��','��','��','��',  '��','��','��','��','��',
             '��','��','��','��','��',  '��','��','��','��','��',
             '��','��','��','��','��',  '��','��','��','��','��',
             '��','��','��','��','��',  '��','��','��','��','��',
             '��','�@','��','�@','��',  '��','�`','�X','�i','�j',
             '��','��','��','��','��',  '�E','�A','�B','�u','�v',
             '��','��','��','��','��',  '��','��','��','��','��']
  JAPAN2 = [ '�A','�C','�E','�G','�I',  '�K','�M','�O','�Q','�S',
             '�J','�L','�N','�P','�R',  '�U','�W','�Y','�[','�]',
             '�T','�V','�X','�Z','�\',  '�_','�a','�d','�f','�h',
             '�^','�`','�c','�e','�g',  '�o','�r','�u','�x','�{',
             '�i','�j','�k','�l','�m',  '�p','�s','�v','�y','�|',
             '�n','�q','�t','�w','�z',  '�@','�B','�D','�F','�H',
             '�}','�~','��','��','��',  '�b','��','��','��','��',
             '��','�@','��','�@','��',  '��','�[','�W','�m','�n',
             '��','��','��','��','��',  '�^','�C','�D','�w','�x',
             '��','��','��','��','��',  '��','��','��','��','��']
  JAPAN3 = [ '�`','�a','�b','�c','�d',  '��','��','��','��','��',
             '�e','�f','�g','�h','�i',  '��','��','��','��','��',
             '�j','�k','�l','�m','�n',  '��','��','��','��','��',
             '�o','�p','�q','�r','�s',  '��','��','��','��','��',
             '�t','�u','�v','�w','�x',  '��','��','��','��','��',
             '�y','�@','�}','��','��',  '��','�@','�c','�g','�h',
             '�O','�P','�Q','�R','�S',  '��','��','��','��','��',
             '�T','�U','�V','�W','�X',  '�_','��','�I','�H','��',
             '��','�{','�|','�~','��',  '��','��','��','��','��',
             '��','��','��','�O','�b',  '��','��','�Q','�G','�F']
  JAPAN4 = [ '��','��','��','��','��',
             '��','��','��','��','��',
             '��','��','��','��','��',
             '��','��','��','��','��',
             '��','��','��','��','��',
             '��','��','��','��','��',
             '��','��','��','��','��',
             '��','�@','��','�@','��',
             '��','��','��','��','��',
             '��']
  #--------------------------------------------------------------------------
  # �� �I�u�W�F�N�g������
  #--------------------------------------------------------------------------
  def initialize(edit_window, kanji_window)
    y = edit_window.y + edit_window.height
    width = Graphics.width - 72
    super(72, y, width, 264, edit_window)
    @kanji_window = kanji_window
  end
  #--------------------------------------------------------------------------
  # �� �����\�̎擾
  #--------------------------------------------------------------------------
  def table
    [JAPAN1, JAPAN2, JAPAN3, JAPAN4]
  end
  #--------------------------------------------------------------------------
  # �� �����̎擾
  #--------------------------------------------------------------------------
  def col_max
    (@page == 3) ? 5 : 10
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ�`�悷���`�̎擾
  #--------------------------------------------------------------------------
  def item_rect(index)
    rect = super
    rect.x = index % col_max * 32 + index % col_max / 5 * 16
    rect.width = 32
    rect
  end
  #--------------------------------------------------------------------------
  # �� �S���ڂ̕`��
  #--------------------------------------------------------------------------
  def draw_all_items
    draw_vert_line(332, system_color, 120)
    draw_instructions
    super
  end
  #--------------------------------------------------------------------------
  # �� �����I�����̏���
  #--------------------------------------------------------------------------
  def on_kanji_select
    unless [36, 38].include?(@index)
      @kanji_window.change_page(@index)
      return true
    else
      return false
    end
  end
  #--------------------------------------------------------------------------
  # �� �������̕`��
  #--------------------------------------------------------------------------
  def draw_vert_line(x, color = normal_color, alpha = 48)
    line_x = x + line_height / 2 - 1
    color.alpha = alpha
    contents.fill_rect(line_x, 0, 2, contents_height, color)
  end
  #--------------------------------------------------------------------------
  # �� �����̕`��
  #--------------------------------------------------------------------------
  def draw_instructions(x = 360)
    width = Graphics.width
    if Scene_Name::UseLastName
      draw_text_ex(x, 0,   INSTRUCTION_C)
      draw_text_ex(x, 36,  INSTRUCTION_B)
      if Scene_Name::UseReverseNames
        draw_text_ex(x, 96,  INSTRUCTIONS_LR[width])
        draw_text_ex(x, 132, INSTRUCTIONS_XY[width])
      else
        draw_text_ex(x, 114, INSTRUCTIONS_LR[width])
      end
      draw_text_ex(x, 180, INSTRUCTIONS_A[width])
      draw_text_ex(x, 216, INSTRUCTIONS_Z[width])
    else
      draw_text_ex(x, 36,  INSTRUCTION_C)
      draw_text_ex(x, 72,  INSTRUCTION_B)
      draw_text_ex(x, 132, INSTRUCTIONS_A[width])
      draw_text_ex(x, 168, INSTRUCTIONS_Z[width])
    end
  end
end

#==============================================================================
# �� Window_KanjiInput
#------------------------------------------------------------------------------
# �@���O���͉�ʂŁA������I������E�B���h�E�ł��B
#==============================================================================

class Window_KanjiInput < Window_NameInputBase
  #--------------------------------------------------------------------------
  # �� �����\�i�����j
  #--------------------------------------------------------------------------
  KANJI_A  = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_I  = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '�@', '�A',
              '�B', '�C', '�D']
  
  KANJI_U  = ['�E', '�F', '�G', '�H', '�I', '�J', '�K', '�L', '�M', '�N', '�O',
              '�P', '�Q', '�R', '�S', '�T', '�U', '�V', '�W', '�X', '�Y', '�Z',
              '�[', '�\', '�]', '�^', '�_']
  
  KANJI_E  = ['�`', '�a', '�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j',
              '�k', '�l', '�m', '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u',
              '�v', '�w', '�x', '�y', '�z', '�{', '�|', '�}', '�~', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_O  = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��']
  
  KANJI_KA = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '�@', '�A', '�B', '�C', '�D', '�E', '�F', '�G', '�H', '�I',
              '�J', '�K', '�L', '�M', '�N', '�O', '�P', '�Q', '�R', '�S', '�T',
              '�U', '�V', '�W', '�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_',
              '�`', '�a', '�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j',
              '�k', '�l', '�m', '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u',
              '�v', '�w', '�x', '�y', '�z', '�{', '�|', '�}', '�~', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��']
  
  KANJI_KI = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '�@', '�A',
              '�B', '�C', '�D', '�E', '�F', '�G', '�H', '�I', '�J', '�K', '�L',
              '�M', '�N', '�O', '�P', '�Q', '�R', '�S', '�T', '�U', '�V', '�W',
              '�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_', '�`', '�a', '�b',
              '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j', '�k', '�l', '�m',
              '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u', '�v', '�w', '�x',
              '�y', '�z', '�{', '�|', '�}', '�~', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��']
  
  KANJI_KU = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '�@', '�A', '�B', '�C', '�D', '�E', '�F',
              '�G', '�H', '�I', '�J', '�K', '�L', '�M', '�N', '�O', '�P', '�Q',
              '�R', '�S']
  
  KANJI_KE = ['�T', '�U', '�V', '�W', '�X', '�Y', '�Z', '�[', '�\', '�]', '�^',
              '�_', '�`', '�a', '�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i',
              '�j', '�k', '�l', '�m', '�n', '�o', '�p', '�q', '�r', '�s', '�t',
              '�u', '�v', '�w', '�x', '�y', '�z', '�{', '�|', '�}', '�~', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_KO = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '�@', '�A', '�B', '�C', '�D', '�E',
              '�F', '�G', '�H', '�I', '�J', '�K', '�L', '�M', '�N', '�O', '�P',
              '�Q', '�R', '�S', '�T', '�U', '�V', '�W', '�X', '�Y', '�Z', '�[',
              '�\', '�]', '�^', '�_', '�`', '�a', '�b', '�c', '�d', '�e', '�f',
              '�g', '�h', '�i', '�j', '�k', '�l', '�m', '�n', '�o', '�p', '�q',
              '�r', '�s', '�t', '�u', '�v', '�w', '�x', '�y', '�z', '�{', '�|',
              '�}', '�~', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_SA = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�@',
              '�A', '�B', '�C', '�D', '�E', '�F', '�G', '�H', '�I', '�J', '�K',
              '�L', '�M', '�N', '�O', '�P', '�Q', '�R', '�S', '�T', '�U', '�V',
              '�W', '�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_', '�`', '�a',
              '�b', '�c']
  
  KANJI_SI = ['�d', '�e', '�f', '�g', '�h', '�i', '�j', '�k', '�l', '�m', '�n',
              '�o', '�p', '�q', '�r', '�s', '�t', '�u', '�v', '�w', '�x', '�y',
              '�z', '�{', '�|', '�}', '�~', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '�@', '�A',
              '�B', '�C', '�D', '�E', '�F', '�G', '�H', '�I', '�J', '�K', '�L',
              '�M', '�N', '�O', '�P', '�Q', '�R', '�S', '�T', '�U', '�V', '�W',
              '�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_', '�`', '�a', '�b',
              '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j', '�k', '�l', '�m',
              '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u', '�v', '�w', '�x',
              '�y', '�z', '�{', '�|', '�}', '�~', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�@',
              '�A', '�B', '�C', '�D', '�E', '�F', '�G', '�H', '�I', '�J', '�K',
              '�L', '�M', '�N', '�O', '�P', '�Q', '�R', '�S', '�T', '�U', '�V',
              '�W', '�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_', '�`', '�a',
              '�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j', '�k', '�l',
              '�m', '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u', '�v', '�w',
              '�x']
  
  KANJI_SU = ['�y', '�z', '�{', '�|', '�}', '�~', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_SE = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '�@', '�A', '�B', '�C', '�D', '�E', '�F', '�G',
              '�H', '�I', '�J', '�K', '�L', '�M', '�N', '�O', '�P', '�Q', '�R',
              '�S', '�T', '�U', '�V', '�W']
  
  KANJI_SO = ['�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_', '�`', '�a', '�b',
              '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j', '�k', '�l', '�m',
              '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u', '�v', '�w', '�x',
              '�y', '�z', '�{', '�|', '�}', '�~', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_TA = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '�@',
              '�A', '�B', '�C', '�D', '�E', '�F', '�G', '�H', '�I', '�J', '�K',
              '�L', '�M', '�N', '�O', '�P', '�Q', '�R', '�S', '�T', '�U', '�V',
              '�W', '�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_', '�`', '�a',
              '�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j', '�k']
  
  KANJI_TI = ['�l', '�m', '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u', '�v',
              '�w', '�x', '�y', '�z', '�{', '�|', '�}', '�~', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_TU = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_TE = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '�@', '�A', '�B', '�C',
              '�D', '�E', '�F', '�G', '�H', '�I', '�J', '�K', '�L', '�M', '�N',
              '�O', '�P', '�Q', '�R', '�S', '�T', '�U', '�V', '�W', '�X', '�Y',
              '�Z', '�[', '�\', '�]', '�^', '�_', '�`', '�a', '�b', '�c', '�d']
  
  KANJI_TO = ['�e', '�f', '�g', '�h', '�i', '�j', '�k', '�l', '�m', '�n', '�o',
              '�p', '�q', '�r', '�s', '�t', '�u', '�v', '�w', '�x', '�y', '�z',
              '�{', '�|', '�}', '�~', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_NA = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_NI = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '�@', '�A', '�B', '�C', '�D', '�E', '�F']
  
  KANJI_NU = ['�G']
  
  KANJI_NE = ['�H', '�I', '�J', '�K', '�L', '�M', '�N', '�O', '�P', '�Q', '�R',
              '�S']
  
  KANJI_NO = ['�T', '�U', '�V', '�W', '�X', '�Y', '�Z', '�[', '�\', '�]', '�^',
              '�_', '�`', '�a']
  
  KANJI_HA = ['�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j', '�k', '�l',
              '�m', '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u', '�v', '�w',
              '�x', '�y', '�z', '�{', '�|', '�}', '�~', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_HI = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '�@', '�A', '�B', '�C', '�D', '�E', '�F', '�G',
              '�H', '�I', '�J', '�K', '�L', '�M', '�N', '�O', '�P', '�Q', '�R',
              '�S', '�T', '�U', '�V', '�W', '�X', '�Y', '�Z', '�[', '�\', '�]',
              '�^', '�_', '�`', '�a', '�b', '�c', '�d', '�e', '�f', '�g', '�h',
              '�i', '�j', '�k', '�l', '�m', '�n', '�o', '�p', '�q', '�r']
  
  KANJI_HU = ['�s', '�t', '�u', '�v', '�w', '�x', '�y', '�z', '�{', '�|', '�}',
              '�~', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��']
  
  KANJI_HE = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��']
  
  KANJI_HO = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '�@', '�A', '�B', '�C', '�D', '�E', '�F', '�G', '�H', '�I',
              '�J', '�K', '�L', '�M', '�N', '�O', '�P', '�Q', '�R', '�S', '�T',
              '�U', '�V', '�W', '�X', '�Y', '�Z', '�[', '�\', '�]', '�^', '�_',
              '�`', '�a', '�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j',
              '�k', '�l', '�m', '�n', '�o', '�p', '�q', '�r', '�s', '�t', '�u',
              '�v', '�w', '�x', '�y', '�z', '�{', '�|', '�}', '�~']
  
  KANJI_MA = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_MI = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��']
  
  KANJI_MU = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_ME = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��']
  
  KANJI_MO = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��']
  
  KANJI_YA = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_YU = ['��', '��', '��', '��', '�@', '�A', '�B', '�C', '�D', '�E', '�F',
              '�G', '�H', '�I', '�J', '�K', '�L', '�M', '�N', '�O', '�P', '�Q',
              '�R', '�S', '�T', '�U', '�V', '�W', '�X', '�Y', '�Z', '�[']
  
  KANJI_YO = ['�\', '�]', '�^', '�_', '�`', '�a', '�b', '�c', '�d', '�e', '�f',
              '�g', '�h', '�i', '�j', '�k', '�l', '�m', '�n', '�o', '�p', '�q',
              '�r', '�s', '�t', '�u', '�v', '�w', '�x', '�y', '�z', '�{', '�|',
              '�}', '�~', '��', '��', '��', '��', '��']
  
  KANJI_RA = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_RI = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��']
  
  KANJI_RU = ['��', '��', '��', '��', '��']
  
  KANJI_RE = ['��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '��', '��', '��',
              '��', '��', '��', '��', '��', '��', '��', '��', '�@', '�A', '�B']
  
  KANJI_RO = ['�C', '�D', '�E', '�F', '�G', '�H', '�I', '�J', '�K', '�L', '�M',
              '�N', '�O', '�P', '�Q', '�R', '�S', '�T', '�U', '�V', '�W', '�X',
              '�Y', '�Z', '�[', '�\', '�]', '�^', '�_']
  
  KANJI_WA = ['�`', '�a', '�b', '�c', '�d', '�e', '�f', '�g', '�h', '�i', '�j',
              '�k', '�l', '�m', '�n', '�o', '�p', '�q', '�r']
  #--------------------------------------------------------------------------
  # �� �I�u�W�F�N�g������
  #--------------------------------------------------------------------------
  def initialize(edit_window)
    y = edit_window.y + edit_window.height
    width = Graphics.width - 240
    super(240, y, width, 264, edit_window)
    self.z = 200
    if defined?(Window_NZPrism_Option)
      self.back_opacity = 204 + $game_system.w_opacity / 5
    end
    hide
  end
  #--------------------------------------------------------------------------
  # �� �����\�̎擾
  #--------------------------------------------------------------------------
  def table
    [KANJI_A,  KANJI_I,  KANJI_U,  KANJI_E,  KANJI_O, 
     KANJI_KA, KANJI_KI, KANJI_KU, KANJI_KE, KANJI_KO, 
     KANJI_SA, KANJI_SI, KANJI_SU, KANJI_SE, KANJI_SO, 
     KANJI_TA, KANJI_TI, KANJI_TU, KANJI_TE, KANJI_TO, 
     KANJI_NA, KANJI_NI, KANJI_NU, KANJI_NE, KANJI_NO, 
     KANJI_HA, KANJI_HI, KANJI_HU, KANJI_HE, KANJI_HO, 
     KANJI_MA, KANJI_MI, KANJI_MU, KANJI_ME, KANJI_MO, 
     KANJI_YA, nil,      KANJI_YU, nil,      KANJI_YO, 
     KANJI_RA, KANJI_RI, KANJI_RU, KANJI_RE, KANJI_RO, 
     KANJI_WA]
  end
  #--------------------------------------------------------------------------
  # �� �����̎擾
  #--------------------------------------------------------------------------
  def col_max
    width / 32
  end
  #--------------------------------------------------------------------------
  # �� ���ɍ��ڂ����ԂƂ��̋󔒂̕����擾
  #--------------------------------------------------------------------------
  def spacing
    0
  end
  #--------------------------------------------------------------------------
  # �� ���t���b�V��
  #--------------------------------------------------------------------------
  def refresh
    create_contents
    super
  end
end

#==============================================================================
# �� Window_NameCommand
#------------------------------------------------------------------------------
# �@���O���͉�ʂŁA�S�̂Ɋւ��I��������E�B���h�E�ł��B
#==============================================================================

class Window_NameCommand < Window_Command
  #--------------------------------------------------------------------------
  # �� �萔
  #--------------------------------------------------------------------------
  HIRAGANA = "����"
  KATAKANA = "�J�i"
  ALPHABET = "�p��"
  KANJI    = "����"
  OK       = "����"
  #--------------------------------------------------------------------------
  # �� �I�u�W�F�N�g������
  #--------------------------------------------------------------------------
  def initialize(input_window)
    super(0, input_window.y)
    @input_window = input_window
  end
  #--------------------------------------------------------------------------
  # �� �E�B���h�E���̎擾
  #--------------------------------------------------------------------------
  def window_width
    72
  end
  #--------------------------------------------------------------------------
  # �� ���ڂ̕`��
  #--------------------------------------------------------------------------
  def draw_item(index)
    color = (index == 4) ? system_color : normal_color
    change_color(color, command_enabled?(index))
    draw_text(item_rect_for_text(index), command_name(index), alignment)
  end
  #--------------------------------------------------------------------------
  # �� �R�}���h���X�g�̍쐬
  #--------------------------------------------------------------------------
  def make_command_list
    add_command(HIRAGANA, :hiragana)
    add_command(KATAKANA, :katakana)
    add_command(ALPHABET, :alphabet)
    add_command(KANJI,    :kanji)
    add_command(OK,       :ok)
  end
  #--------------------------------------------------------------------------
  # �� �����L�����Z���Ȃǂ̃n���h�����O����
  #--------------------------------------------------------------------------
  def process_handling
    return unless open? && active
    return process_ok     if ok_enabled?     && Input.trigger?(:C)
    return process_cancel if cancel_enabled? && Input.repeat?(:B)
  end
  #--------------------------------------------------------------------------
  # �� �J�[�\���̈ړ�����
  #--------------------------------------------------------------------------
  def process_cursor_move
    return unless cursor_movable?
    last_index = @index
    cursor_down (Input.trigger?(:DOWN)) if Input.repeat?(:DOWN)
    cursor_up   (Input.trigger?(:UP))   if Input.repeat?(:UP)
    if @index != last_index
      Sound.play_cursor
      @input_window.change_page(@index) unless @index == 4
    end
  end
  #--------------------------------------------------------------------------
  # �� �L�����Z���{�^���������ꂽ�Ƃ��̏���
  #--------------------------------------------------------------------------
  def process_cancel
    Input.update
    call_cancel_handler
  end
end
