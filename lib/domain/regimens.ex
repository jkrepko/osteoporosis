defmodule Osteoporosis.Domain.Regimens do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :regimens

  import Osteoporosis.DSL
  
  # defmacro declare_signals do
	# quote do
	  require Osteoporosis.Domain.Regimens.RegimensAF
	  require Osteoporosis.Domain.Regimens.RegimensGP
	  require Osteoporosis.Domain.Regimens.RegimensQZ

	  Osteoporosis.Domain.Regimens.RegimensAF.regimens_a_f()
	  Osteoporosis.Domain.Regimens.RegimensGP.regimens_g_p()
	  Osteoporosis.Domain.Regimens.RegimensQZ.regimens_q_z()
	# end
  # end
end