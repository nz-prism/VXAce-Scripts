#==============================================================================
# �� �f�[�^�x�[�X�\�[�g
#------------------------------------------------------------------------------
# ver. 1.0.0
# by nz_prism
# https://github.com/nz-prism/VXAce-Scripts/blob/master/Sort.rb
#------------------------------------------------------------------------------
# �� �������@
# 1. �X�N���v�g�G�f�B�^�ɂāA�u�� �f�ށv�́u( �����ɒǉ� )�v�ȉ��ɐV�K�Z�N�V����
#    ��}�����Ă��������B
# 2. 1 �̃Z�N�V�����ɂ��̃X�N���v�g�S�̂�\��t���Ă��������B
# 
# �� �g�p���@
# 1. �f�[�^������������X�N���v�g�Ȃ̂ŁA�K���o�b�N�A�b�v������肭�������B
# 2. �C�x���g�R�}���h�u�X�N���v�g�v�ɂ� sort_all_items! �Ɠ��͂���ƁA
#    ���̃C�x���g���s���Ƀ\�[�g�����s����܂��B
# 3. �\�[�g���s����̓G�f�B�^��ɂ͔��f����Ȃ��̂ŁA��x�v���W�F�N�g��
#    ���Ă��������B
# 4. �ēx�v���W�F�N�g�𗧂��グ�A�f�[�^�x�[�X���\�[�g����Ă��邩�m�F���Ă�����
#    ���B
#------------------------------------------------------------------------------
# �{�f�ނ�MIT���C�Z���X�ɂă����[�X����Ă��܂��B
# https://opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
# 2012/07/24 1.0.0 ���J
#==============================================================================

#--------------------------------------------------------------------------
# �� �f�[�^�x�[�X�̃X�L���A�A�C�e���A����A�h��A�X�e�[�g���\�[�g
#     type = 0 : ���(���i����ʗʓ����l�����������\�[�g�A�����ȗ��������I��)
#     type = 1 : ���O
#     type = 2 : ���i
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
  when 0  # ���
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
  when 1  # ���O
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
  when 2  # ���i(�A�C�e���A����A�h��̂�)
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