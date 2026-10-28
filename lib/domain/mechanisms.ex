defmodule Osteoporosis.Domain.Mechanisms do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :mechanisms

  import Osteoporosis.DSL
  
  # defmacro declare_signals do
	# quote do
	  require Osteoporosis.Domain.Mechanisms.MechanismsAC
	  require Osteoporosis.Domain.Mechanisms.MechanismsDF
	  require Osteoporosis.Domain.Mechanisms.MechanismsGL
	  require Osteoporosis.Domain.Mechanisms.MechanismsMP
	  require Osteoporosis.Domain.Mechanisms.MechanismsQS
	  require Osteoporosis.Domain.Mechanisms.MechanismsTZ

	  Osteoporosis.Domain.Mechanisms.MechanismsAC.mechanisms_a_c()
	  Osteoporosis.Domain.Mechanisms.MechanismsDF.mechanisms_d_f()
	  Osteoporosis.Domain.Mechanisms.MechanismsGL.mechanisms_g_l()
	  Osteoporosis.Domain.Mechanisms.MechanismsMP.mechanisms_m_p()
	  Osteoporosis.Domain.Mechanisms.MechanismsQS.mechanisms_q_s()
	  Osteoporosis.Domain.Mechanisms.MechanismsTZ.mechanisms_t_z()
	# end
  # end
end