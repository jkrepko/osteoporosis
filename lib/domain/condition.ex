defmodule Osteoporosis.Domain.Condition do
  @moduledoc false
  
  defstruct [
	:name,
	:description,
	mechanisms: [],
	signals: [],
	interventions: []
  ]

defimpl Osteoporosis.Entity, for: Osteoporosis.Domain.Condition do
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
