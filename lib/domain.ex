defmodule Osteoporosis.Domain do
  alias Osteoporosis.Domain.Pathway

  def pathway do
    Pathway.new(
      name: :osteoporosis,
      signals: Osteoporosis.Domain.Signals.all(),
      mechanisms: Osteoporosis.Domain.Mechanisms.all(),
      interventions: Osteoporosis.Domain.Interventions.all(),
      indicated_agents: Osteoporosis.Domain.IndicatedAgents.all(),
      regimens: Osteoporosis.Domain.Regimens.all(),
      conditions: Osteoporosis.Domain.Conditions.all()
    )
  end
end