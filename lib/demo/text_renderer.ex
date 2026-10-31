

  defmodule Osteoporosis.Demo.TextRenderer do
	  @moduledoc """
	  Renders text for demo display, or for passing to HtmlRenderer
	  """
	
	  alias Osteoporosis.Demo.OsteoporosisDemo
	
	  def render(demos) do
		demos
		|> Enum.map(&render_demo/1)
		|> Enum.join("\n\n")
	  end
	
	  defp render_demo(demo) do
		"""
		============================================================
		#{"Pathways Example: Osteoporosis"}
		============================================================
	
		Queries: To understand the system, let's ask some questions about Osteoporosis:
		-------
		
		#{render_queries(demo.queries)}
	   
	   
		Domain definition
		-----------------
	
		Conditions:
		#{render_conditions(demo.conditions)}
		
		Treatment Regimens:
		#{render_regimens(demo.regimens)}
		
		Interventions:
		#{render_interventions(demo.interventions)}
		
		Treatments:
		#{render_indicated_agents(demo.indicated_agents)}
		
		Mechanisms:
		#{render_mechanisms(demo.mechanisms)}
	
		Signals:
		#{render_items(demo.signals)}

	
		"""
	  end
	
	#   defp render_items([]), do: "  none yet"
	# 
	#   defp render_items(items) do
	#     items
	#     |> Enum.map(fn item ->
	#       "  - #{english_name(OsteoporosisDemo.get(item, :name, item))}"
	#     end)
	#     |> Enum.join("\n")
	#   end
	
	defp render_items([]), do: "  none yet"
	
	defp render_items(items) do
	  items
	  |> Enum.map(fn item ->
		item
		|> OsteoporosisDemo.get(:name, item)
		|> english_name()
	  end)
	  |> Enum.sort_by(&String.downcase/1)
	  |> Enum.map(&"  - #{&1}")
	  |> Enum.join("\n")
	end
	
	  defp render_mechanisms([]), do: "  none yet"
	
	  defp render_mechanisms(mechanisms) do
		mechanisms
		|> Enum.sort_by(fn mechanism ->
		  mechanism
		  |>OsteoporosisDemo.get(:name, :unnamed_mechanism)
		  |> english_name()
		  |> String.downcase()
		end)
		|> Enum.map(&render_mechanism/1)
		|> Enum.join("\n\n")
	  end
	
	  defp render_mechanism(m) do
		"""
		   - #{english_name(OsteoporosisDemo.get(m, :name, :unnamed_mechanism))}
			description:  #{OsteoporosisDemo.get(m, :description, :none_given)}
			consumes:    #{english_list(OsteoporosisDemo.get(m, :consumes, []))}
			produces:    #{english_list(OsteoporosisDemo.get(m, :produces, []))}
			explains:    #{english_list(OsteoporosisDemo.get(m, :explains, []))}
			inhibits:    #{english_list(OsteoporosisDemo.get(m, :inhibits, []))}
			inhibited by: #{english_list(OsteoporosisDemo.get(m, :inhibited_by, []))}
		"""
	  end
	
	
	  defp render_conditions([]), do: "  none yet"
	
		defp render_conditions(conditions) do
		  conditions
		  |> Enum.map(&render_condition/1)
		  |> Enum.join("\n\n")
		end
	
		defp render_condition(m) do
		  """
		  - #{english_name(OsteoporosisDemo.get(m, :name, :unnamed_condition))}
		      description:  #{OsteoporosisDemo.get(m, :description, :none_given)}
			  mechanisms:    #{english_list(OsteoporosisDemo.get(m, :mechanisms, []))}
			  signals: #{english_list(OsteoporosisDemo.get(m, :signals, []))}
			  interventions: #{english_list(OsteoporosisDemo.get(m, :interventions, []))}
		  """
		end
	
	
	defp render_interventions([]), do: "  none yet"
	
	defp render_interventions(interventions) do
	  interventions
	  |> Enum.sort_by(fn intervention ->
		intervention
		|> OsteoporosisDemo.get(:name, :unnamed_intervention)
		|> english_name()
		|> String.downcase()
	  end)
	  |> Enum.map(&render_intervention/1)
	  |> Enum.join("\n\n")
	end
	
	defp render_intervention(m) do
	  """
	  - #{english_name(OsteoporosisDemo.get(m, :name, :unnamed_intervention))}
	      description:  #{OsteoporosisDemo.get(m, :description, :none_given)}
		  indicated_agents: #{english_list(OsteoporosisDemo.get(m, :indicated_agents, []))}
	  """
	  # effects:          #{english_list(OsteoporosisDemo.get(m, :effects, []))}
	end
	
	defp render_indicated_agents([]), do: "  none yet"
	
	defp render_indicated_agents(indicated_agents) do
	  indicated_agents
	  |> Enum.sort_by(fn indicated_agent ->
		indicated_agent
		|> OsteoporosisDemo.get(:name, :unnamed_indicated_agent)
		|> english_name()
		|> String.downcase()
	  end)
	  |> Enum.map(&render_indicated_agent/1)
	  |> Enum.join("\n\n")
	end
	
	defp render_indicated_agent(m) do
	  """
	  - #{english_name(OsteoporosisDemo.get(m, :name, :unnamed_indicated_agent))}
	      brand_names:              #{english_list(OsteoporosisDemo.get(m, :brand_name, []))}
		  intended_effects:         #{english_list(OsteoporosisDemo.get(m, :intended_effects, []))}
		  typical_dosage:           #{english_list(OsteoporosisDemo.get(m, :typical_dosage, []))}
		  contraindicated_by:       #{english_list(OsteoporosisDemo.get(m, :contraindicated_by, []))}
		  part_of_interventions:            #{english_list(OsteoporosisDemo.get(m, :interventions, []))}
	  """
	end
	
	
	  defp render_regimens([]), do: "  none yet"
	
	  defp render_regimens(regimens) do
		regimens
		|> Enum.map(&render_regimen/1)
		|> Enum.join("\n\n")
	  end
	
	  defp render_regimen(m) do
		"""
		   - #{english_name(OsteoporosisDemo.get(m, :name, :unnamed_regimen))}
			description:  #{OsteoporosisDemo.get(m, :description, :none_given)}
			interventions:       #{english_list(OsteoporosisDemo.get(m, :interventions, []))}
			intended_effects:    #{english_list(OsteoporosisDemo.get(m, :intended_effects, []))}
			risks:               #{english_list(OsteoporosisDemo.get(m, :risks, []))}
		"""
		#  #{english_name(OsteoporosisDemo.get(m, :description, :unnamed_description))}
	  end
	
	  defp render_queries(queries) do
		queries
		|> Enum.map(fn q ->
		  """
		  Q: #{q.question}
		  A:
		  #{render_query_answer(q.answer)}
		  """
		end)
		|> Enum.join("\n")
	  end
	
	
	  defp render_query_answer([]), do: "  No results found yet."
	
	  defp render_query_answer(items) when is_list(items) do
		items
		|> Enum.map(&render_query_item/1)
		|> Enum.join("\n")
	  end
	
	  defp render_query_answer(item), do: render_query_item(item)
	  
	  defp humanize(atom) when is_atom(atom) do
		atom
		|> Atom.to_string()
		|> humanize()
	  end
	  
	  defp humanize(text) when is_binary(text) do
		text
		|> String.replace("_", " ")
	  end
	
	  defp render_query_item(%{name: name, description: description}) do
		"""
		- #{humanize(name)}
			#{description}
		"""
	  end
	  
	  defp render_query_item({name, opts}) when is_atom(name) and is_list(opts) do
		when_value = Keyword.get(opts, :when)
		direction = Keyword.get(opts, :direction)
	  
		"#{name} (when: #{when_value}, direction: #{direction})"
	  end
	  
	
	  defp render_query_item(%{name: name}) when not is_nil(name) do
		"  - #{humanize(name)}"
	  end
	
		defp render_query_item(atom) when is_atom(atom) do
		"  - #{atom |> Atom.to_string() |> humanize()}"
	  end
	
	  defp render_query_item(binary) when is_binary(binary) do
		"  - #{humanize(binary)}"
	  end
	  
	
	
	  defp english_list([]), do: "none"
	  defp english_list(nil), do: "none"
	
	  defp english_list(items) do
		items
		|> List.wrap()
		|> Enum.map(&english_name/1)
		|> Enum.join(", ")
	  end
	
	  defp english_name(values) when is_list(values) do
		values
		|> Enum.map(&english_name/1)
		|> Enum.join(", ")
	  end
	
	  defp english_name(atom) when is_atom(atom) do
		atom
		|> Atom.to_string()
		|> String.replace("_", " ")
	  end
	
	  defp english_name(value), do: to_string(value)
	end



