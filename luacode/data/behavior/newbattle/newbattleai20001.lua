-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleai20001.lua 

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
local CreateNewBattleAI20001 = function(behavior)
  -- function num : 0_0 , upvalues : Selector, Sequence, Agent
  local data = behavior._data
  local node1 = (Selector.Create)()
  local node2 = (Sequence.Create)()
  local node3 = ((Agent.TimeCycle).Create)(behavior, 900)
  local node4 = ((Agent.SummonMonster).Create)(behavior, 2, 18, 20132)
  node2:AddTask(node3)
  node2:AddTask(node4)
  local node5 = (Sequence.Create)()
  local node6 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node7 = (Selector.Create)()
  local node8 = (Sequence.Create)()
  local node9 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 20)
  local node10 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201046)
  local node11 = ((Agent.UseSkill).Create)(behavior, 201046)
  local node12 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201044)
  local node13 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201045)
  node8:AddTask(node9)
  node8:AddTask(node10)
  node8:AddTask(node11)
  node8:AddTask(node12)
  node8:AddTask(node13)
  local node14 = (Selector.Create)()
  local node15 = (Sequence.Create)()
  local node16 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201044)
  local node17 = ((Agent.UseSkill).Create)(behavior, 201044)
  local node18 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201216)
  node15:AddTask(node16)
  node15:AddTask(node17)
  node15:AddTask(node18)
  local node19 = (Sequence.Create)()
  local node20 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201045)
  local node21 = ((Agent.UseSkill).Create)(behavior, 201045)
  node19:AddTask(node20)
  node19:AddTask(node21)
  local node22 = (Sequence.Create)()
  local node23 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201216)
  local node24 = ((Agent.UseSkill).Create)(behavior, 201216)
  node22:AddTask(node23)
  node22:AddTask(node24)
  node14:AddTask(node15)
  node14:AddTask(node19)
  node14:AddTask(node22)
  node7:AddTask(node8)
  node7:AddTask(node14)
  node5:AddTask(node6)
  node5:AddTask(node7)
  node1:AddTask(node2)
  node1:AddTask(node5)
  return node1
end

return CreateNewBattleAI20001

