defmodule OsteoTest.Domain do
  alias OsteoTest.Domain.Pathway

  def pathway do
    Pathway.new(
      name: :osteoporosis,
      signals: OsteoTest.Domain.Signals.all(),
      mechanisms: OsteoTest.Domain.Mechanisms.all()
      # interventions: OsteoTest.Domain.Interventions.all(),
      # indicated_agents: OsteoTest.Domain.IndicatedAgents.all(),
      # regimens: OsteoTest.Domain.Regimens.all(),
      # conditions: OsteoTest.Domain.Conditions.all()
    )
  end
end