defmodule Osteoporosis.Domain.IndicatedAgent do
  defstruct [
	:name,
	:brand_name,
	:description,
	:typical_dosage,
	:category,
	:status,
	contraindicated_by: [],
	interventions: [],
    intended_effects: []
  ]
  
  defimpl Osteoporosis.Entity, for: Osteoporosis.Domain.IndicatedAgent do
	def id(indicated_agent), do: indicated_agent.name
	def kind(_), do: :indicated_agent
  
	def relations(indicated_agent) do
	  [
		contraindicated_by: indicated_agent.contraindicated_by,
		interventions: indicated_agent.interventions,
	    intended_effects: indicated_agent.intended_effects
		]
	end
  end
end
