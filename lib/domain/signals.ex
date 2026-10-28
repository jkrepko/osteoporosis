defmodule OsteoTest.Domain.Signals do
  @moduledoc false
  use OsteoTest.Collection, attribute: :signals

  # import OsteoTest.DSL
  
  # defmacro declare_signals do
	# quote do
	  require OsteoTest.Domain.Signals.SignalsAC
	  require OsteoTest.Domain.Signals.SignalsDF
	  require OsteoTest.Domain.Signals.SignalsGL
	  require OsteoTest.Domain.Signals.SignalsMP
	  require OsteoTest.Domain.Signals.SignalsQS
	  require OsteoTest.Domain.Signals.SignalsTZ

	  OsteoTest.Domain.Signals.SignalsAC.signals_a_c()
	  OsteoTest.Domain.Signals.SignalsDF.signals_d_f()
	  OsteoTest.Domain.Signals.SignalsGL.signals_g_l()
	  OsteoTest.Domain.Signals.SignalsMP.signals_m_p()
	  OsteoTest.Domain.Signals.SignalsQS.signals_q_s()
	  OsteoTest.Domain.Signals.SignalsTZ.signals_t_z()
	# end
  # end
end