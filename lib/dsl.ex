  defmodule Osteoporosis.DSL do
   @moduledoc false
  defmacro __using__(_opts) do
	  quote do
		import Osteoporosis.DSL
  
		Module.register_attribute(__MODULE__, :signals, accumulate: true)
		Module.register_attribute(__MODULE__, :mechanisms, accumulate: true)
		Module.register_attribute(__MODULE__, :interventions, accumulate: true)
		Module.register_attribute(__MODULE__, :regimens, accumulate: true)
		Module.register_attribute(__MODULE__, :conditions, accumulate: true)
		Module.register_attribute(__MODULE__, :indicated_agents, accumulate: true)
  
		@before_compile Osteoporosis.DSL
	  end
	end
	
	defmacro pathway(name, do: block) do
	  quote do
		@pathway_name unquote(name)
		unquote(block)
	  end
	end
	
	
	defmacro signal(name, do: block) do
	  quote do
		Module.put_attribute(__MODULE__, :description, nil)
		Module.put_attribute(__MODULE__, :signal_type, nil)
		Module.put_attribute(__MODULE__, :indicates, [])
		Module.put_attribute(__MODULE__, :metadata, [])
	
		unquote(block)
	
		@signals %Osteoporosis.Domain.Signal{
		  name: unquote(name),
		  description: Module.get_attribute(__MODULE__, :description),
		  signal_type: Module.get_attribute(__MODULE__, :signal_type),
		  indicates: Module.get_attribute(__MODULE__, :indicates),
		  metadata: Module.get_attribute(__MODULE__, :metadata)
		  # metadata: Map.new(unquote(opts))
		}
	  end
	end
  
	defmacro mechanism(name, do: block) do
	  quote do
		Module.put_attribute(__MODULE__, :description, nil)
		Module.put_attribute(__MODULE__, :family, nil)
		Module.put_attribute(__MODULE__, :role, nil)
		var!(consumes) = []
		var!(produces) = []
		var!(explains) = []
		var!(enhances) = []
		var!(enhanced_by) = []
		var!(inhibits) = []
		var!(inhibited_by) = []
	
		# Module.put_attribute(__MODULE__, :confidence, :unknown)
	
		unquote(block)
	
		@mechanisms %Osteoporosis.Domain.Mechanism{
		  name: unquote(name),
		  role: Module.get_attribute(__MODULE__, :role),
		  family: Module.get_attribute(__MODULE__, :family),
		  description: Module.get_attribute(__MODULE__, :description),
		  consumes: Osteoporosis.DSL.normalize_items(var!(consumes)),
		  produces: Osteoporosis.DSL.normalize_items(var!(produces)),
		  explains: Osteoporosis.DSL.normalize_items(var!(explains)),
		  enhances: Osteoporosis.DSL.normalize_items(var!(enhances)),
		  enhanced_by: Osteoporosis.DSL.normalize_items(var!(enhanced_by)),
		  inhibits: Osteoporosis.DSL.normalize_items(var!(inhibits)),
		  inhibited_by: Osteoporosis.DSL.normalize_items(var!(inhibited_by))
		}
	  end
	end
  
	
	
	defmacro indicated_agent(name, do: block) do
	  quote do
		Module.put_attribute(__MODULE__, :description, nil)
		Module.put_attribute(__MODULE__, :category, nil)
		Module.put_attribute(__MODULE__, :status, nil)
		Module.put_attribute(__MODULE__, :brand_name, nil)
		Module.put_attribute(__MODULE__, :typical_dosage, nil)
		Module.put_attribute(__MODULE__, :contraindicated_by, [])
		Module.put_attribute(__MODULE__, :interventions, [])
		Module.put_attribute(__MODULE__, :intended_effects, [])
	  unquote(block)
	
		indicated_agent = %Osteoporosis.Domain.IndicatedAgent{
			name: unquote(name),
			description:          Module.get_attribute(__MODULE__, :description),
			category:             Module.get_attribute(__MODULE__, :category),
			status:               Module.get_attribute(__MODULE__, :status),
			brand_name:           Module.get_attribute(__MODULE__, :brand_name),
			typical_dosage:       Module.get_attribute(__MODULE__, :typical_dosage),
			contraindicated_by:   Module.get_attribute(__MODULE__, :contraindicated_by),
			interventions:        Module.get_attribute(__MODULE__, :interventions),
			intended_effects:     Module.get_attribute(__MODULE__, :intended_effects)
		  }
		  Module.put_attribute(__MODULE__, :indicated_agents, indicated_agent)
	  end
	end
	defmacro condition(name, do: block) do
	  quote do
	        
                Module.put_attribute(__MODULE__, :description, nil)
		Module.put_attribute(__MODULE__, :mechanisms, [])
		Module.put_attribute(__MODULE__, :signals, [])
		Module.put_attribute(__MODULE__, :interventions, [])
		unquote(block)
	
		condition = %Osteoporosis.Domain.Condition{
		  name: unquote(name),
		  description: Module.get_attribute(__MODULE__, :description),
		  mechanisms: Module.get_attribute(__MODULE__, :mechanisms),
		  signals: Module.get_attribute(__MODULE__, :signals),
		  interventions: Module.get_attribute(__MODULE__, :interventions),
		}
		Module.put_attribute(__MODULE__, :conditions, condition)
	  end
	end
  
	# defmacro risk(name, opts \\ []) do
	#   quote do
	# 	@risks %Osteoporosis.Domain.Risk{
	# 	  name: unquote(name),
	# 	  description: Keyword.get(unquote(opts), :description),
	# 	  increased_by: Osteoporosis.DSL.normalize_items(Keyword.get(unquote(opts), :increased_by, [])),
	# 	  decreased_by: Osteoporosis.DSL.normalize_items(Keyword.get(unquote(opts), :decreased_by, [])),
	# 	  related_effects: Osteoporosis.DSL.normalize_items(Keyword.get(unquote(opts), :related_effects, [])),
	# 	  confidence: Keyword.get(unquote(opts), :confidence, :unknown)
	# 	}
	#   end
	# end
	
