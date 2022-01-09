#==============================================================================
# ★ データベースソート
#------------------------------------------------------------------------------
# ver. 1.0.0
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/Sort.rb
#------------------------------------------------------------------------------
# ■ 導入方法
# 1. スクリプトエディタにて、「▼ 素材」以下に新規セクションを挿入してください。
# 2. 1 のセクションにこのスクリプト全体を貼り付けてください。
# 
# ■ 使用方法
# 1. データを書き換えるスクリプトなので、必ずバックアップをお取りください。
# 2. イベントコマンド「スクリプト」にて sort_all_items! と入力すると、
#    そのイベント実行時にソートが実行されます。
# 3. ソート実行直後はエディタ上には反映されないので、一度プロジェクトを
#    閉じてください。
# 4. 再度プロジェクトを立ち上げ、データベースがソートされているか確認してください。
#------------------------------------------------------------------------------
# 本素材はMITライセンスにてリリースされています。
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2012/07/24 1.0.0 公開
#==============================================================================

#--------------------------------------------------------------------------
# ● データベースのスキル、アイテム、武器、防具、ステートをソート
#     type = 0 : 種類(価格や効果量等も考慮した総合ソート、引数省略時自動選択)
#     type = 1 : 名前
#     type = 2 : 価格
#--------------------------------------------------------------------------
def sort_all_items!(type = 0)
  skill  = $data_skills.dup
  item   = $data_items.dup
  weapon = $data_weapons.dup
  armor  = $data_armors.dup
  state  = $data_states.dup
  skill.shift
  item.shift
  weapon.shift
  armor.shift
  state.shift
  attack = skill.shift
  guard  = skill.shift
  dead   = state.shift
  case type
  when 0  # 種類
    i = 0
    skill.sort_by!{  |v| [v.tp_cost,            i += 1]}
    i = 0
    skill.sort_by!{  |v| [v.mp_cost,            i += 1]}
    i = 0
    skill.sort_by!{  |v| [v.scope,              i += 1]}
    i = 0
    skill.sort_by!{  |v| [v.occasion,           i += 1]}
    i = 0
    skill.sort_by!{  |v| [v.required_wtype_id2, i += 1]}
    i = 0
    skill.sort_by!{  |v| [v.required_wtype_id1, i += 1]}
    i = 0
    skill.sort_by!{  |v| [v.stype_id,           i += 1]}
    i = 0
    item.sort_by!{   |v| [v.price,              i += 1]}
    i = 0
    item.sort_by!{   |v| [v.scope,              i += 1]}
    i = 0
    item.sort_by!{   |v| [v.occasion,           i += 1]}
    i = 0
    item.sort_by!{   |v| [v.itype_id,           i += 1]}
    i = 0
    weapon.sort_by!{ |v| [v.price,              i += 1]}
    i = 0
    weapon.sort_by!{ |v| [v.params[2],          i += 1]}
    i = 0
    weapon.sort_by!{ |v| [v.wtype_id,           i += 1]}
    i = 0
    armor.sort_by!{  |v| [v.price,              i += 1]}
    i = 0
    armor.sort_by!{  |v| [v.params[5],          i += 1]}
    i = 0
    armor.sort_by!{  |v| [v.params[3],          i += 1]}
    i = 0
    armor.sort_by!{  |v| [v.atype_id,           i += 1]}
    i = 0
    armor.sort_by!{  |v| [v.etype_id,           i += 1]}
    i = 0
    state.sort_by!{  |v| [v.priority,           i += 1]}
    i = 0
    state.sort_by!{  |v| [v.restriction,        i += 1]}
  when 1  # 名前
    i = 0
    skill.sort_by!{  |v| [v.name,               i += 1]}
    i = 0
    item.sort_by!{   |v| [v.name,               i += 1]}
    i = 0
    weapon.sort_by!{ |v| [v.name,               i += 1]}
    i = 0
    armor.sort_by!{  |v| [v.name,               i += 1]}
    i = 0
    state.sort_by!{  |v| [v.name,               i += 1]}
  when 2  # 価格(アイテム、武器、防具のみ)
    i = 0
    item.sort_by!{   |v| [v.price,              i += 1]}
    i = 0
    weapon.sort_by!{ |v| [v.price,              i += 1]}
    i = 0
    armor.sort_by!{  |v| [v.price,              i += 1]}
  end
  skill = [nil, attack, guard] + skill
  item.unshift(nil)
  weapon.unshift(nil)
  armor.unshift(nil)
  state = [nil, dead] + state  
  for i in 1...skill.size
    skill[i].id = i
  end
  for i in 1...item.size
    item[i].id = i
  end
  for i in 1...weapon.size
    weapon[i].id = i
  end
  for i in 1...armor.size
    armor[i].id = i
  end
  for i in 1...state.size
    state[i].id = i
  end
  save_data(skill,  "Data/Skills.rvdata2")
  save_data(item,   "Data/Items.rvdata2")
  save_data(weapon, "Data/Weapons.rvdata2")
  save_data(armor,  "Data/Armors.rvdata2")
  save_data(state,  "Data/States.rvdata2")
end