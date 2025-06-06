-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleai20228.lua 

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
local CreateNewBattleAI20228 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, WaitFrames, LoopUntil
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = (Selector.Create)()
  local node4 = (Sequence.Create)()
  local node5 = (WaitFrames.Create)(60)
  local node6 = (LoopUntil.Create)(behavior, 1, true)
  local node7 = ((Agent.UseSkill).Create)(behavior, 201421)
  node6:SetTask(node7)
  node4:AddTask(node5)
  node4:AddTask(node6)
  local node8 = (Sequence.Create)()
  local node9 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 78)
  local node10 = (LoopUntil.Create)(behavior, 1, true)
  local node11 = ((Agent.UseSkill).Create)(behavior, 201422)
  node10:SetTask(node11)
  node8:AddTask(node9)
  node8:AddTask(node10)
  local node12 = (Sequence.Create)()
  local node13 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 44)
  local node14 = (LoopUntil.Create)(behavior, 1, true)
  local node15 = ((Agent.UseSkill).Create)(behavior, 201422)
  node14:SetTask(node15)
  node12:AddTask(node13)
  node12:AddTask(node14)
  local node16 = (Sequence.Create)()
  local node17 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 11)
  local node18 = (LoopUntil.Create)(behavior, 1, true)
  local node19 = ((Agent.UseSkill).Create)(behavior, 201422)
  node18:SetTask(node19)
  node16:AddTask(node17)
  node16:AddTask(node18)
  local node20 = (Selector.Create)()
  local node21 = (Sequence.Create)()
  local node22 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201420)
  local node23 = ((Agent.UseSkill).Create)(behavior, 201420)
  node21:AddTask(node22)
  node21:AddTask(node23)
  local node24 = (Sequence.Create)()
  local node25 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201421)
  local node26 = ((Agent.UseSkill).Create)(behavior, 201421)
  node24:AddTask(node25)
  node24:AddTask(node26)
  local node27 = (Sequence.Create)()
  local node28 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201418)
  local node29 = ((Agent.UseSkill).Create)(behavior, 201418)
  node27:AddTask(node28)
  node27:AddTask(node29)
  local node30 = (Sequence.Create)()
  local node31 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201419)
  local node32 = ((Agent.UseSkill).Create)(behavior, 201419)
  node30:AddTask(node31)
  node30:AddTask(node32)
  node20:AddTask(node21)
  node20:AddTask(node24)
  node20:AddTask(node27)
  node20:AddTask(node30)
  node3:AddTask(node4)
  node3:AddTask(node8)
  node3:AddTask(node12)
  node3:AddTask(node16)
  node3:AddTask(node20)
  node1:AddTask(node2)
  node1:AddTask(node3)
  return node1
end

return CreateNewBattleAI20228

