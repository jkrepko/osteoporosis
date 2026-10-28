defmodule Osteoporosis.Domain.Conditions do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :conditions

  import Osteoporosis.DSL
  
  # defmacro declare_signals do
	# quote do
	  require Osteoporosis.Domain.Conditions.ConditionsAF
	  require Osteoporosis.Domain.Conditions.ConditionsGP
	  require Osteoporosis.Domain.Conditions.ConditionsQZ

	  Osteoporosis.Domain.Conditions.ConditionsAF.conditions_a_f()
	  Osteoporosis.Domain.Conditions.ConditionsGP.conditions_g_p()
	  Osteoporosis.Domain.Conditions.ConditionsQZ.conditions_q_z()
	# end
  # end
end