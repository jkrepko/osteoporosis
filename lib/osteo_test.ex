defmodule OsteoTest do
  @moduledoc false
  # alias OsteoTest.Domain.Pathway
  
  def name, do: :osteoporosis
  
  # def pathway do
  #   %Pathway{
  #     name: name(),
  #     signals: OsteoTest.Signals.all(),
  #     mechanisms: OsteoTest.Mechanisms.all(),
  #     interventions: OsteoTest.Interventions.all(),
  #     indicated_agents: OsteoTest.IndicatedAgents.all(),
  #     regimens: OsteoTest.Regimens.all(),
  #     conditions: OsteoTest.Conditions.all()
  #   }
  # end
  
  def pathway do
    OsteoTest.Domain.pathway()
  end
  
end
