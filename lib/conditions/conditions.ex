defmodule Osteoporosis.Conditions do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :conditions
  import Osteoporosis.DSL

	condition :sample_condition do
	  description "..."
	  mechanisms []
	  signals []
	  interventions []
	end

end
