-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.3 from https://github.com/viruscamp/luadec
-- Command line: -se UTF8 luacode/data/behavior/newbattle/newbattleai20057s.lua 

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
local CreateNewBattleAI20057s = function(behavior)
  -- function num : 0_0 , upvalues : Sequence, Agent, Selector, LoopUntil
  local data = behavior._data
  local node1 = (Sequence.Create)()
  local node2 = ((Agent.IfHasEnoughConditionsUseSkill).Create)(behavior)
  local node3 = (Selector.Create)()
  local node4 = (Sequence.Create)()
  local node5 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 67, 76)
  local node6 = (LoopUntil.Create)(behavior, 1, true)
  local node7 = ((Agent.UseSkill).Create)(behavior, 201264)
  node6:SetTask(node7)
  node4:AddTask(node5)
  node4:AddTask(node6)
  local node8 = (Sequence.Create)()
  local node9 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 33, 43)
  local node10 = (LoopUntil.Create)(behavior, 1, true)
  local node11 = ((Agent.UseSkill).Create)(behavior, 201264)
  node10:SetTask(node11)
  node8:AddTask(node9)
  node8:AddTask(node10)
  local node12 = (Sequence.Create)()
  local node13 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 10)
  local node14 = (LoopUntil.Create)(behavior, 1, true)
  local node15 = ((Agent.UseSkill).Create)(behavior, 201264)
  node14:SetTask(node15)
  node12:AddTask(node13)
  node12:AddTask(node14)
  local node16 = (Selector.Create)()
  local node17 = (Sequence.Create)()
  local node18 = ((Agent.BattleStartFramesMoreEqual).Create)(behavior, 200)
  local node19 = (LoopUntil.Create)(behavior, 1, true)
  local node20 = ((Agent.UseSkill).Create)(behavior, 201302)
  node19:SetTask(node20)
  node17:AddTask(node18)
  node17:AddTask(node19)
  local node21 = (Sequence.Create)()
  local node22 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201265)
  local node23 = ((Agent.UseSkill).Create)(behavior, 201265)
  node21:AddTask(node22)
  node21:AddTask(node23)
  local node24 = (Sequence.Create)()
  local node25 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201264)
  local node26 = ((Agent.UseSkill).Create)(behavior, 201264)
  local node27 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201040)
  node24:AddTask(node25)
  node24:AddTask(node26)
  node24:AddTask(node27)
  local node28 = (Sequence.Create)()
  local node29 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201303)
  local node30 = ((Agent.UseSkill).Create)(behavior, 201303)
  local node31 = ((Agent.ClearSkillCurrentTime).Create)(behavior, 201300)
  node28:AddTask(node29)
  node28:AddTask(node30)
  node28:AddTask(node31)
  local node32 = (Sequence.Create)()
  local node33 = ((Agent.MonsterHpPercentSection).Create)(behavior, 0, 0, 33)
  local node34 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201301)
  local node35 = ((Agent.UseSkill).Create)(behavior, 201301)
  node32:AddTask(node33)
  node32:AddTask(node34)
  node32:AddTask(node35)
  local node36 = (Sequence.Create)()
  local node37 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201040)
  local node38 = ((Agent.UseSkill).Create)(behavior, 201040)
  node36:AddTask(node37)
  node36:AddTask(node38)
  local node39 = (Sequence.Create)()
  local node40 = ((Agent.MonsterSkillIsInCD).Create)(behavior, 201300)
  local node41 = ((Agent.UseSkill).Create)(behavior, 201300)
  node39:AddTask(node40)
  node39:AddTask(node41)
  node16:AddTask(node17)
  node16:AddTask(node21)
  node16:AddTask(node24)
  node16:AddTask(node28)
  node16:AddTask(node32)
  node16:AddTask(node36)
  node16:AddTask(node39)
  node3:AddTask(node4)
  node3:AddTask(node8)
  node3:AddTask(node12)
  node3:AddTask(node16)
  node1:AddTask(node2)
  node1:AddTask(node3)
  return node1
end

return CreateNewBattleAI20057s

