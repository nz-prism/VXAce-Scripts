#==============================================================================
# š –¼‘O“ü—Í‰ü‘¢
#------------------------------------------------------------------------------
# ver. 1.0.2
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/NameInput.rb
#------------------------------------------------------------------------------
# ¡ “±“ü•û–@
# 1. ƒXƒNƒŠƒvƒgƒGƒfƒBƒ^‚É‚ÄAu¥ ‘fŞv‚Ìu( ‚±‚±‚É’Ç‰Á )vˆÈ‰º‚ÉV‹KƒZƒNƒVƒ‡ƒ“
#    ‚ğ‘}“ü‚µ‚Ä‚­‚¾‚³‚¢B
#    uƒIƒvƒVƒ‡ƒ“‰æ–Êv‚ğ“±“ü‚µ‚Ä‚¢‚éê‡A‚»‚Ì‰º‚É‘}“ü‚µ‚Ä‚­‚¾‚³‚¢B
# 2. 1 ‚ÌƒZƒNƒVƒ‡ƒ“‚É‚±‚ÌƒXƒNƒŠƒvƒg‘S‘Ì‚ğ“\‚è•t‚¯‚Ä‚­‚¾‚³‚¢B
# 3. •K—v‚È‚çˆÈ‰º‚ÌƒJƒXƒ^ƒ}ƒCƒYƒZƒNƒVƒ‡ƒ“‚É‚ÄA‚¨D‚İ‚Ìİ’è‚É•ÏX‚µ‚Ä‚­‚¾‚³‚¢B
# 
# ‚±‚ÌƒXƒNƒŠƒvƒg‚Í 640 * 480 ‚Ì‰ğ‘œ“x‚É‚à‘Î‰‚µ‚Ä‚¨‚èA‰ğ‘œ“x‚ª‘å‚«‚¢‚Ù‚¤‚ª‚æ‚è
# Œ©‚â‚·‚­‚È‚è‚Ü‚·B
# 
# 
# ¡ ƒAƒNƒ^[‚Ìu©vE©–¼‚Ì‡˜‚É‚Â‚¢‚Ä
# @ƒAƒNƒ^[‚ÉƒfƒtƒHƒ‹ƒg‚Ìu©v‚ğİ’è‚·‚éê‡AƒAƒNƒ^[‚Ìƒƒ‚—“‚É
# u *©[R“c] v‚Ì‚æ‚¤‚É“ü—Í‚·‚ê‚Îİ’è‚Å‚«‚Ü‚·B
# @“¯—l‚ÉAƒAƒNƒ^[‚Ìƒƒ‚—“‚É
# u *©–¼‹t“] v‚Æ“ü—Í‚·‚é‚ÆA‚»‚ÌƒAƒNƒ^[‚Íu©¨–¼v‚Ì‡˜‚ªƒfƒtƒHƒ‹ƒg‚Æ‚È‚è
# ‚Ü‚·i‰½‚à“ü—Í‚µ‚È‚¯‚ê‚Îu–¼¨©v‚Ì‡˜‚ªƒfƒtƒHƒ‹ƒg‚Å‚·jB
# 
# ¡ §Œä•¶š‚É‚Â‚¢‚Ä
# @‚±‚ÌƒXƒNƒŠƒvƒg‚ğ“±“ü‚·‚é‚±‚Æ‚É‚æ‚èAˆÈ‰º‚Ì§Œä•¶š‚Ìd—l‚ªƒfƒtƒHƒ‹ƒg‚©‚ç•ÏX
# ‚³‚ê‚Ü‚·B‘å•¶š‚©¬•¶š‚©A”¼Šp•¶š‚©‘SŠp•¶š‚©‚É‚æ‚Á‚Ä•\¦‚³‚ê‚é•¶š‚ª•Ï‰»‚·
# ‚é‚æ‚¤‚É‚È‚è‚Ü‚·B
# @‚È‚¨ƒJƒXƒ^ƒ}ƒCƒYƒZƒNƒVƒ‡ƒ“‚É‚Äu©v‚ğg—p‚µ‚È‚¢‚±‚Æ‚ğ‘I‘ğ‚µ‚½ê‡‚ÍA‘å•¶
# šE¬•¶šA”¼ŠpE‘SŠp‚¢‚¸‚ê‚à‹æ•Ê‚È‚­ƒfƒtƒHƒ‹ƒg’Ê‚è‚É•\¦‚³‚ê‚Ü‚·B
# 
# 
# @\N[n]  i”¼Špj : ƒAƒNƒ^[ n ”Ô‚Ìƒtƒ‹ƒl[ƒ€‚É’u‚«Š·‚¦‚Ü‚·B
# @\‚m[n] i‘SŠpj : ƒAƒNƒ^[ n ”Ô‚Ìƒtƒ‹ƒl[ƒ€‚É’u‚«Š·‚¦‚Ü‚·B
# 
# @\n[n]  i”¼Špj : ƒAƒNƒ^[ n ”Ô‚Ìu–¼v‚É’u‚«Š·‚¦‚Ü‚·B
# @\‚[n] i‘SŠpj : ƒAƒNƒ^[ n ”Ô‚Ìu©v‚É’u‚«Š·‚¦‚Ü‚·B
# 
# 
# @\P[n]  i”¼Špj : ƒp[ƒeƒBƒƒ“ƒo[ n ”Ôi•À‚Ñ‡j‚Ìƒtƒ‹ƒl[ƒ€‚É’u‚«Š·‚¦‚Ü‚·B
# @\‚o[n] i‘SŠpj : ƒp[ƒeƒBƒƒ“ƒo[ n ”Ôi•À‚Ñ‡j‚Ìƒtƒ‹ƒl[ƒ€‚É’u‚«Š·‚¦‚Ü‚·B
# 
# @\p[n]  i”¼Špj : ƒp[ƒeƒBƒƒ“ƒo[ n ”Ôi•À‚Ñ‡j‚Ìu–¼v‚É’u‚«Š·‚¦‚Ü‚·B
# @\‚[n] i‘SŠpj : ƒp[ƒeƒBƒƒ“ƒo[ n ”Ôi•À‚Ñ‡j‚Ìu©v‚É’u‚«Š·‚¦‚Ü‚·B
#------------------------------------------------------------------------------
# –{‘fŞ‚ÍMITƒ‰ƒCƒZƒ“ƒX‚É‚ÄƒŠƒŠ[ƒX‚³‚ê‚Ä‚¢‚Ü‚·B
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2014/04/21 1.0.2 ”÷ƒoƒO‚ÌC³
# 2014/04/20 1.0.1 §Œä•¶š‚ğu©v‚É‘Î‰‚³‚¹‚é‚È‚ÇA”‹@”\’Ç‰Á
# 2012/11/04 1.0.0 ŒöŠJ
#==============================================================================

class Scene_Name
#==============================================================================
# š ƒJƒXƒ^ƒ}ƒCƒYƒZƒNƒVƒ‡ƒ“
#------------------------------------------------------------------------------
# ˆÈ‰º‚ÌŠeİ’è‚ğƒ†[ƒU[‚ÌD‚İ‚É‰‚¶‚Ä•ÏX‚Å‚«‚Ü‚·B = ‚Ì‰E•Ó‚Ì”’l‚â•¶š—ñ‚ğ
# ”CˆÓ‚É•ÏX‚µ‚Ä‚­‚¾‚³‚¢B " " ‚ÅˆÍ‚Ü‚ê‚½•”•ªˆÈŠO‚Í‘SŠp•¶š‚ğ“ü—Í‚µ‚È‚¢‚Å‚­‚¾‚³
# ‚¢B [ ] ‚â { } A " " ‚â , ‚È‚Ç‚Ì‹L†‚ğÁ‚³‚È‚¢‚Å‚­‚¾‚³‚¢B
#==============================================================================

  # ©‚ğg—p‚·‚é‚©‚Ç‚¤‚©
  # g—p‚µ‚È‚¢‚È‚ç true ‚ğ false ‚É‘‚«Š·‚¦‚Ä‚­‚¾‚³‚¢
  UseLastName = true
  
  
  # ˆÈ‰º‚Í©‚ğg—p‚·‚éÛ‚ÌƒIƒvƒVƒ‡ƒ“‚Å‚·
  
  # ƒtƒ‹ƒl[ƒ€•\¦A©–¼‚ğ‹æØ‚é•¶š
  # ‹æØ‚è•¶š‚ğg—p‚¹‚¸‚É©–¼‚ğ˜A‘±‚µ‚Ä•\¦‚³‚¹‚½‚¢ê‡A "" i‹ó•¶š—ñj‚É‚µ‚Ä
  # ‚­‚¾‚³‚¢
  
  # u–¼¨©v‡‚Ì‚Æ‚«i—á : ƒWƒ‡ƒ“[–¼]EƒXƒ~ƒX[©]j
  StringBetweenNames1 = "E"
  
  # u©¨–¼v‡‚Ì‚Æ‚«i—á : R“c[©]@‘¾˜Y[–¼]j
  StringBetweenNames2 = "@"
  
  
  # u©‚Æ–¼‚ğ‹t‚É‚·‚évƒRƒ}ƒ“ƒh‚ğg—p‚·‚é‚©‚Ç‚¤‚©
  # g—p‚µ‚È‚¢‚È‚ç true ‚ğ false ‚É‘‚«Š·‚¦‚Ä‚­‚¾‚³‚¢
  UseReverseNames = true
  
  
  # í‚Éu–¼v‚©‚ç“ü—Í‚ğn‚ß‚é‚©‚Ç‚¤‚©
  # u©–¼‹t“]vƒAƒNƒ^[‚Ìê‡‚Íu©v‚©‚ç“ü—ÍŠJn‚É‚·‚é‚È‚çA
  # true ‚ğ false ‚É‘‚«Š·‚¦‚Ä‚­‚¾‚³‚¢
  FirstNameStart = true
  
  
  
