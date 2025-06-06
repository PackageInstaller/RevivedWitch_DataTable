-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleai20229.lua 

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
local CreateNewBattleAI20229 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, Not, SelectorProbability, Weight
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = (Selector.Create)()
  local node4 = (Sequence.Create)()
  local node5 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201412)
  local node6 = ((Agent.UseSkill).Create)(behavior, 201412)
  node4:AddTask(node5)
  node4:AddTask(node6)
  local node7 = (Sequence.Create)()
  local node8 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201413)
  local node9 = ((Agent.UseSkill).Create)(behavior, 201413)
  node7:AddTask(node8)
  node7:AddTask(node9)
  local node10 = (Sequence.Create)()
  local node11 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201416)
  local node12 = (Not.Create)(behavior)
  local node13 = ((Agent.MonsterHasBuff).Create)(behavior, 20229, 20905)
  node12:SetTask(node13)
  local node14 = ((Agent.UseSkill).Create)(behavior, 201416)
  node10:AddTask(node11)
  node10:AddTask(node12)
  node10:AddTask(node14)
  local node15 = (SelectorProbability.Create)(data.RandomFunction)
  local node16 = (Weight.Create)(1)
  local node17 = (Sequence.Create)()
  local node18 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201415)
  local node19 = ((Agent.UseSkill).Create)(behavior, 201415)
  local node20 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201414)
  local node21 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201416)
  node17:AddTask(node18)
  node17:AddTask(node19)
  node17:AddTask(node20)
  node17:AddTask(node21)
  node16:SetTask(node17)
  local node22 = (Weight.Create)(1)
  local node23 = (Sequence.Create)()
  local node24 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201414)
  local node25 = ((Agent.UseSkill).Create)(behavior, 201414)
  local node26 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201415)
  local node27 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201416)
  node23:AddTask(node24)
  node23:AddTask(node25)
  node23:AddTask(node26)
  node23:AddTask(node27)
  node22:SetTask(node23)
  node15:AddTask(node16)
  node15:AddTask(node22)
  local node28 = (Sequence.Create)()
  local node29 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201417)
  local node30 = ((Agent.UseSkill).Create)(behavior, 201417)
  node28:AddTask(node29)
  node28:AddTask(node30)
  node3:AddTask(node4)
  node3:AddTask(node7)
  node3:AddTask(node10)
  node3:AddTask(node15)
  node3:AddTask(node28)
  node1:AddTask(node2)
  node1:AddTask(node3)
  return node1
end

return CreateNewBattleAI20229

