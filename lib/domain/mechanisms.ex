defmodule OsteoTest.Domain.Mechanisms do
  @moduledoc false
  use OsteoTest.Collection, attribute: :mechanisms

  import OsteoTest.DSL
  
  # defmacro declare_signals do
	# quote do
	  require OsteoTest.Domain.Mechanisms.MechanismsAC
	  require OsteoTest.Domain.Mechanisms.MechanismsDF
	  require OsteoTest.Domain.Mechanisms.MechanismsGL
	  require OsteoTest.Domain.Mechanisms.MechanismsMP
	  require OsteoTest.Domain.Mechanisms.MechanismsQS
	  require OsteoTest.Domain.Mechanisms.MechanismsTZ

	  OsteoTest.Domain.Mechanisms.MechanismsAC.mechanisms_a_c()
	  OsteoTest.Domain.Mechanisms.MechanismsDF.mechanisms_d_f()
	  OsteoTest.Domain.Mechanisms.MechanismsGL.mechanisms_g_l()
	  OsteoTest.Domain.Mechanisms.MechanismsMP.mechanisms_m_p()
	  OsteoTest.Domain.Mechanisms.MechanismsQS.mechanisms_q_s()
	  OsteoTest.Domain.Mechanisms.MechanismsTZ.mechanisms_t_z()
	# end
  # end
end