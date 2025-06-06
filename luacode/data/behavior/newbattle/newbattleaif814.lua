-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleaif814.lua 

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
local Createnewbattleaif814 = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, LoopUntil
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = (Selector.Create)()
  local node4 = (Sequence.Create)()
  local node5 = ((Agent.MonsterHpLineNum).Create)(behavior, "le", 3)
  local node6 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 60)
  local node7 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201508)
  local node8 = (LoopUntil.Create)(behavior, 1, true)
  local node9 = ((Agent.UseSkill).Create)(behavior, 201508)
  node8:SetTask(node9)
  node4:AddTask(node5)
  node4:AddTask(node6)
  node4:AddTask(node7)
  node4:AddTask(node8)
  local node10 = (Sequence.Create)()
  local node11 = ((Agent.MonsterHpLineNum).Create)(behavior, "le", 2)
  local node12 = ((Agent.PersonNum).Create)(behavior, 2, "eq", 1)
  local node13 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 60)
  local node14 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201508)
  local node15 = (LoopUntil.Create)(behavior, 1, true)
  local node16 = ((Agent.UseSkill).Create)(behavior, 201508)
  node15:SetTask(node16)
  node10:AddTask(node11)
  node10:AddTask(node12)
  node10:AddTask(node13)
  node10:AddTask(node14)
  node10:AddTask(node15)
  local node17 = (Sequence.Create)()
  local node18 = ((Agent.MonsterHpLineNum).Create)(behavior, "le", 1)
  local node19 = ((Agent.PersonNum).Create)(behavior, 2, "eq", 1)
  local node20 = ((Agent.MonsterHpLinePercentSection).Create)(behavior, 0, 0, 60)
  local node21 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201508)
  local node22 = (LoopUntil.Create)(behavior, 1, true)
  local node23 = ((Agent.UseSkill).Create)(behavior, 201508)
  node22:SetTask(node23)
  node17:AddTask(node18)
  node17:AddTask(node19)
  node17:AddTask(node20)
  node17:AddTask(node21)
  node17:AddTask(node22)
  local node24 = (Sequence.Create)()
  local node25 = ((Agent.MonsterHpLineNum).Create)(behavior, "le", 2)
  local node26 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201507)
  local node27 = ((Agent.UseSkill).Create)(behavior, 201507)
  node24:AddTask(node25)
  node24:AddTask(node26)
  node24:AddTask(node27)
  local node28 = (Sequence.Create)()
  local node29 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201506)
  local node30 = ((Agent.UseSkill).Create)(behavior, 201506)
  node28:AddTask(node29)
  node28:AddTask(node30)
  local node31 = (Sequence.Create)()
  local node32 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201505)
  local node33 = ((Agent.UseSkill).Create)(behavior, 201505)
  node31:AddTask(node32)
  node31:AddTask(node33)
  node3:AddTask(node4)
  node3:AddTask(node10)
  node3:AddTask(node17)
  node3:AddTask(node24)
  node3:AddTask(node28)
  node3:AddTask(node31)
  node1:AddTask(node2)
  node1:AddTask(node3)
  return node1
end

return Createnewbattleaif814

