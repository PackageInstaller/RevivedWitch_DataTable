-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleaiequipsword02.lua 

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
local CreateNewBattleAIEquipSword02 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, LoopUntil
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = (Selector.Create)()
  local node4 = (Sequence.Create)()
  local node5 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 2400)
  local node6 = (LoopUntil.Create)(behavior, 2, true)
  local node7 = ((Agent.UseSkill).Create)(behavior, 201555)
  node6:SetTask(node7)
  node4:AddTask(node5)
  node4:AddTask(node6)
  local node8 = (Sequence.Create)()
  local node9 = ((Agent.MonsterHpLineNum).Create)(behavior, "eq", 1)
  local node10 = (Selector.Create)()
  local node11 = (LoopUntil.Create)(behavior, 1, true)
  local node12 = ((Agent.UseSkill).Create)(behavior, 201553)
  node11:SetTask(node12)
  local node13 = (LoopUntil.Create)(behavior, 1, true)
  local node14 = ((Agent.UseSkill).Create)(behavior, 201553)
  node13:SetTask(node14)
  node10:AddTask(node11)
  node10:AddTask(node13)
  node8:AddTask(node9)
  node8:AddTask(node10)
  local node15 = (Sequence.Create)()
  local node16 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 300)
  local node17 = (Selector.Create)()
  local node18 = (Sequence.Create)()
  local node19 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 600)
  local node20 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201554)
  local node21 = ((Agent.UseSkill).Create)(behavior, 201554)
  local node22 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201553)
  node18:AddTask(node19)
  node18:AddTask(node20)
  node18:AddTask(node21)
  node18:AddTask(node22)
  local node23 = (Sequence.Create)()
  local node24 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201553)
  local node25 = ((Agent.UseSkill).Create)(behavior, 201553)
  node23:AddTask(node24)
  node23:AddTask(node25)
  node17:AddTask(node18)
  node17:AddTask(node23)
  node15:AddTask(node16)
  node15:AddTask(node17)
  node3:AddTask(node4)
  node3:AddTask(node8)
  node3:AddTask(node15)
  node1:AddTask(node2)
  node1:AddTask(node3)
  return node1
end

return CreateNewBattleAIEquipSword02

