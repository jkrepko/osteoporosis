defmodule Osteoporosis.Domain.Signals do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :signals

  # import Osteoporosis.DSL
  
  # defmacro declare_signals do
	# quote do
	  require Osteoporosis.Domain.Signals.SignalsAC
	  require Osteoporosis.Domain.Signals.SignalsDF
	  require Osteoporosis.Domain.Signals.SignalsGL
	  require Osteoporosis.Domain.Signals.SignalsMP
	  require Osteoporosis.Domain.Signals.SignalsQS
	  require Osteoporosis.Domain.Signals.SignalsTZ

	  Osteoporosis.Domain.Signals.SignalsAC.signals_a_c()
	  Osteoporosis.Domain.Signals.SignalsDF.signals_d_f()
	  Osteoporosis.Domain.Signals.SignalsGL.signals_g_l()
	  Osteoporosis.Domain.Signals.SignalsMP.signals_m_p()
	  Osteoporosis.Domain.Signals.SignalsQS.signals_q_s()
	  Osteoporosis.Domain.Signals.SignalsTZ.signals_t_z()
	# end
  # end
end