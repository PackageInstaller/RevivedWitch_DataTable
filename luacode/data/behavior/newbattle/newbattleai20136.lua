-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleai20136.lua 

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
local CreateNewBattleAI20136 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, LoopUntil, IfElse
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IsBattleEnd).Create)(behavior)
  local node3 = ((Agent.IsRoleDead).Create)(behavior)
  local node4 = ((Agent.IsRoleInOtherSkill).Create)(behavior)
  local node5 = (Selector.Create)()
  local node6 = (Sequence.Create)()
  local node7 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 60)
  local node8 = (LoopUntil.Create)(behavior, 1, true)
  local node9 = ((Agent.UseSkill).Create)(behavior, 201016)
  node8:SetTask(node9)
  node6:AddTask(node7)
  node6:AddTask(node8)
  local node10 = (Sequence.Create)()
  local node11 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 120)
  local node12 = (LoopUntil.Create)(behavior, 1, true)
  local node13 = ((Agent.UseSkill).Create)(behavior, 201012)
  node12:SetTask(node13)
  node10:AddTask(node11)
  node10:AddTask(node12)
  local node14 = (Sequence.Create)()
  local node15 = ((Agent.MonsterSelfCurrentHPMoreEqual).Create)(behavior, 67)
  local node16 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201012)
  local node17 = ((Agent.UseSkill).Create)(behavior, 201012)
  local node18 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201015)
  local node19 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201047)
  local node20 = ((Agent.UseSkill).Create)(behavior, 201047)
  node14:AddTask(node15)
  node14:AddTask(node16)
  node14:AddTask(node17)
  node14:AddTask(node18)
  node14:AddTask(node19)
  node14:AddTask(node20)
  local node21 = (Sequence.Create)()
  local node22 = ((Agent.MonsterSelfCurrentHPLessEqual).Create)(behavior, 67)
  local node23 = (LoopUntil.Create)(behavior, 1, true)
  local node24 = (Sequence.Create)()
  local node25 = ((Agent.UseSkill).Create)(behavior, 201013)
  local node26 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201015)
  node24:AddTask(node25)
  node24:AddTask(node26)
  node23:SetTask(node24)
  node21:AddTask(node22)
  node21:AddTask(node23)
  local node27 = (Sequence.Create)()
  local node28 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 20, 27)
  local node29 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201058)
  local node30 = ((Agent.UseSkill).Create)(behavior, 201058)
  node27:AddTask(node28)
  node27:AddTask(node29)
  node27:AddTask(node30)
  local node31 = (Sequence.Create)()
  local node32 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 40, 47)
  local node33 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201058)
  local node34 = ((Agent.UseSkill).Create)(behavior, 201058)
  node31:AddTask(node32)
  node31:AddTask(node33)
  node31:AddTask(node34)
  local node35 = (Sequence.Create)()
  local node36 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 60, 67)
  local node37 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201058)
  local node38 = ((Agent.UseSkill).Create)(behavior, 201058)
  node35:AddTask(node36)
  node35:AddTask(node37)
  node35:AddTask(node38)
  local node39 = (Sequence.Create)()
  local node40 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 80, 87)
  local node41 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201058)
  local node42 = ((Agent.UseSkill).Create)(behavior, 201058)
  node39:AddTask(node40)
  node39:AddTask(node41)
  node39:AddTask(node42)
  local node43 = (Sequence.Create)()
  local node44 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 7)
  local node45 = (LoopUntil.Create)(behavior, 1, true)
  local node46 = ((Agent.UseSkill).Create)(behavior, 201014)
  node45:SetTask(node46)
  node43:AddTask(node44)
  node43:AddTask(node45)
  local node47 = (IfElse.Create)()
  local node48 = ((Agent.IfHasCurrentBuffByBuffID).Create)(behavior, 20014)
  local node49 = (Sequence.Create)()
  local node50 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201015)
  local node51 = ((Agent.UseSkill).Create)(behavior, 201015)
  local node52 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201012)
  node49:AddTask(node50)
  node49:AddTask(node51)
  node49:AddTask(node52)
  local node53 = (Sequence.Create)()
  local node54 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201012)
  local node55 = ((Agent.UseSkill).Create)(behavior, 201012)
  local node56 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201015)
  local node57 = (Sequence.Create)()
  local node58 = ((Agent.MonsterSelfCurrentHPMoreEqual).Create)(behavior, 18)
  local node59 = (Sequence.Create)()
  local node60 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201047)
  local node61 = ((Agent.UseSkill).Create)(behavior, 201047)
  node59:AddTask(node60)
  node59:AddTask(node61)
  node57:AddTask(node58)
  node57:AddTask(node59)
  node53:AddTask(node54)
  node53:AddTask(node55)
  node53:AddTask(node56)
  node53:AddTask(node57)
  node47:AddTask(node48, node49, node53)
  node5:AddTask(node6)
  node5:AddTask(node10)
  node5:AddTask(node14)
  node5:AddTask(node21)
  node5:AddTask(node27)
  node5:AddTask(node31)
  node5:AddTask(node35)
  node5:AddTask(node39)
  node5:AddTask(node43)
  node5:AddTask(node47)
  node1:AddTask(node2)
  node1:AddTask(node3)
  node1:AddTask(node4)
  node1:AddTask(node5)
  return node1
end

return CreateNewBattleAI20136

