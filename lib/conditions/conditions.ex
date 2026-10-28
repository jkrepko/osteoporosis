defmodule OsteoTest.Conditions do
  @moduledoc false
  use OsteoTest.Collection, attribute: :conditions
  import OsteoTest.DSL

	condition :sample_condition do
	  description "..."
	  mechanisms []
	  signals []
	  interventions []
	end

end
