-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleai2_weak.lua 

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
local CreateNewBattleAI2_weak = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IsBattleEnd).Create)(behavior)
  local node3 = ((Agent.IsRoleDead).Create)(behavior)
  local node4 = ((Agent.IsRoleInOtherSkill).Create)(behavior)
  local node5 = (Selector.Create)()
  local node6 = (Sequence.Create)()
  local node7 = ((Agent.BattleStartFramesLessEqual).Create)(behavior, 330)
  local node8 = (Selector.Create)()
  local node9 = (Sequence.Create)()
  local node10 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201008)
  local node11 = ((Agent.UseSkill).Create)(behavior, 201008)
  local node12 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201255)
  node9:AddTask(node10)
  node9:AddTask(node11)
  node9:AddTask(node12)
  local node13 = (Sequence.Create)()
  local node14 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201017)
  local node15 = ((Agent.UseSkill).Create)(behavior, 201017)
  local node16 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201254)
  node13:AddTask(node14)
  node13:AddTask(node15)
  node13:AddTask(node16)
  node8:AddTask(node9)
  node8:AddTask(node13)
  node6:AddTask(node7)
  node6:AddTask(node8)
  local node17 = (Sequence.Create)()
  local node18 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 330)
  local node19 = (Selector.Create)()
  local node20 = (Sequence.Create)()
  local node21 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201254)
  local node22 = ((Agent.UseSkill).Create)(behavior, 201254)
  node20:AddTask(node21)
  node20:AddTask(node22)
  local node23 = (Sequence.Create)()
  local node24 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201255)
  local node25 = ((Agent.UseSkill).Create)(behavior, 201255)
  node23:AddTask(node24)
  node23:AddTask(node25)
  node19:AddTask(node20)
  node19:AddTask(node23)
  node17:AddTask(node18)
  node17:AddTask(node19)
  node5:AddTask(node6)
  node5:AddTask(node17)
  node1:AddTask(node2)
  node1:AddTask(node3)
  node1:AddTask(node4)
  node1:AddTask(node5)
  return node1
end

return CreateNewBattleAI2_weak

