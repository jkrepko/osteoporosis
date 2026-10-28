defmodule Osteoporosis.Domain.Mechanism do
  @moduledoc false
  
defstruct [
	:name,
	description: nil,
	family: nil,
	role: nil,
	consumes: [],
	produces: [],
	explains: [],
	enhances: [],
	enhanced_by: [],
	inhibits: [],
	inhibited_by: [],
	# confidence: :unknown
  ]

defimpl Osteoporosis.Entity, for: Osteoporosis.Domain.Mechanism do
  def id(mechanism), do: mechanism.name
  def kind(_), do: :mechanism

  def relations(mechanism) do
	[
	  consumes: mechanism.consumes,
	  produces: mechanism.produces,
	  explains: mechanism.explains,
	  enhances: mechanism.enhances,
	  enhanced_by: mechanism.enhanced_by,
	  inhibits: mechanism.inhibits,
	  inhibited_by: mechanism.inhibited_by
	]
    end
  end
end