defmacro intervention(name, do: block) do
		 quote do
		   Module.put_attribute(__MODULE__, :description, nil)
		   Module.put_attribute(__MODULE__, :effects, [])
		   Module.put_attribute(__MODULE__, :indicated_agents, [])
	   
		   unquote(block)
	   
		   @interventions %Osteoporosis.Domain.Intervention{
			 name: unquote(name),
			 description: Module.get_attribute(__MODULE__, :description),
	   
			 effects:
			   Osteoporosis.DSL.normalize_items(
				 Module.get_attribute(__MODULE__, :effects)
			   ),
	   
			 indicated_agents:
			   Osteoporosis.DSL.normalize_items(
				 Module.get_attribute(__MODULE__, :indicated_agents)
			   )
		   }
		 end
	   end
	defmacro regimen(name, do: block) do
	  quote do
		  Module.put_attribute(__MODULE__, :description, nil)
		  Module.put_attribute(__MODULE__, :interventions, [])
		  Module.put_attribute(__MODULE__, :intended_effects, [])
		unquote(block)
		  
		regimen = %Osteoporosis.Domain.Regimen{
		  name: unquote(name),
		  description: Module.get_attribute(__MODULE__, :description),
		  interventions: Module.get_attribute(__MODULE__, :interventions),
		  intended_effects: Module.get_attribute(__MODULE__, :intended_effects)
		}
		Module.put_attribute(__MODULE__, :regimens, regimen)
	  end
	end
  
  

	
	
	defmacro confidence(level) do
	  quote do
		Module.put_attribute(__MODULE__, :confidence, unquote(level))
	  end
	end
	
	defmacro category(value) do
	  quote do
		Module.put_attribute(
		  __MODULE__,
		  :category,
		  unquote(value)
		)
	  end
	end
	defmacro description(desc) do
	  quote do
		Module.put_attribute(__MODULE__, :description, unquote(desc))
	  end
	end
	
	defmacro brand_name(name) do
	  quote do
		Module.put_attribute(__MODULE__, :brand_name, unquote(name))
	  end
	end
	
	defmacro typical_dosage(value) do
	  quote do
		@typical_dosage unquote(value)
	  end
	end
	
	defmacro family(name) do
	  quote do
		Module.put_attribute(__MODULE__, :family, unquote(name))
	  end
	end
	
	
	defmacro role(value) do
	  unless Osteoporosis.Domain.Role.valid?(value) do
		raise ArgumentError,
			  "invalid mechanism role: #{inspect(value)}"
	  end
	
	  quote do
		Module.put_attribute(__MODULE__, :role, unquote(value))
	  end
	end
	
	defmacro status(value) do
	  quote do
		Module.put_attribute(
		  __MODULE__,
		  :status,
		  unquote(value)
		)
	  end
	end
	

	
	
	defmacro signal_type(value) do
	  quote do
		Module.put_attribute(__MODULE__, :signal_type, unquote(value))
	  end
	end
	
	defmacro indicates(value) do
	  quote do
		Module.put_attribute(
		  __MODULE__,
		  :indicates,
		  Osteoporosis.DSL.normalize_items(unquote(value))
		)
	  end
	end
	
	
	defmacro effects(value) do
	  quote do
		Module.put_attribute(__MODULE__, :effects, unquote(value))
	  end
	end
	
	
	defmacro metadata(value) do
	  quote do
		Module.put_attribute(
		  __MODULE__,
		  :metadata,
		  Osteoporosis.DSL.normalize_items(unquote(value))
		)
	  end
	end
	
  
	defmacro consumes(name) do
	  quote do
		var!(consumes) = [unquote(name) | var!(consumes)]
	  end
	end
  
	defmacro produces(name) do
	  quote do
		var!(produces) = [unquote(name) | var!(produces)]
	  end
	end
  
	defmacro explains(name) do
		quote do
		  var!(explains) = [unquote(name) | var!(explains)]
		end
	  end
  
  defmacro enhances(signal_or_agent) do
	quote do
	  var!(enhances) = [unquote(signal_or_agent) | var!(enhances)]
	end
  end
  
  defmacro targets_mechanisms(signal_or_agent) do
	quote do
	  var!(targets_mechanisms) = [unquote(signal_or_agent) | var!(targets_mechanisms)]
	end
  end
  
  defmacro enhanced_by(signal_or_agent) do
	quote do
	  var!(enhanced_by) = [unquote(signal_or_agent) | var!(enhanced_by)]
	end
  end
  
  defmacro inhibits(signal_or_agent) do
	quote do
	  var!(inhibits) = [unquote(signal_or_agent) | var!(inhibits)]
	end
  end
  
  defmacro inhibited_by(signal_or_agent) do
	quote do
	  var!(inhibited_by) = [unquote(signal_or_agent) | var!(inhibited_by)]
	end
  end
  

  
	defmacro mechanisms(value) do
	  quote do
		Module.put_attribute(__MODULE__, :mechanisms, unquote(value))
	  end
	end
	
	defmacro signals(value) do
	  quote do
		#var!(signals) = [unquote(item) | var!(signals)]
		Module.put_attribute(__MODULE__, :signals, unquote(value))
	  end
	end
  
	defmacro interventions(value) do
	  quote do
		Module.put_attribute(__MODULE__, :interventions, unquote(value))
	  end
	end
	
	defmacro indicated_agents(value) do
	  quote do
		Module.put_attribute(__MODULE__, :indicated_agents, unquote(value))
	  end
	end
	
	defmacro contraindicated_by(value) do
	  quote do
		Module.put_attribute(__MODULE__, :contraindicated_by, unquote(value))
	  end
	end
	
	defmacro intended_effects(value) do
	  quote do
		Module.put_attribute(__MODULE__, :intended_effects, unquote(value))
	  end
	end
  
  def normalize_items(nil), do: []
  
  def normalize_items(items) do
	items
	|> List.wrap()
	|> Enum.reverse()
	|> Enum.flat_map(&List.wrap/1)
  end
  
	defmacro __before_compile__(env) do
	  signals = Module.get_attribute(env.module, :signals) |> Enum.reverse()
	  mechanisms = Module.get_attribute(env.module, :mechanisms) |> Enum.reverse()
	  # effects = Module.get_attribute(env.module, :effects) |> Enum.reverse()
	  # risks = Module.get_attribute(env.module, :risks) |> Enum.reverse()
	  interventions = Module.get_attribute(env.module, :interventions) |> Enum.reverse()
	  regimens = Module.get_attribute(env.module, :regimens) |> Enum.reverse()
	  conditions = Module.get_attribute(env.module, :conditions) |> Enum.reverse()
	  indicated_agents = Module.get_attribute(env.module, :indicated_agents) |> Enum.reverse()
  
	  quote do
	   def pathway do
		%{
		  signals: unquote(Macro.escape(signals)),
		  mechanisms: unquote(Macro.escape(mechanisms)),
		  # effects: unquote(Macro.escape(effects)),
		  # risks: unquote(Macro.escape(risks)),
		  interventions: unquote(Macro.escape(interventions)),
		  regimens: unquote(Macro.escape(regimens)),
		  conditions: unquote(Macro.escape(conditions)),
		  indicated_agents: unquote(Macro.escape(indicated_agents)),
		}
	   end
	  end
	end

end
