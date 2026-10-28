  defmodule OsteoTest.Entities do
  @moduledoc false

  def all_entities(pathway) do
	 pathway.signals ++
	 pathway.mechanisms ++
	 pathway.interventions ++
	 pathway.indicated_agents ++
	 pathway.conditions ++
	 pathway.regimens
  end

end
