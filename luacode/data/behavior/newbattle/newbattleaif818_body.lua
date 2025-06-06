-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleaif818_body.lua 

-- params : ...
-- function num : 0 , upvalues : _ENV
local LoopUntil = require("luabehavior.decorators.loopuntil")
local Not = require("luabehavior.decorators.not")
local Weight = require("luabehavior.decorators.weight")
local IfElse = require("luabehavior.composites.ifelse")
local Parallel = require("luabehavior.composites.parallel")
local ReferencedBehavior = require("luabehavior.composites.referencedbehavior")
local Sequence = require("luabehavior.composites.sequence")
local Selector = require("luabehavior.composites.selector")
local SelectorProbability = require("luabehavior.composites.selectorprobability")
local Noop = require("luabehavior.actions.noop")
local Wait = require("luabehavior.actions.wait")
local WaitFrames = require("luabehavior.actions.waitframes")
local Agent = require("luabehavior.agent.battleai")
local Createnewbattleaif818_body = function(behavior)
  -- function num : 0_0 , upvalues : Selector, Sequence, Agent, WaitFrames, LoopUntil
  local data = behavior._data
  local node1 = (Selector.Create)()
  local node2 = (Sequence.Create)()
  local node3 = (Sequence.Create)()
  local node4 = ((Agent.MonsterHasBuff).Create)(behavior, 0, 20000)
  local node5 = (WaitFrames.Create)(30)
  local node6 = (LoopUntil.Create)(behavior, 1, true)
  local node7 = ((Agent.BattlePause).Create)(behavior, 3, "W3_Boss_Change2")
  node6:SetTask(node7)
  node3:AddTask(node4)
  node3:AddTask(node5)
  node3:AddTask(node6)
  local node8 = (Sequence.Create)()
  local node9 = ((Agent.MonsterHasBuff).Create)(behavior, 0, 20000)
  local node10 = (LoopUntil.Create)(behavior, 1, true)
  local node11 = ((Agent.SummonMonster).Create)(behavior, 2, 29, 20233)
  node10:SetTask(node11)
  node8:AddTask(node9)
  node8:AddTask(node10)
  node2:AddTask(node3)
  node2:AddTask(node8)
  local node12 = (Sequence.Create)()
  local node13 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node14 = (Selector.Create)()
  local node15 = (Sequence.Create)()
  local node16 = ((Agent.MonsterHpLineNum).Create)(behavior, "le", 2)
  local node17 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201574)
  local node18 = ((Agent.UseSkill).Create)(behavior, 201574)
  node15:AddTask(node16)
  node15:AddTask(node17)
  node15:AddTask(node18)
  local node19 = (Sequence.Create)()
  local node20 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 30)
  local node21 = (Selector.Create)()
  local node22 = (Sequence.Create)()
  local node23 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 1)
  local node24 = (LoopUntil.Create)(behavior, 1, true)
  local node25 = ((Agent.UseSkill).Create)(behavior, 201575)
  node24:SetTask(node25)
  node22:AddTask(node23)
  node22:AddTask(node24)
  local node26 = (Sequence.Create)()
  local node27 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 2)
  local node28 = (LoopUntil.Create)(behavior, 1, true)
  local node29 = ((Agent.UseSkill).Create)(behavior, 201575)
  node28:SetTask(node29)
  node26:AddTask(node27)
  node26:AddTask(node28)
  local node30 = (Sequence.Create)()
  local node31 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 3)
  local node32 = (LoopUntil.Create)(behavior, 1, true)
  local node33 = ((Agent.UseSkill).Create)(behavior, 201575)
  node32:SetTask(node33)
  node30:AddTask(node31)
  node30:AddTask(node32)
  node21:AddTask(node22)
  node21:AddTask(node26)
  node21:AddTask(node30)
  node19:AddTask(node20)
  node19:AddTask(node21)
  local node34 = (Sequence.Create)()
  local node35 = (Selector.Create)()
  local node36 = (Sequence.Create)()
  local node37 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 50)
  local node38 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 2)
  node36:AddTask(node37)
  node36:AddTask(node38)
  local node39 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 3)
  node35:AddTask(node36)
  node35:AddTask(node39)
  local node40 = (Selector.Create)()
  local node41 = (Sequence.Create)()
  local node42 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 2)
  local node43 = (LoopUntil.Create)(behavior, 1, true)
  local node44 = ((Agent.UseSkill).Create)(behavior, 201572)
  node43:SetTask(node44)
  local node45 = ((Agent.CameraAnimation).Create)(behavior, "4", 17)
  node41:AddTask(node42)
  node41:AddTask(node43)
  node41:AddTask(node45)
  local node46 = (Sequence.Create)()
  local node47 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 50)
  local node48 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 3)
  local node49 = (LoopUntil.Create)(behavior, 1, true)
  local node50 = ((Agent.UseSkill).Create)(behavior, 201572)
  node49:SetTask(node50)
  local node51 = ((Agent.CameraAnimation).Create)(behavior, "4", 17)
  node46:AddTask(node47)
  node46:AddTask(node48)
  node46:AddTask(node49)
  node46:AddTask(node51)
  local node52 = (Sequence.Create)()
  local node53 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201572)
  local node54 = ((Agent.UseSkill).Create)(behavior, 201572)
  local node55 = ((Agent.CameraAnimation).Create)(behavior, "4", 17)
  node52:AddTask(node53)
  node52:AddTask(node54)
  node52:AddTask(node55)
  node40:AddTask(node41)
  node40:AddTask(node46)
  node40:AddTask(node52)
  local node56 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201570)
  local node57 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201571)
  node34:AddTask(node35)
  node34:AddTask(node40)
  node34:AddTask(node56)
  node34:AddTask(node57)
  local node58 = (Sequence.Create)()
  local node59 = ((Agent.MonsterHpLineNum).Create)(behavior, "gt", 1)
  local node60 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 70)
  local node61 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201573)
  local node62 = ((Agent.UseSkill).Create)(behavior, 201573)
  local node63 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201570)
  local node64 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201571)
  node58:AddTask(node59)
  node58:AddTask(node60)
  node58:AddTask(node61)
  node58:AddTask(node62)
  node58:AddTask(node63)
  node58:AddTask(node64)
  local node65 = (Sequence.Create)()
  local node66 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201571)
  local node67 = ((Agent.UseSkill).Create)(behavior, 201571)
  local node68 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201570)
  node65:AddTask(node66)
  node65:AddTask(node67)
  node65:AddTask(node68)
  local node69 = (Sequence.Create)()
  local node70 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201570)
  local node71 = ((Agent.UseSkill).Create)(behavior, 201570)
  node69:AddTask(node70)
  node69:AddTask(node71)
  node14:AddTask(node15)
  node14:AddTask(node19)
  node14:AddTask(node34)
  node14:AddTask(node58)
  node14:AddTask(node65)
  node14:AddTask(node69)
  node12:AddTask(node13)
  node12:AddTask(node14)
  node1:AddTask(node2)
  node1:AddTask(node12)
  return node1
end

return Createnewbattleaif818_body