#------------------------------------------------------------------------------
# š ƒJƒXƒ^ƒ}ƒCƒY‚±‚±‚Ü‚Å
#------------------------------------------------------------------------------
end
#------------------------------------------------------------------------------
class Game_Actor
  attr_accessor :last_name                # ©
  attr_accessor :reverse_name_order       # ©–¼‹t“]ƒtƒ‰ƒO
  #--------------------------------------------------------------------------
  # › ƒZƒbƒgƒAƒbƒv
  #--------------------------------------------------------------------------
  alias :nzprism_name_setup :setup
  def setup(actor_id)
    nzprism_name_setup(actor_id)
    note = actor.note
    if /\*(?:©|[–¼•c]š|(?:ƒ‰ƒXƒg|ƒtƒ@ƒ~ƒŠ[)ƒl[ƒ€)\s*\[(.*)\]/ =~ note
      @last_name = $1
    else
      @last_name = ""
    end
    @reverse_name_order = !!(/\*©–¼‹t“]/ =~ note)
  end
  #--------------------------------------------------------------------------
  # š ³®–¼Ì‚Ìæ“¾
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
  # › §Œä•¶š‚Ì–‘O•ÏŠ·
  #    ÀÛ‚Ì•`‰æ‚ğn‚ß‚é‘O‚ÉAŒ´‘¥‚Æ‚µ‚Ä•¶š—ñ‚É•Ï‚í‚é‚à‚Ì‚¾‚¯‚ğ’u‚«Š·‚¦‚éB
  #    •¶šu\v‚ÍƒGƒXƒP[ƒv•¶ši\ej‚É•ÏŠ·B
  #--------------------------------------------------------------------------
  def convert_escape_characters(text)
    result = text.to_s.clone
    result.gsub!(/\\/)            { "\e" }
    result.gsub!(/\e\e/)          { "\\" }
    result.gsub!(/\eV\[(\d+)\]/i) { $game_variables[$1.to_i] }
    result.gsub!(/\eV\[(\d+)\]/i) { $game_variables[$1.to_i] }
    result.gsub!(/\eN\[(\d+)\]/)  { actor_name($1.to_i, 2) }
    result.gsub!(/\e‚m\[(\d+)\]/) { actor_name($1.to_i, 2) }
    result.gsub!(/\en\[(\d+)\]/)  { actor_name($1.to_i, 0) }
    result.gsub!(/\e‚\[(\d+)\]/) { actor_name($1.to_i, 1) }
    result.gsub!(/\eP\[(\d+)\]/)  { party_member_name($1.to_i, 2) }
    result.gsub!(/\e‚o\[(\d+)\]/) { party_member_name($1.to_i, 2) }
    result.gsub!(/\ep\[(\d+)\]/)  { party_member_name($1.to_i, 0) }
    result.gsub!(/\e‚\[(\d+)\]/) { party_member_name($1.to_i, 1) }
    result.gsub!(/\eG/i)          { Vocab::currency_unit }
    result
  end
  #--------------------------------------------------------------------------
  # › ƒAƒNƒ^[ n ”Ô‚Ì–¼‘O‚ğæ“¾
  #--------------------------------------------------------------------------
  alias :nzprism_name_actor_name :actor_name
  def actor_name(n, type = 0)
    return nzprism_name_actor_name(n) if type == 0 or !Scene_Name::UseLastName
    return "" unless actor = (n > 0) ? $game_actors[n] : nil
    return (type == 2) ? actor.full_name : actor.last_name
  end
  #--------------------------------------------------------------------------
  # › ƒp[ƒeƒBƒƒ“ƒo[ n ”Ô‚Ì–¼‘O‚ğæ“¾
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
  # ™ –¼‘O‚Ì•`‰æ
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
  # › ƒuƒƒbƒN 1 ‚Ì•`‰æ
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
  # › ƒIƒuƒWƒFƒNƒg‰Šú‰»
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
  # ™ •W€ƒpƒfƒBƒ“ƒOƒTƒCƒY‚Ìæ“¾
  #--------------------------------------------------------------------------
  alias :nzprism_name_standard_padding :standard_padding
  def standard_padding
    Scene_Name::UseLastName ? 8 : nzprism_name_standard_padding
  end
  #--------------------------------------------------------------------------
  # › •¶š‚Ì•‚ğæ“¾
  #--------------------------------------------------------------------------
  def char_width
    text_size("‚ ").width 
  end
  #--------------------------------------------------------------------------
  # › –¼‘O‚ğ•`‰æ‚·‚é¶’[‚ÌÀ•W‚ğæ“¾
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
  # › €–Ú‚ğ•`‰æ‚·‚é‹éŒ`‚Ìæ“¾
  #--------------------------------------------------------------------------
  alias :nzprism_name_item_rect :item_rect
  def item_rect(index)
    rect = nzprism_name_item_rect(index)
    rect.y = 12 if Scene_Name::UseLastName
    rect
  end
  #--------------------------------------------------------------------------
  # › ƒŠƒtƒŒƒbƒVƒ…
  #--------------------------------------------------------------------------
  alias :nzprism_name_refresh :refresh
  def refresh
    if Scene_Name::UseLastName
      contents.clear
      str = @last ? "©" : "–¼"
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
  # › ŠJnˆ—
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
  # ™ ƒtƒŒ[ƒ€XV
  #--------------------------------------------------------------------------
  def update
    super
    update_input
  end
  #--------------------------------------------------------------------------
  # š “ü—Í‚ÌXV
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
  # š ©–¼Ø‚è‘Ö‚¦ : ¶
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
  # š ©–¼Ø‚è‘Ö‚¦ : ‰E
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
  # š ©–¼‹t“]
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
  # š ƒRƒ}ƒ“ƒhƒEƒBƒ“ƒhƒEŒˆ’è‚Ìˆ—
  #--------------------------------------------------------------------------
  def process_character(page)
    @kana_window.change_page(page)
    @kana_window.select_last
    @kana_window.activate
  end
  #--------------------------------------------------------------------------
  # š ŠeíƒRƒ}ƒ“ƒh
  #--------------------------------------------------------------------------
  def process_hiragana; process_character(0); end    # ‚©‚È
  def process_katakana; process_character(1); end    # ƒJƒi
  def process_alphabet; process_character(2); end    # ‰p”
  def process_kanji;    process_character(3); end    # Š¿š
  #--------------------------------------------------------------------------
  # š Š®—¹
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
  # š Á‹
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
  # š ‰¼–¼mŒˆ’èn
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
  # š ‰¼–¼mƒLƒƒƒ“ƒZƒ‹n
  #--------------------------------------------------------------------------
  def on_kana_cancel
    @command_window.activate
    @kana_window.unselect
  end
  #--------------------------------------------------------------------------
  # š Š¿šmŒˆ’èn
  #--------------------------------------------------------------------------
  def on_kanji_ok
    @kanji_window.on_name_add if !@kanji_window.character.empty?
  end
  #--------------------------------------------------------------------------
  # š Š¿šmƒLƒƒƒ“ƒZƒ‹n
  #--------------------------------------------------------------------------
  def on_kanji_cancel
    @kana_window.activate
    @kanji_window.unselect
    @kanji_window.hide
  end
end

#==============================================================================
# š Window_NameInputBase
#------------------------------------------------------------------------------
# @–¼‘O“ü—Í‰æ–Ê‚ÅA•¶š‚ğ‘I‘ğ‚·‚éƒEƒBƒ“ƒhƒE‚ÌƒX[ƒp[ƒNƒ‰ƒX‚Å‚·B
#==============================================================================

class Window_NameInputBase < Window_Selectable
  #--------------------------------------------------------------------------
  # œ ŒöŠJƒCƒ“ƒXƒ^ƒ“ƒX•Ï”
  #--------------------------------------------------------------------------
  attr_writer   :edit_window
  #--------------------------------------------------------------------------
  # œ ƒIƒuƒWƒFƒNƒg‰Šú‰»
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
  # œ •¶š‚Ìæ“¾
  #--------------------------------------------------------------------------
  def character
    table[@page][@index]
  end
  #--------------------------------------------------------------------------
  # œ €–Ú”‚Ìæ“¾
  #--------------------------------------------------------------------------
  def item_max
    table[@page].size
  end
  #--------------------------------------------------------------------------
  # œ €–Ú‚Ì‘I‘ğ‰ğœ
  #--------------------------------------------------------------------------
  def unselect
    @last_index = @index
    super
  end
  #--------------------------------------------------------------------------
  # œ ÅŒã‚É‘I‚ñ‚¾€–Ú‚ğ‘I‘ğ
  #--------------------------------------------------------------------------
  def select_last
    select((@last_index >= item_max) ? 0 : @last_index)
  end
  #--------------------------------------------------------------------------
  # œ €–Ú‚Ì•`‰æ
  #--------------------------------------------------------------------------
  def draw_item(index)
    draw_text(item_rect(index), table[@page][index], 1)
  end
  #--------------------------------------------------------------------------
  # œ ƒy[ƒW•ÏX
  #--------------------------------------------------------------------------
  def change_page(page)
    @page = page
    refresh
  end
  #--------------------------------------------------------------------------
  # œ –¼‘O‚É•¶š‚ğ’Ç‰Á
  #--------------------------------------------------------------------------
  def on_name_add
    if @edit_window.add(character)
      Sound.play_ok
    else
      Sound.play_buzzer
    end
  end
  #--------------------------------------------------------------------------
  # œ Œˆ’èƒ{ƒ^ƒ“‚ª‰Ÿ‚³‚ê‚½‚Æ‚«‚Ìˆ—
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
  # œ ƒJ[ƒ\ƒ‹‚ğ‰º‚ÉˆÚ“®
  #     wrap : ƒ‰ƒbƒvƒAƒ‰ƒEƒ“ƒh‹–‰Â
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
  # œ ƒJ[ƒ\ƒ‹‚ğã‚ÉˆÚ“®
  #     wrap : ƒ‰ƒbƒvƒAƒ‰ƒEƒ“ƒh‹–‰Â
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
  # œ ƒJ[ƒ\ƒ‹‚ğ‰E‚ÉˆÚ“®
  #     wrap : ƒ‰ƒbƒvƒAƒ‰ƒEƒ“ƒh‹–‰Â
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
  # œ ƒJ[ƒ\ƒ‹‚ğ¶‚ÉˆÚ“®
  #     wrap : ƒ‰ƒbƒvƒAƒ‰ƒEƒ“ƒh‹–‰Â
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
# š Window_KanaInput
#------------------------------------------------------------------------------
# @–¼‘O“ü—Í‰æ–Ê‚ÅA•¶š‚ğ‘I‘ğ‚·‚éƒEƒBƒ“ƒhƒE‚Å‚·B
#==============================================================================

class Window_KanaInput < Window_NameInputBase
  #--------------------------------------------------------------------------
  # œ ’è”iŠe‘€ìà–¾•¶j
  #--------------------------------------------------------------------------
  lr = "\\C[14]L R \\C[0]"
  lr_short = lr + "Ø‘Ö"
  lr_long  = lr + "©–¼“ü—ÍØ‚è‘Ö‚¦"
  lr = Hash.new(lr_short)
  lr[640] = lr_long
  xy = "\\C[14]X Y \\C[0]"
  xy_short = xy + "‹t“]"
  xy_long  = xy + "©‚Æ–¼‚ğ‹t‚É‚·‚é"
  xy = Hash.new(xy_short)
  xy[640] = xy_long
  a = " \\C[14]A  \\C[0]"
  a_short = a + "Á‹"
  a_long  = a + "ˆê•¶šÁ‹"
  a = Hash.new(a_short)
  a[640] = a_long
  z = " \\C[14]Z  \\C[0]"
  z_short = z + "Š®—¹"
  z_long  = z + "–¼‘O“ü—Í‚ÌŠ®—¹"
  z = Hash.new(z_short)
  z[640] = z_long
  INSTRUCTION_C = " \\C[14]C  \\C[0]Œˆ’è"
  INSTRUCTION_B = " \\C[14]B  \\C[0]–ß‚é"
  INSTRUCTIONS_LR = lr
  INSTRUCTIONS_XY = xy
  INSTRUCTIONS_A  = a
  INSTRUCTIONS_Z  = z
  #--------------------------------------------------------------------------
  # œ •¶š•\i“ú–{Œêj
  #--------------------------------------------------------------------------
  JAPAN1 = [ '‚ ','‚¢','‚¤','‚¦','‚¨',  '‚ª','‚¬','‚®','‚°','‚²',
             '‚©','‚«','‚­','‚¯','‚±',  '‚´','‚¶','‚¸','‚º','‚¼',
             '‚³','‚µ','‚·','‚¹','‚»',  '‚¾','‚À','‚Ã','‚Å','‚Ç',
             '‚½','‚¿','‚Â','‚Ä','‚Æ',  '‚Î','‚Ñ','‚Ô','‚×','‚Ú',
             '‚È','‚É','‚Ê','‚Ë','‚Ì',  '‚Ï','‚Ò','‚Õ','‚Ø','‚Û',
             '‚Í','‚Ğ','‚Ó','‚Ö','‚Ù',  '‚Ÿ','‚¡','‚£','‚¥','‚§',
             '‚Ü','‚İ','‚Ş','‚ß','‚à',  '‚Á','‚á','‚ã','‚å','‚ì',
             '‚â','@','‚ä','@','‚æ',  '‚ñ','`','X','i','j',
             '‚ç','‚è','‚é','‚ê','‚ë',  'E','A','B','u','v',
             '‚í','‚î','ƒ”','‚ï','‚ğ',  '›','¢',' ','','™']
  JAPAN2 = [ 'ƒA','ƒC','ƒE','ƒG','ƒI',  'ƒK','ƒM','ƒO','ƒQ','ƒS',
             'ƒJ','ƒL','ƒN','ƒP','ƒR',  'ƒU','ƒW','ƒY','ƒ[','ƒ]',
             'ƒT','ƒV','ƒX','ƒZ','ƒ\',  'ƒ_','ƒa','ƒd','ƒf','ƒh',
             'ƒ^','ƒ`','ƒc','ƒe','ƒg',  'ƒo','ƒr','ƒu','ƒx','ƒ{',
             'ƒi','ƒj','ƒk','ƒl','ƒm',  'ƒp','ƒs','ƒv','ƒy','ƒ|',
             'ƒn','ƒq','ƒt','ƒw','ƒz',  'ƒ@','ƒB','ƒD','ƒF','ƒH',
             'ƒ}','ƒ~','ƒ€','ƒ','ƒ‚',  'ƒb','ƒƒ','ƒ…','ƒ‡','ƒ',
             'ƒ„','@','ƒ†','@','ƒˆ',  'ƒ“','[','W','m','n',
             'ƒ‰','ƒŠ','ƒ‹','ƒŒ','ƒ',  '^','C','D','w','x',
             'ƒ','ƒ','ƒ”','ƒ‘','ƒ’',  'œ','£','¡','Ÿ','š']
  JAPAN3 = [ '‚`','‚a','‚b','‚c','‚d',  '‚','‚‚','‚ƒ','‚„','‚…',
             '‚e','‚f','‚g','‚h','‚i',  '‚†','‚‡','‚ˆ','‚‰','‚Š',
             '‚j','‚k','‚l','‚m','‚n',  '‚‹','‚Œ','‚','‚','‚',
             '‚o','‚p','‚q','‚r','‚s',  '‚','‚‘','‚’','‚“','‚”',
             '‚t','‚u','‚v','‚w','‚x',  '‚•','‚–','‚—','‚˜','‚™',
             '‚y','@','}','“','',  '‚š','@','c','g','h',
             '‚O','‚P','‚Q','‚R','‚S',  '•','”','—','–','Í',
             '‚T','‚U','‚V','‚W','‚X',  '_','ª','I','H','ô',
             '‡','{','|','~','€',  '©','¦','¨','‰','Š',
             '','ƒ','„','O','b',  '','«','Q','G','F']
  JAPAN4 = [ '‚ ','‚¢','‚¤','‚¦','‚¨',
             '‚©','‚«','‚­','‚¯','‚±',
             '‚³','‚µ','‚·','‚¹','‚»',
             '‚½','‚¿','‚Â','‚Ä','‚Æ',
             '‚È','‚É','‚Ê','‚Ë','‚Ì',
             '‚Í','‚Ğ','‚Ó','‚Ö','‚Ù',
             '‚Ü','‚İ','‚Ş','‚ß','‚à',
             '‚â','@','‚ä','@','‚æ',
             '‚ç','‚è','‚é','‚ê','‚ë',
             '‚í']
  #--------------------------------------------------------------------------
  # œ ƒIƒuƒWƒFƒNƒg‰Šú‰»
  #--------------------------------------------------------------------------
  def initialize(edit_window, kanji_window)
    y = edit_window.y + edit_window.height
    width = Graphics.width - 72
    super(72, y, width, 264, edit_window)
    @kanji_window = kanji_window
  end
  #--------------------------------------------------------------------------
  # œ •¶š•\‚Ìæ“¾
  #--------------------------------------------------------------------------
  def table
    [JAPAN1, JAPAN2, JAPAN3, JAPAN4]
  end
  #--------------------------------------------------------------------------
  # œ Œ…”‚Ìæ“¾
  #--------------------------------------------------------------------------
  def col_max
    (@page == 3) ? 5 : 10
  end
  #--------------------------------------------------------------------------
  # œ €–Ú‚ğ•`‰æ‚·‚é‹éŒ`‚Ìæ“¾
  #--------------------------------------------------------------------------
  def item_rect(index)
    rect = super
    rect.x = index % col_max * 32 + index % col_max / 5 * 16
    rect.width = 32
    rect
  end
  #--------------------------------------------------------------------------
  # œ ‘S€–Ú‚Ì•`‰æ
  #--------------------------------------------------------------------------
  def draw_all_items
    draw_vert_line(332, system_color, 120)
    draw_instructions
    super
  end
  #--------------------------------------------------------------------------
  # œ Š¿š‘I‘ğ‚Ìˆ—
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
  # œ ‚’¼ü‚Ì•`‰æ
  #--------------------------------------------------------------------------
  def draw_vert_line(x, color = normal_color, alpha = 48)
    line_x = x + line_height / 2 - 1
    color.alpha = alpha
    contents.fill_rect(line_x, 0, 2, contents_height, color)
  end
  #--------------------------------------------------------------------------
  # œ à–¾‚Ì•`‰æ
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
# š Window_KanjiInput
#------------------------------------------------------------------------------
# @–¼‘O“ü—Í‰æ–Ê‚ÅAŠ¿š‚ğ‘I‘ğ‚·‚éƒEƒBƒ“ƒhƒE‚Å‚·B
#==============================================================================

class Window_KanjiInput < Window_NameInputBase
  #--------------------------------------------------------------------------
  # œ •¶š•\iŠ¿šj
  #--------------------------------------------------------------------------
  KANJI_A  = ['ˆŸ', 'ˆ ', 'ˆ¡', 'ˆ¢', 'ˆ£', 'ˆ¤', 'ˆ¥', 'ˆ¦', 'ˆ§', 'ˆ¨', 'ˆ©',
              'ˆª', 'ˆ«', 'ˆ¬', 'ˆ­', 'ˆ®', 'ˆ¯', 'ˆ°', 'ˆ±', 'ˆ²', 'ˆ³', 'ˆ´',
              'ˆµ', 'ˆ¶', 'ˆ·', 'ˆ¸', 'ˆ¹', 'ˆº', 'ˆ»', 'ˆ¼', 'ˆ½', 'ˆ¾', 'ˆ¿',
              'ˆÀ', 'ˆÁ', 'ˆÂ', 'ˆÃ', 'ˆÄ', 'ˆÅ', 'ˆÆ', 'ˆÇ']
  
  KANJI_I  = ['ˆÈ', 'ˆÉ', 'ˆÊ', 'ˆË', 'ˆÌ', 'ˆÍ', 'ˆÎ', 'ˆÏ', 'ˆĞ', 'ˆÑ', 'ˆÒ',
              'ˆÓ', 'ˆÔ', 'ˆÕ', 'ˆÖ', 'ˆ×', 'ˆØ', 'ˆÙ', 'ˆÚ', 'ˆÛ', 'ˆÜ', 'ˆİ',
              'ˆŞ', 'ˆß', 'ˆà', 'ˆá', 'ˆâ', 'ˆã', 'ˆä', 'ˆå', 'ˆæ', 'ˆç', 'ˆè',
              'ˆé', 'ˆê', 'ˆë', 'ˆì', 'ˆí', 'ˆî', 'ˆï', 'ˆğ', 'ˆñ', 'ˆò', 'ˆó',
              'ˆô', 'ˆõ', 'ˆö', 'ˆ÷', 'ˆø', 'ˆù', 'ˆú', 'ˆû', 'ˆü', '‰@', '‰A',
              '‰B', '‰C', '‰D']
  
  KANJI_U  = ['‰E', '‰F', '‰G', '‰H', '‰I', '‰J', '‰K', '‰L', '‰M', '‰N', '‰O',
              '‰P', '‰Q', '‰R', '‰S', '‰T', '‰U', '‰V', '‰W', '‰X', '‰Y', '‰Z',
              '‰[', '‰\', '‰]', '‰^', '‰_']
  
  KANJI_E  = ['‰`', '‰a', '‰b', '‰c', '‰d', '‰e', '‰f', '‰g', '‰h', '‰i', '‰j',
              '‰k', '‰l', '‰m', '‰n', '‰o', '‰p', '‰q', '‰r', '‰s', '‰t', '‰u',
              '‰v', '‰w', '‰x', '‰y', '‰z', '‰{', '‰|', '‰}', '‰~', '‰€', '‰',
              '‰‚', '‰ƒ', '‰„', '‰…', '‰†', '‰‡', '‰ˆ', '‰‰', '‰Š', '‰‹', '‰Œ',
              '‰', '‰', '‰', '‰', '‰‘', '‰’', '‰“', '‰”', '‰•', '‰–']
  
  KANJI_O  = ['‰—', '‰˜', '‰™', '‰š', '‰›', '‰œ', '‰', '‰', '‰Ÿ', '‰ ', '‰¡',
              '‰¢', '‰£', '‰¤', '‰¥', '‰¦', '‰§', '‰¨', '‰©', '‰ª', '‰«', '‰¬',
              '‰­', '‰®', '‰¯', '‰°', '‰±', '‰²', '‰³', '‰´', '‰µ', '‰¶', '‰·',
              '‰¸', '‰¹']
  
  KANJI_KA = ['‰º', '‰»', '‰¼', '‰½', '‰¾', '‰¿', '‰À', '‰Á', '‰Â', '‰Ã', '‰Ä',
              '‰Å', '‰Æ', '‰Ç', '‰È', '‰É', '‰Ê', '‰Ë', '‰Ì', '‰Í', '‰Î', '‰Ï',
              '‰Ğ', '‰Ñ', '‰Ò', '‰Ó', '‰Ô', '‰Õ', '‰Ö', '‰×', '‰Ø', '‰Ù', '‰Ú',
              '‰Û', '‰Ü', '‰İ', '‰Ş', '‰ß', '‰à', '‰á', '‰â', '‰ã', '‰ä', '‰å',
              '‰æ', '‰ç', '‰è', '‰é', '‰ê', '‰ë', '‰ì', '‰í', '‰î', '‰ï', '‰ğ',
              '‰ñ', '‰ò', '‰ó', '‰ô', '‰õ', '‰ö', '‰÷', '‰ø', '‰ù', '‰ú', '‰û',
              '‰ü', 'Š@', 'ŠA', 'ŠB', 'ŠC', 'ŠD', 'ŠE', 'ŠF', 'ŠG', 'ŠH', 'ŠI',
              'ŠJ', 'ŠK', 'ŠL', 'ŠM', 'ŠN', 'ŠO', 'ŠP', 'ŠQ', 'ŠR', 'ŠS', 'ŠT',
              'ŠU', 'ŠV', 'ŠW', 'ŠX', 'ŠY', 'ŠZ', 'Š[', 'Š\', 'Š]', 'Š^', 'Š_',
              'Š`', 'Ša', 'Šb', 'Šc', 'Šd', 'Še', 'Šf', 'Šg', 'Šh', 'Ši', 'Šj',
              'Šk', 'Šl', 'Šm', 'Šn', 'Šo', 'Šp', 'Šq', 'Šr', 'Šs', 'Št', 'Šu',
              'Šv', 'Šw', 'Šx', 'Šy', 'Šz', 'Š{', 'Š|', 'Š}', 'Š~', 'Š€', 'Š',
              'Š‚', 'Šƒ', 'Š„', 'Š…', 'Š†', 'Š‡', 'Šˆ', 'Š‰', 'ŠŠ', 'Š‹', 'ŠŒ',
              'Š', 'Š', 'Š', 'Š', 'Š‘', 'Š’', 'Š“', 'Š”', 'Š•', 'Š–', 'Š—',
              'Š˜', 'Š™', 'Šš', 'Š›', 'Šœ', 'Š', 'Š', 'ŠŸ', 'Š ', 'Š¡', 'Š¢',
              'Š£', 'Š¤', 'Š¥', 'Š¦', 'Š§', 'Š¨', 'Š©', 'Šª', 'Š«', 'Š¬', 'Š­',
              'Š®', 'Š¯', 'Š°', 'Š±', 'Š²', 'Š³', 'Š´', 'Šµ', 'Š¶', 'Š·', 'Š¸',
              'Š¹', 'Šº', 'Š»', 'Š¼', 'Š½', 'Š¾', 'Š¿', 'ŠÀ', 'ŠÁ', 'ŠÂ', 'ŠÃ',
              'ŠÄ', 'ŠÅ', 'ŠÆ', 'ŠÇ', 'ŠÈ', 'ŠÉ', 'ŠÊ', 'ŠË', 'ŠÌ', 'ŠÍ', 'ŠÎ',
              'ŠÏ', 'ŠĞ', 'ŠÑ', 'ŠÒ', 'ŠÓ', 'ŠÔ', 'ŠÕ', 'ŠÖ', 'Š×', 'ŠØ', 'ŠÙ',
              'ŠÚ', 'ŠÛ', 'ŠÜ', 'Šİ', 'ŠŞ', 'Šß', 'Šà', 'Šá', 'Šâ', 'Šã', 'Šä',
              'Šå', 'Šæ', 'Šç', 'Šè']
  
  KANJI_KI = ['Šé', 'Šê', 'Šë', 'Šì', 'Ší', 'Šî', 'Šï', 'Šğ', 'Šñ', 'Šò', 'Šó',
              'Šô', 'Šõ', 'Šö', 'Š÷', 'Šø', 'Šù', 'Šú', 'Šû', 'Šü', '‹@', '‹A',
              '‹B', '‹C', '‹D', '‹E', '‹F', '‹G', '‹H', '‹I', '‹J', '‹K', '‹L',
              '‹M', '‹N', '‹O', '‹P', '‹Q', '‹R', '‹S', '‹T', '‹U', '‹V', '‹W',
              '‹X', '‹Y', '‹Z', '‹[', '‹\', '‹]', '‹^', '‹_', '‹`', '‹a', '‹b',
              '‹c', '‹d', '‹e', '‹f', '‹g', '‹h', '‹i', '‹j', '‹k', '‹l', '‹m',
              '‹n', '‹o', '‹p', '‹q', '‹r', '‹s', '‹t', '‹u', '‹v', '‹w', '‹x',
              '‹y', '‹z', '‹{', '‹|', '‹}', '‹~', '‹€', '‹', '‹‚', '‹ƒ', '‹„',
              '‹…', '‹†', '‹‡', '‹ˆ', '‹‰', '‹Š', '‹‹', '‹Œ', '‹', '‹', '‹',
              '‹', '‹‘', '‹’', '‹“', '‹”', '‹•', '‹–', '‹—', '‹˜', '‹™', '‹š',
              '‹›', '‹œ', '‹', '‹', '‹Ÿ', '‹ ', '‹¡', '‹¢', '‹£', '‹¤', '‹¥',
              '‹¦', '‹§', '‹¨', '‹©', '‹ª', '‹«', '‹¬', '‹­', '‹®', '‹¯', '‹°',
              '‹±', '‹²', '‹³', '‹´', '‹µ', '‹¶', '‹·', '‹¸', '‹¹', '‹º', '‹»',
              '‹¼', '‹½', '‹¾', '‹¿', '‹À', '‹Á', '‹Â', '‹Ã', '‹Ä', '‹Å', '‹Æ',
              '‹Ç', '‹È', '‹É', '‹Ê', '‹Ë', '‹Ì', '‹Í', '‹Î', '‹Ï', '‹Ğ', '‹Ñ',
              '‹Ò', '‹Ó', '‹Ô', '‹Õ', '‹Ö', '‹×', '‹Ø', '‹Ù', '‹Ú', '‹Û', '‹Ü',
              '‹İ', '‹Ş', '‹ß', '‹à', '‹á', '‹â']
  
  KANJI_KU = ['‹ã', '‹ä', '‹å', '‹æ', '‹ç', '‹è', '‹é', '‹ê', '‹ë', '‹ì', '‹í',
              '‹î', '‹ï', '‹ğ', '‹ñ', '‹ò', '‹ó', '‹ô', '‹õ', '‹ö', '‹÷', '‹ø',
              '‹ù', '‹ú', '‹û', '‹ü', 'Œ@', 'ŒA', 'ŒB', 'ŒC', 'ŒD', 'ŒE', 'ŒF',
              'ŒG', 'ŒH', 'ŒI', 'ŒJ', 'ŒK', 'ŒL', 'ŒM', 'ŒN', 'ŒO', 'ŒP', 'ŒQ',
              'ŒR', 'ŒS']
  
  KANJI_KE = ['ŒT', 'ŒU', 'ŒV', 'ŒW', 'ŒX', 'ŒY', 'ŒZ', 'Œ[', 'Œ\', 'Œ]', 'Œ^',
              'Œ_', 'Œ`', 'Œa', 'Œb', 'Œc', 'Œd', 'Œe', 'Œf', 'Œg', 'Œh', 'Œi',
              'Œj', 'Œk', 'Œl', 'Œm', 'Œn', 'Œo', 'Œp', 'Œq', 'Œr', 'Œs', 'Œt',
              'Œu', 'Œv', 'Œw', 'Œx', 'Œy', 'Œz', 'Œ{', 'Œ|', 'Œ}', 'Œ~', 'Œ€',
              'Œ', 'Œ‚', 'Œƒ', 'Œ„', 'Œ…', 'Œ†', 'Œ‡', 'Œˆ', 'Œ‰', 'ŒŠ', 'Œ‹',
              'ŒŒ', 'Œ', 'Œ', 'Œ', 'Œ', 'Œ‘', 'Œ’', 'Œ“', 'Œ”', 'Œ•', 'Œ–',
              'Œ—', 'Œ˜', 'Œ™', 'Œš', 'Œ›', 'Œœ', 'Œ', 'Œ', 'ŒŸ', 'Œ ', 'Œ¡',
              'Œ¢', 'Œ£', 'Œ¤', 'Œ¥', 'Œ¦', 'Œ§', 'Œ¨', 'Œ©', 'Œª', 'Œ«', 'Œ¬',
              'Œ­', 'Œ®', 'Œ¯', 'Œ°', 'Œ±', 'Œ²', 'Œ³', 'Œ´', 'Œµ', 'Œ¶', 'Œ·',
              'Œ¸', 'Œ¹', 'Œº', 'Œ»', 'Œ¼', 'Œ½', 'Œ¾', 'Œ¿', 'ŒÀ']
  
  KANJI_KO = ['ŒÁ', 'ŒÂ', 'ŒÃ', 'ŒÄ', 'ŒÅ', 'ŒÆ', 'ŒÇ', 'ŒÈ', 'ŒÉ', 'ŒÊ', 'ŒË',
              'ŒÌ', 'ŒÍ', 'ŒÎ', 'ŒÏ', 'ŒĞ', 'ŒÑ', 'ŒÒ', 'ŒÓ', 'ŒÔ', 'ŒÕ', 'ŒÖ',
              'Œ×', 'ŒØ', 'ŒÙ', 'ŒÚ', 'ŒÛ', 'ŒÜ', 'Œİ', 'ŒŞ', 'Œß', 'Œà', 'Œá',
              'Œâ', 'Œã', 'Œä', 'Œå', 'Œæ', 'Œç', 'Œè', 'Œé', 'Œê', 'Œë', 'Œì',
              'Œí', 'Œî', 'Œï', 'Œğ', 'Œñ', 'Œò', 'Œó', 'Œô', 'Œõ', 'Œö', 'Œ÷',
              'Œø', 'Œù', 'Œú', 'Œû', 'Œü', '@', 'A', 'B', 'C', 'D', 'E',
              'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
              'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '[',
              '\', ']', '^', '_', '`', 'a', 'b', 'c', 'd', 'e', 'f',
              'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q',
              'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '{', '|',
              '}', '~', '€', '', '‚', 'ƒ', '„', '…', '†', '‡', 'ˆ',
              '‰', 'Š', '‹', 'Œ', '', '', '', '', '‘', '’', '“',
              '”', '•', '–', '—', '˜', '™', 'š', '›', 'œ', '', '',
              'Ÿ', ' ', '¡', '¢', '£', '¤', '¥', '¦', '§', '¨', '©',
              'ª', '«', '¬', '­', '®', '¯', '°']
  
  KANJI_SA = ['±', '²', '³', '´', 'µ', '¶', '·', '¸', '¹', 'º', '»',
              '¼', '½', '¾', '¿', 'À', 'Á', 'Â', 'Ã', 'Ä', 'Å', 'Æ',
              'Ç', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í', 'Î', 'Ï', 'Ğ', 'Ñ',
              'Ò', 'Ó', 'Ô', 'Õ', 'Ö', '×', 'Ø', 'Ù', 'Ú', 'Û', 'Ü',
              'İ', 'Ş', 'ß', 'à', 'á', 'â', 'ã', 'ä', 'å', 'æ', 'ç',
              'è', 'é', 'ê', 'ë', 'ì', 'í', 'î', 'ï', 'ğ', 'ñ', 'ò',
              'ó', 'ô', 'õ', 'ö', '÷', 'ø', 'ù', 'ú', 'û', 'ü', '@',
              'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
              'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
              'W', 'X', 'Y', 'Z', '[', '\', ']', '^', '_', '`', 'a',
              'b', 'c']
  
  KANJI_SI = ['d', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
              'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y',
              'z', '{', '|', '}', '~', '€', '', '‚', 'ƒ', '„', '…',
              '†', '‡', 'ˆ', '‰', 'Š', '‹', 'Œ', '', '', '', '',
              '‘', '’', '“', '”', '•', '–', '—', '˜', '™', 'š', '›',
              'œ', '', '', 'Ÿ', ' ', '¡', '¢', '£', '¤', '¥', '¦',
              '§', '¨', '©', 'ª', '«', '¬', '­', '®', '¯', '°', '±',
              '²', '³', '´', 'µ', '¶', '·', '¸', '¹', 'º', '»', '¼',
              '½', '¾', '¿', 'À', 'Á', 'Â', 'Ã', 'Ä', 'Å', 'Æ', 'Ç',
              'È', 'É', 'Ê', 'Ë', 'Ì', 'Í', 'Î', 'Ï', 'Ğ', 'Ñ', 'Ò',
              'Ó', 'Ô', 'Õ', 'Ö', '×', 'Ø', 'Ù', 'Ú', 'Û', 'Ü', 'İ',
              'Ş', 'ß', 'à', 'á', 'â', 'ã', 'ä', 'å', 'æ', 'ç', 'è',
              'é', 'ê', 'ë', 'ì', 'í', 'î', 'ï', 'ğ', 'ñ', 'ò', 'ó',
              'ô', 'õ', 'ö', '÷', 'ø', 'ù', 'ú', 'û', 'ü', '@', 'A',
              'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L',
              'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
              'X', 'Y', 'Z', '[', '\', ']', '^', '_', '`', 'a', 'b',
              'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
              'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
              'y', 'z', '{', '|', '}', '~', '€', '', '‚', 'ƒ', '„',
              '…', '†', '‡', 'ˆ', '‰', 'Š', '‹', 'Œ', '', '', '',
              '', '‘', '’', '“', '”', '•', '–', '—', '˜', '™', 'š',
              '›', 'œ', '', '', 'Ÿ', ' ', '¡', '¢', '£', '¤', '¥',
              '¦', '§', '¨', '©', 'ª', '«', '¬', '­', '®', '¯', '°',
              '±', '²', '³', '´', 'µ', '¶', '·', '¸', '¹', 'º', '»',
              '¼', '½', '¾', '¿', 'À', 'Á', 'Â', 'Ã', 'Ä', 'Å', 'Æ',
              'Ç', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í', 'Î', 'Ï', 'Ğ', 'Ñ',
              'Ò', 'Ó', 'Ô', 'Õ', 'Ö', '×', 'Ø', 'Ù', 'Ú', 'Û', 'Ü',
              'İ', 'Ş', 'ß', 'à', 'á', 'â', 'ã', 'ä', 'å', 'æ', 'ç',
              'è', 'é', 'ê', 'ë', 'ì', 'í', 'î', 'ï', 'ğ', 'ñ', 'ò',
              'ó', 'ô', 'õ', 'ö', '÷', 'ø', 'ù', 'ú', 'û', 'ü', '@',
              'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
              'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
              'W', 'X', 'Y', 'Z', '[', '\', ']', '^', '_', '`', 'a',
              'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
              'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w',
              'x']
  
  KANJI_SU = ['y', 'z', '{', '|', '}', '~', '€', '', '‚', 'ƒ', '„',
              '…', '†', '‡', 'ˆ', '‰', 'Š', '‹', 'Œ', '', '', '',
              '', '‘', '’', '“', '”', '•', '–', '—', '˜', '™', 'š',
              '›', 'œ', '', '', 'Ÿ', ' ', '¡']
  
  KANJI_SE = ['¢', '£', '¤', '¥', '¦', '§', '¨', '©', 'ª', '«', '¬',
              '­', '®', '¯', '°', '±', '²', '³', '´', 'µ', '¶', '·',
              '¸', '¹', 'º', '»', '¼', '½', '¾', '¿', 'À', 'Á', 'Â',
              'Ã', 'Ä', 'Å', 'Æ', 'Ç', 'È', 'É', 'Ê', 'Ë', 'Ì', 'Í',
              'Î', 'Ï', 'Ğ', 'Ñ', 'Ò', 'Ó', 'Ô', 'Õ', 'Ö', '×', 'Ø',
              'Ù', 'Ú', 'Û', 'Ü', 'İ', 'Ş', 'ß', 'à', 'á', 'â', 'ã',
              'ä', 'å', 'æ', 'ç', 'è', 'é', 'ê', 'ë', 'ì', 'í', 'î',
              'ï', 'ğ', 'ñ', 'ò', 'ó', 'ô', 'õ', 'ö', '÷', 'ø', 'ù',
              'ú', 'û', 'ü', '‘@', '‘A', '‘B', '‘C', '‘D', '‘E', '‘F', '‘G',
              '‘H', '‘I', '‘J', '‘K', '‘L', '‘M', '‘N', '‘O', '‘P', '‘Q', '‘R',
              '‘S', '‘T', '‘U', '‘V', '‘W']
  
  KANJI_SO = ['‘X', '‘Y', '‘Z', '‘[', '‘\', '‘]', '‘^', '‘_', '‘`', '‘a', '‘b',
              '‘c', '‘d', '‘e', '‘f', '‘g', '‘h', '‘i', '‘j', '‘k', '‘l', '‘m',
              '‘n', '‘o', '‘p', '‘q', '‘r', '‘s', '‘t', '‘u', '‘v', '‘w', '‘x',
              '‘y', '‘z', '‘{', '‘|', '‘}', '‘~', '‘€', '‘', '‘‚', '‘ƒ', '‘„',
              '‘…', '‘†', '‘‡', '‘ˆ', '‘‰', '‘Š', '‘‹', '‘Œ', '‘', '‘', '‘',
              '‘', '‘‘', '‘’', '‘“', '‘”', '‘•', '‘–', '‘—', '‘˜', '‘™', '‘š',
              '‘›', '‘œ', '‘', '‘', '‘Ÿ', '‘ ', '‘¡', '‘¢', '‘£', '‘¤', '‘¥',
              '‘¦', '‘§', '‘¨', '‘©', '‘ª', '‘«', '‘¬', '‘­', '‘®', '‘¯', '‘°',
              '‘±', '‘²', '‘³', '‘´', '‘µ', '‘¶', '‘·', '‘¸', '‘¹', '‘º', '‘»']
  
  KANJI_TA = ['‘¼', '‘½', '‘¾', '‘¿', '‘À', '‘Á', '‘Â', '‘Ã', '‘Ä', '‘Å', '‘Æ',
              '‘Ç', '‘È', '‘É', '‘Ê', '‘Ë', '‘Ì', '‘Í', '‘Î', '‘Ï', '‘Ğ', '‘Ñ',
              '‘Ò', '‘Ó', '‘Ô', '‘Õ', '‘Ö', '‘×', '‘Ø', '‘Ù', '‘Ú', '‘Û', '‘Ü',
              '‘İ', '‘Ş', '‘ß', '‘à', '‘á', '‘â', '‘ã', '‘ä', '‘å', '‘æ', '‘ç',
              '‘è', '‘é', '‘ê', '‘ë', '‘ì', '‘í', '‘î', '‘ï', '‘ğ', '‘ñ', '‘ò',
              '‘ó', '‘ô', '‘õ', '‘ö', '‘÷', '‘ø', '‘ù', '‘ú', '‘û', '‘ü', '’@',
              '’A', '’B', '’C', '’D', '’E', '’F', '’G', '’H', '’I', '’J', '’K',
              '’L', '’M', '’N', '’O', '’P', '’Q', '’R', '’S', '’T', '’U', '’V',
              '’W', '’X', '’Y', '’Z', '’[', '’\', '’]', '’^', '’_', '’`', '’a',
              '’b', '’c', '’d', '’e', '’f', '’g', '’h', '’i', '’j', '’k']
  
  KANJI_TI = ['’l', '’m', '’n', '’o', '’p', '’q', '’r', '’s', '’t', '’u', '’v',
              '’w', '’x', '’y', '’z', '’{', '’|', '’}', '’~', '’€', '’', '’‚',
              '’ƒ', '’„', '’…', '’†', '’‡', '’ˆ', '’‰', '’Š', '’‹', '’Œ', '’',
              '’', '’', '’', '’‘', '’’', '’“', '’”', '’•', '’–', '’—', '’˜',
              '’™', '’š', '’›', '’œ', '’', '’', '’Ÿ', '’ ', '’¡', '’¢', '’£',
              '’¤', '’¥', '’¦', '’§', '’¨', '’©', '’ª', '’«', '’¬', '’­', '’®',
              '’¯', '’°', '’±', '’²', '’³', '’´', '’µ', '’¶', '’·', '’¸', '’¹',
              '’º', '’»', '’¼', '’½', '’¾', '’¿', '’À', '’Á', '’Â']
  
  KANJI_TU = ['’Ã', '’Ä', '’Å', '’Æ', '’Ç', '’È', '’É', '’Ê', '’Ë', '’Ì', '’Í',
              '’Î', '’Ï', '’Ğ', '’Ñ', '’Ò', '’Ó', '’Ô', '’Õ', '’Ö', '’×', '’Ø',
              '’Ù', '’Ú', '’Û', '’Ü', '’İ', '’Ş', '’ß']
  
  KANJI_TE = ['’à', '’á', '’â', '’ã', '’ä', '’å', '’æ', '’ç', '’è', '’é', '’ê',
              '’ë', '’ì', '’í', '’î', '’ï', '’ğ', '’ñ', '’ò', '’ó', '’ô', '’õ',
              '’ö', '’÷', '’ø', '’ù', '’ú', '’û', '’ü', '“@', '“A', '“B', '“C',
              '“D', '“E', '“F', '“G', '“H', '“I', '“J', '“K', '“L', '“M', '“N',
              '“O', '“P', '“Q', '“R', '“S', '“T', '“U', '“V', '“W', '“X', '“Y',
              '“Z', '“[', '“\', '“]', '“^', '“_', '“`', '“a', '“b', '“c', '“d']
  
  KANJI_TO = ['“e', '“f', '“g', '“h', '“i', '“j', '“k', '“l', '“m', '“n', '“o',
              '“p', '“q', '“r', '“s', '“t', '“u', '“v', '“w', '“x', '“y', '“z',
              '“{', '“|', '“}', '“~', '“€', '“', '“‚', '“ƒ', '“„', '“…', '“†',
              '“‡', '“ˆ', '“‰', '“Š', '“‹', '“Œ', '“', '“', '“', '“', '“‘',
              '“’', '““', '“”', '“•', '“–', '“—', '“˜', '“™', '“š', '“›', '“œ',
              '“', '“', '“Ÿ', '“ ', '“¡', '“¢', '“£', '“¤', '“¥', '“¦', '“§',
              '“¨', '“©', '“ª', '“«', '“¬', '“­', '“®', '“¯', '“°', '“±', '“²',
              '“³', '“´', '“µ', '“¶', '“·', '“¸', '“¹', '“º', '“»', '“¼', '“½',
              '“¾', '“¿', '“À', '“Á', '“Â', '“Ã', '“Ä', '“Å', '“Æ', '“Ç', '“È',
              '“É', '“Ê', '“Ë', '“Ì', '“Í', '“Î', '“Ï', '“Ğ', '“Ñ', '“Ò', '“Ó',
              '“Ô', '“Õ', '“Ö', '“×', '“Ø', '“Ù', '“Ú', '“Û', '“Ü', '“İ']
  
  KANJI_NA = ['“Ş', '“ß', '“à', '“á', '“â', '“ã', '“ä', '“å', '“æ', '“ç', '“è',
              '“é', '“ê', '“ë', '“ì', '“í', '“î', '“ï', '“ğ']
  
  KANJI_NI = ['“ñ', '“ò', '“ó', '“ô', '“õ', '“ö', '“÷', '“ø', '“ù', '“ú', '“û',
              '“ü', '”@', '”A', '”B', '”C', '”D', '”E', '”F']
  
  KANJI_NU = ['”G']
  
  KANJI_NE = ['”H', '”I', '”J', '”K', '”L', '”M', '”N', '”O', '”P', '”Q', '”R',
              '”S']
  
  KANJI_NO = ['”T', '”U', '”V', '”W', '”X', '”Y', '”Z', '”[', '”\', '”]', '”^',
              '”_', '”`', '”a']
  
  KANJI_HA = ['”b', '”c', '”d', '”e', '”f', '”g', '”h', '”i', '”j', '”k', '”l',
              '”m', '”n', '”o', '”p', '”q', '”r', '”s', '”t', '”u', '”v', '”w',
              '”x', '”y', '”z', '”{', '”|', '”}', '”~', '”€', '”', '”‚', '”ƒ',
              '”„', '”…', '”†', '”‡', '”ˆ', '”‰', '”Š', '”‹', '”Œ', '”', '”',
              '”', '”', '”‘', '”’', '”“', '””', '”•', '”–', '”—', '”˜', '”™',
              '”š', '”›', '”œ', '”', '”', '”Ÿ', '” ', '”¡', '”¢', '”£', '”¤',
              '”¥', '”¦', '”§', '”¨', '”©', '”ª', '”«', '”¬', '”­', '”®', '”¯',
              '”°', '”±', '”²', '”³', '”´', '”µ', '”¶', '”·', '”¸', '”¹', '”º',
              '”»', '”¼', '”½', '”¾', '”¿', '”À', '”Á', '”Â', '”Ã', '”Ä', '”Å',
              '”Æ', '”Ç', '”È', '”É', '”Ê', '”Ë', '”Ì', '”Í', '”Î', '”Ï', '”Ğ',
              '”Ñ', '”Ò', '”Ó', '”Ô', '”Õ', '”Ö', '”×', '”Ø']
  
  KANJI_HI = ['”Ù', '”Ú', '”Û', '”Ü', '”İ', '”Ş', '”ß', '”à', '”á', '”â', '”ã',
              '”ä', '”å', '”æ', '”ç', '”è', '”é', '”ê', '”ë', '”ì', '”í', '”î',
              '”ï', '”ğ', '”ñ', '”ò', '”ó', '”ô', '”õ', '”ö', '”÷', '”ø', '”ù',
              '”ú', '”û', '”ü', '•@', '•A', '•B', '•C', '•D', '•E', '•F', '•G',
              '•H', '•I', '•J', '•K', '•L', '•M', '•N', '•O', '•P', '•Q', '•R',
              '•S', '•T', '•U', '•V', '•W', '•X', '•Y', '•Z', '•[', '•\', '•]',
              '•^', '•_', '•`', '•a', '•b', '•c', '•d', '•e', '•f', '•g', '•h',
              '•i', '•j', '•k', '•l', '•m', '•n', '•o', '•p', '•q', '•r']
  
  KANJI_HU = ['•s', '•t', '•u', '•v', '•w', '•x', '•y', '•z', '•{', '•|', '•}',
              '•~', '•€', '•', '•‚', '•ƒ', '•„', '•…', '•†', '•‡', '•ˆ', '•‰',
              '•Š', '•‹', '•Œ', '•', '•', '•', '•', '•‘', '•’', '•“', '•”',
              '••', '•–', '•—', '•˜', '•™', '•š', '•›', '•œ', '•', '•', '•Ÿ',
              '• ', '•¡', '•¢', '•£', '•¤', '•¥', '•¦', '•§', '•¨', '•©', '•ª',
              '•«', '•¬', '•­', '•®', '•¯', '•°', '•±', '•²', '•³', '•´', '•µ',
              '•¶', '•·']
  
  KANJI_HE = ['•¸', '•¹', '•º', '•»', '•¼', '•½', '•¾', '•¿', '•À', '•Á', '•Â',
              '•Ã', '•Ä', '•Å', '•Æ', '•Ç', '•È', '•É', '•Ê', '•Ë', '•Ì', '•Í',
              '•Î', '•Ï', '•Ğ', '•Ñ', '•Ò', '•Ó', '•Ô', '•Õ', '•Ö', '•×', '•Ø',
              '•Ù', '•Ú']
  
  KANJI_HO = ['•Û', '•Ü', '•İ', '•Ş', '•ß', '•à', '•á', '•â', '•ã', '•ä', '•å',
              '•æ', '•ç', '•è', '•é', '•ê', '•ë', '•ì', '•í', '•î', '•ï', '•ğ',
              '•ñ', '•ò', '•ó', '•ô', '•õ', '•ö', '•÷', '•ø', '•ù', '•ú', '•û',
              '•ü', '–@', '–A', '–B', '–C', '–D', '–E', '–F', '–G', '–H', '–I',
              '–J', '–K', '–L', '–M', '–N', '–O', '–P', '–Q', '–R', '–S', '–T',
              '–U', '–V', '–W', '–X', '–Y', '–Z', '–[', '–\', '–]', '–^', '–_',
              '–`', '–a', '–b', '–c', '–d', '–e', '–f', '–g', '–h', '–i', '–j',
              '–k', '–l', '–m', '–n', '–o', '–p', '–q', '–r', '–s', '–t', '–u',
              '–v', '–w', '–x', '–y', '–z', '–{', '–|', '–}', '–~']
  
  KANJI_MA = ['–€', '–', '–‚', '–ƒ', '–„', '–…', '–†', '–‡', '–ˆ', '–‰', '–Š',
              '–‹', '–Œ', '–', '–', '–', '–', '–‘', '–’', '–“', '–”', '–•',
              '––', '–—', '–˜', '–™', '–š', '–›', '–œ', '–', '–', '–Ÿ', '– ']
  
  KANJI_MI = ['–¡', '–¢', '–£', '–¤', '–¥', '–¦', '–§', '–¨', '–©', '–ª', '–«',
              '–¬', '–­', '–®', '–¯', '–°']
  
  KANJI_MU = ['–±', '–²', '–³', '–´', '–µ', '–¶', '–·', '–¸', '–¹', '–º']
  
  KANJI_ME = ['–»', '–¼', '–½', '–¾', '–¿', '–À', '–Á', '–Â', '–Ã', '–Ä', '–Å',
              '–Æ', '–Ç', '–È', '–É', '–Ê', '–Ë']
  
  KANJI_MO = ['–Ì', '–Í', '–Î', '–Ï', '–Ğ', '–Ñ', '–Ò', '–Ó', '–Ô', '–Õ', '–Ö',
              '–×', '–Ø', '–Ù', '–Ú', '–Û', '–Ü', '–İ', '–Ş', '–ß', '–à', '–á',
              '–â', '–ã', '–ä', '–å', '–æ']
  
  KANJI_YA = ['–ç', '–è', '–é', '–ê', '–ë', '–ì', '–í', '–î', '–ï', '–ğ', '–ñ',
              '–ò', '–ó', '–ô', '–õ', '–ö', '–÷', '–ø']
  
  KANJI_YU = ['–ù', '–ú', '–û', '–ü', '—@', '—A', '—B', '—C', '—D', '—E', '—F',
              '—G', '—H', '—I', '—J', '—K', '—L', '—M', '—N', '—O', '—P', '—Q',
              '—R', '—S', '—T', '—U', '—V', '—W', '—X', '—Y', '—Z', '—[']
  
  KANJI_YO = ['—\', '—]', '—^', '—_', '—`', '—a', '—b', '—c', '—d', '—e', '—f',
              '—g', '—h', '—i', '—j', '—k', '—l', '—m', '—n', '—o', '—p', '—q',
              '—r', '—s', '—t', '—u', '—v', '—w', '—x', '—y', '—z', '—{', '—|',
              '—}', '—~', '—€', '—', '—‚', '—ƒ', '—„']
  
  KANJI_RA = ['—…', '—†', '—‡', '—ˆ', '—‰', '—Š', '—‹', '—Œ', '—', '—', '—',
              '—', '—‘', '—’', '—“', '—”', '—•', '—–', '——']
  
  KANJI_RI = ['—˜', '—™', '—š', '—›', '—œ', '—', '—', '—Ÿ', '— ', '—¡', '—¢',
              '—£', '—¤', '—¥', '—¦', '—§', '—¨', '—©', '—ª', '—«', '—¬', '—­',
              '—®', '—¯', '—°', '—±', '—²', '—³', '—´', '—µ', '—¶', '—·', '—¸',
              '—¹', '—º', '—»', '—¼', '—½', '—¾', '—¿', '—À', '—Á', '—Â', '—Ã',
              '—Ä', '—Å', '—Æ', '—Ç', '—È', '—É', '—Ê', '—Ë', '—Ì', '—Í', '—Î',
              '—Ï', '—Ğ', '—Ñ', '—Ò', '—Ó', '—Ô', '—Õ', '—Ö', '—×', '—Ø', '—Ù']
  
  KANJI_RU = ['—Ú', '—Û', '—Ü', '—İ', '—Ş']
  
  KANJI_RE = ['—ß', '—à', '—á', '—â', '—ã', '—ä', '—å', '—æ', '—ç', '—è', '—é',
              '—ê', '—ë', '—ì', '—í', '—î', '—ï', '—ğ', '—ñ', '—ò', '—ó', '—ô',
              '—õ', '—ö', '—÷', '—ø', '—ù', '—ú', '—û', '—ü', '˜@', '˜A', '˜B']
  
  KANJI_RO = ['˜C', '˜D', '˜E', '˜F', '˜G', '˜H', '˜I', '˜J', '˜K', '˜L', '˜M',
              '˜N', '˜O', '˜P', '˜Q', '˜R', '˜S', '˜T', '˜U', '˜V', '˜W', '˜X',
              '˜Y', '˜Z', '˜[', '˜\', '˜]', '˜^', '˜_']
  
  KANJI_WA = ['˜`', '˜a', '˜b', '˜c', '˜d', '˜e', '˜f', '˜g', '˜h', '˜i', '˜j',
              '˜k', '˜l', '˜m', '˜n', '˜o', '˜p', '˜q', '˜r']
  #--------------------------------------------------------------------------
  # œ ƒIƒuƒWƒFƒNƒg‰Šú‰»
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
  # œ •¶š•\‚Ìæ“¾
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
  # œ Œ…”‚Ìæ“¾
  #--------------------------------------------------------------------------
  def col_max
    width / 32
  end
  #--------------------------------------------------------------------------
  # œ ‰¡‚É€–Ú‚ª•À‚Ô‚Æ‚«‚Ì‹ó”’‚Ì•‚ğæ“¾
  #--------------------------------------------------------------------------
  def spacing
    0
  end
  #--------------------------------------------------------------------------
  # œ ƒŠƒtƒŒƒbƒVƒ…
  #--------------------------------------------------------------------------
  def refresh
    create_contents
    super
  end
