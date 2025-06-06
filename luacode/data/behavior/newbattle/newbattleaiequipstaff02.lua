-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleaiequipstaff02.lua 

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
local CreateNewBattleAIEquipStaff02 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, LoopUntil
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = (Selector.Create)()
  local node4 = (Sequence.Create)()
  local node5 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 2400)
  local node6 = ((Agent.UseSkill).Create)(behavior, 201559)
  node4:AddTask(node5)
  node4:AddTask(node6)
  local node7 = (Sequence.Create)()
  local node8 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 1)
  local node9 = (Selector.Create)()
  local node10 = (LoopUntil.Create)(behavior, 1, true)
  local node11 = ((Agent.UseSkill).Create)(behavior, 201558)
  node10:SetTask(node11)
  local node12 = (LoopUntil.Create)(behavior, 1, true)
  local node13 = ((Agent.UseSkill).Create)(behavior, 201558)
  node12:SetTask(node13)
  node9:AddTask(node10)
  node9:AddTask(node12)
  node7:AddTask(node8)
  node7:AddTask(node9)
  local node14 = (Sequence.Create)()
  local node15 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 300)
  local node16 = (Selector.Create)()
  local node17 = (Sequence.Create)()
  local node18 = (LoopUntil.Create)(behavior, 1, true)
  local node19 = ((Agent.UseSkill).Create)(behavior, 201556)
  node18:SetTask(node19)
  node17:AddTask(node18)
  local node20 = (Sequence.Create)()
  local node21 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201557)
  local node22 = ((Agent.UseSkill).Create)(behavior, 201557)
  node20:AddTask(node21)
  node20:AddTask(node22)
  local node23 = (Sequence.Create)()
  local node24 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201558)
  local node25 = ((Agent.UseSkill).Create)(behavior, 201558)
  node23:AddTask(node24)
  node23:AddTask(node25)
  node16:AddTask(node17)
  node16:AddTask(node20)
  node16:AddTask(node23)
  node14:AddTask(node15)
  node14:AddTask(node16)
  node3:AddTask(node4)
  node3:AddTask(node7)
  node3:AddTask(node14)
  node1:AddTask(node2)
  node1:AddTask(node3)
  return node1
end

return CreateNewBattleAIEquipStaff02

