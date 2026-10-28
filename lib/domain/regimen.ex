defmodule Osteoporosis.Domain.Regimen do
  @moduledoc false
  
defstruct [
	:name,
	description: nil,
	interventions: [],
	intended_effects: [],
	risks: [],
	confidence: :unknown
  ]

  defimpl Osteoporosis.Entity, for: Osteoporosis.Domain.Regimen do
	def id(regimen), do: regimen.name
	def kind(_), do: :regimen

	def relations(regimen) do
	  [
		interventions: regimen.interventions,
		intended_effects: regimen.intended_effects,
		risks: regimen.risks,
	  ]
	end
  end
end