end

#==============================================================================
# š Window_NameCommand
#------------------------------------------------------------------------------
# @–¼‘O“ü—Í‰æ–Ê‚ÅA‘S‘Ì‚ÉŠÖ‚í‚é‘I‘ğ‚ğ‚·‚éƒEƒBƒ“ƒhƒE‚Å‚·B
#==============================================================================

class Window_NameCommand < Window_Command
  #--------------------------------------------------------------------------
  # œ ’è”
  #--------------------------------------------------------------------------
  HIRAGANA = "‚©‚È"
  KATAKANA = "ƒJƒi"
  ALPHABET = "‰p”"
  KANJI    = "Š¿š"
  OK       = "Š®—¹"
  #--------------------------------------------------------------------------
  # œ ƒIƒuƒWƒFƒNƒg‰Šú‰»
  #--------------------------------------------------------------------------
  def initialize(input_window)
    super(0, input_window.y)
    @input_window = input_window
  end
  #--------------------------------------------------------------------------
  # œ ƒEƒBƒ“ƒhƒE•‚Ìæ“¾
  #--------------------------------------------------------------------------
  def window_width
    72
  end
  #--------------------------------------------------------------------------
  # œ €–Ú‚Ì•`‰æ
  #--------------------------------------------------------------------------
  def draw_item(index)
    color = (index == 4) ? system_color : normal_color
    change_color(color, command_enabled?(index))
    draw_text(item_rect_for_text(index), command_name(index), alignment)
  end
  #--------------------------------------------------------------------------
  # œ ƒRƒ}ƒ“ƒhƒŠƒXƒg‚Ìì¬
  #--------------------------------------------------------------------------
  def make_command_list
    add_command(HIRAGANA, :hiragana)
    add_command(KATAKANA, :katakana)
    add_command(ALPHABET, :alphabet)
    add_command(KANJI,    :kanji)
    add_command(OK,       :ok)
  end
  #--------------------------------------------------------------------------
  # œ Œˆ’è‚âƒLƒƒƒ“ƒZƒ‹‚È‚Ç‚Ìƒnƒ“ƒhƒŠƒ“ƒOˆ—
  #--------------------------------------------------------------------------
  def process_handling
    return unless open? && active
    return process_ok     if ok_enabled?     && Input.trigger?(:C)
    return process_cancel if cancel_enabled? && Input.repeat?(:B)
  end
  #--------------------------------------------------------------------------
  # œ ƒJ[ƒ\ƒ‹‚ÌˆÚ“®ˆ—
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
  # œ ƒLƒƒƒ“ƒZƒ‹ƒ{ƒ^ƒ“‚ª‰Ÿ‚³‚ê‚½‚Æ‚«‚Ìˆ—
  #--------------------------------------------------------------------------
  def process_cancel
    Input.update
    call_cancel_handler
  end
end
