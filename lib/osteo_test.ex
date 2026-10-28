defmodule Osteoporosis do
  @moduledoc false
  # alias Osteoporosis.Domain.Pathway
  
  def name, do: :osteoporosis
  
  # def pathway do
  #   %Pathway{
  #     name: name(),
  #     signals: Osteoporosis.Signals.all(),
  #     mechanisms: Osteoporosis.Mechanisms.all(),
  #     interventions: Osteoporosis.Interventions.all(),
  #     indicated_agents: Osteoporosis.IndicatedAgents.all(),
  #     regimens: Osteoporosis.Regimens.all(),
  #     conditions: Osteoporosis.Conditions.all()
  #   }
  # end
  
  def pathway do
    Osteoporosis.Domain.pathway()
  end
  
end
