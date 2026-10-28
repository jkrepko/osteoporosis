defmodule Osteoporosis.Domain.Interventions do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :interventions

  import Osteoporosis.DSL
  
  # defmacro declare_signals do
	# quote do
	  require Osteoporosis.Domain.Interventions.InterventionsAC
	  require Osteoporosis.Domain.Interventions.InterventionsDF
	  require Osteoporosis.Domain.Interventions.InterventionsGL
	  require Osteoporosis.Domain.Interventions.InterventionsMP
	  require Osteoporosis.Domain.Interventions.InterventionsQS
	  require Osteoporosis.Domain.Interventions.InterventionsTZ

	  Osteoporosis.Domain.Interventions.InterventionsAC.interventions_a_c()
	  Osteoporosis.Domain.Interventions.InterventionsDF.interventions_d_f()
	  Osteoporosis.Domain.Interventions.InterventionsGL.interventions_g_l()
	  Osteoporosis.Domain.Interventions.InterventionsMP.interventions_m_p()
	  Osteoporosis.Domain.Interventions.InterventionsQS.interventions_q_s()
	  Osteoporosis.Domain.Interventions.InterventionsTZ.interventions_t_z()
	# end
  # end
end