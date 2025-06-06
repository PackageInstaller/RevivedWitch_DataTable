-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleai41.lua 

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
local Agent = require("luabehavior.agent.battleai")
local CreateNewBattleAI41 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, IfElse, Selector
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = (IfElse.Create)()
  local node4 = ((Agent.MonsterHasBuff).Create)(behavior, 0, 20447)
  local node5 = (Sequence.Create)()
  local node6 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201331)
  local node7 = ((Agent.UseSkill).Create)(behavior, 201331)
  node5:AddTask(node6)
  node5:AddTask(node7)
  local node8 = (Selector.Create)()
  local node9 = (Selector.Create)()
  local node10 = (Sequence.Create)()
  local node11 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 80, 88)
  local node12 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201131)
  local node13 = ((Agent.UseSkill).Create)(behavior, 201131)
  node10:AddTask(node11)
  node10:AddTask(node12)
  node10:AddTask(node13)
  local node14 = (Sequence.Create)()
  local node15 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 60, 68)
  local node16 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201131)
  local node17 = ((Agent.UseSkill).Create)(behavior, 201131)
  node14:AddTask(node15)
  node14:AddTask(node16)
  node14:AddTask(node17)
  local node18 = (Sequence.Create)()
  local node19 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 40, 48)
  local node20 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201131)
  local node21 = ((Agent.UseSkill).Create)(behavior, 201131)
  node18:AddTask(node19)
  node18:AddTask(node20)
  node18:AddTask(node21)
  local node22 = (Sequence.Create)()
  local node23 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 30)
  local node24 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201131)
  local node25 = ((Agent.UseSkill).Create)(behavior, 201131)
  node22:AddTask(node23)
  node22:AddTask(node24)
  node22:AddTask(node25)
  node9:AddTask(node10)
  node9:AddTask(node14)
  node9:AddTask(node18)
  node9:AddTask(node22)
  local node26 = (Sequence.Create)()
  local node27 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 40)
  local node28 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201332)
  local node29 = ((Agent.UseSkill).Create)(behavior, 201332)
  node26:AddTask(node27)
  node26:AddTask(node28)
  node26:AddTask(node29)
  local node30 = (Sequence.Create)()
  local node31 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201333)
  local node32 = ((Agent.UseSkill).Create)(behavior, 201333)
  local node33 = (Sequence.Create)()
  local node34 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201130)
  local node35 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201128)
  local node36 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201332)
  node33:AddTask(node34)
  node33:AddTask(node35)
  node33:AddTask(node36)
  node30:AddTask(node31)
  node30:AddTask(node32)
  node30:AddTask(node33)
  local node37 = (Sequence.Create)()
  local node38 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201130)
  local node39 = ((Agent.UseSkill).Create)(behavior, 201130)
  node37:AddTask(node38)
  node37:AddTask(node39)
  local node40 = (Sequence.Create)()
  local node41 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201128)
  local node42 = ((Agent.UseSkill).Create)(behavior, 201128)
  node40:AddTask(node41)
  node40:AddTask(node42)
  node8:AddTask(node9)
  node8:AddTask(node26)
  node8:AddTask(node30)
  node8:AddTask(node37)
  node8:AddTask(node40)
  node3:AddTask(node4, node5, node8)
  node1:AddTask(node2)
  node1:AddTask(node3)
  return node1
end

return CreateNewBattleAI41

