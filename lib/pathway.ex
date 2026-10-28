defmodule OsteoTest.Domain.Pathway do
  defstruct [
    :name,
    conditions: [],
    signals: [],
    mechanisms: [],
    interventions: [],
    indicated_agents: [],
    regimens: []
  ]
  
  def new(attrs \\ []) do
    struct(__MODULE__, attrs)
  end
  
end
