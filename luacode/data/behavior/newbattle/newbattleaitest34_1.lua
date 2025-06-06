-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleaitest34_1.lua 

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
local CreateNewBattleAITest34_1 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, LoopUntil, SelectorProbability, Weight
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = ((Agent.MonsterSkillCdRandom).Create)(behavior, 1, 30)
  local node4 = (Selector.Create)()
  local node5 = (Sequence.Create)()
  local node6 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201675)
  local node7 = (LoopUntil.Create)(behavior, 1, true)
  local node8 = ((Agent.UseSkill).Create)(behavior, 201675)
  node7:SetTask(node8)
  node5:AddTask(node6)
  node5:AddTask(node7)
  local node9 = (Sequence.Create)()
  local node10 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201657)
  local node11 = ((Agent.UseSkill).Create)(behavior, 201657)
  node9:AddTask(node10)
  node9:AddTask(node11)
  local node12 = (SelectorProbability.Create)(data.RandomFunction)
  local node13 = (Weight.Create)(3)
  local node14 = (Sequence.Create)()
  local node15 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201658)
  local node16 = ((Agent.UseSkill).Create)(behavior, 201658)
  local node17 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201657)
  node14:AddTask(node15)
  node14:AddTask(node16)
  node14:AddTask(node17)
  node13:SetTask(node14)
  local node18 = (Weight.Create)(7)
  local node19 = (Sequence.Create)()
  local node20 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201659)
  local node21 = ((Agent.UseSkill).Create)(behavior, 201659)
  local node22 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201657)
  node19:AddTask(node20)
  node19:AddTask(node21)
  node19:AddTask(node22)
  node18:SetTask(node19)
  node12:AddTask(node13)
  node12:AddTask(node18)
  local node23 = (Sequence.Create)()
  local node24 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 45, 60)
  local node25 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201660)
  local node26 = (LoopUntil.Create)(behavior, 1, true)
  local node27 = ((Agent.UseSkill).Create)(behavior, 201660)
  node26:SetTask(node27)
  local node28 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201657)
  node23:AddTask(node24)
  node23:AddTask(node25)
  node23:AddTask(node26)
  node23:AddTask(node28)
  local node29 = (Sequence.Create)()
  local node30 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 15, 40)
  local node31 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201660)
  local node32 = (LoopUntil.Create)(behavior, 1, true)
  local node33 = ((Agent.UseSkill).Create)(behavior, 201660)
  node32:SetTask(node33)
  local node34 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201657)
  node29:AddTask(node30)
  node29:AddTask(node31)
  node29:AddTask(node32)
  node29:AddTask(node34)
  node4:AddTask(node5)
  node4:AddTask(node9)
  node4:AddTask(node12)
  node4:AddTask(node23)
  node4:AddTask(node29)
  node1:AddTask(node2)
  node1:AddTask(node3)
  node1:AddTask(node4)
  return node1
end

return CreateNewBattleAITest34_1

