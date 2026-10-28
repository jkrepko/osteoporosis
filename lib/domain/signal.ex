defmodule Osteoporosis.Domain.Signal do
  @moduledoc false
  
defstruct [
	:name,
	description: nil,
	signal_type: nil,
	indicates: nil,
	metadata: %{}
  ]

	defimpl Osteoporosis.Entity, for: Osteoporosis.Domain.Signal do
	  def id(signal), do: signal.name
	  def kind(_), do: :signal

	  def relations(signal) do
		[
			indicates: signal.indicates,
		]
	  end
	  def provenance(), do: :derived
	end
end
