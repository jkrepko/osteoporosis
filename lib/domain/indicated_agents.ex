defmodule Osteoporosis.Domain.IndicatedAgents do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :indicated_agents

  import Osteoporosis.DSL
  
  # defmacro declare_signals do
	# quote do
	  require Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsAC
	  require Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsDF
	  require Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsGL
	  require Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsMP
	  require Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsQS
	  require Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsTZ

	  Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsAC.indicated_agents_a_c()
	  Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsDF.indicated_agents_d_f()
	  Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsGL.indicated_agents_g_l()
	  Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsMP.indicated_agents_m_p()
	  Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsQS.indicated_agents_q_s()
	  Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsTZ.indicated_agents_t_z()
	# end
  # end
end