defmodule OsteoTest.Domain.Condition do
  @moduledoc false
  
  defstruct [
	:name,
	description: nil,
	mechanisms: [],
	signals: [],
	interventions: []
  ]

defimpl OsteoTest.Entity, for: OsteoTest.Domain.Condition do
	def id(condition), do: condition.name
	def kind(_), do: :condition

	def relations(condition) do
	  [
		mechanisms: condition.mechanisms,
		signals: condition.signals,
		interventions: condition.interventions,
	  ]
	end
  end
end
