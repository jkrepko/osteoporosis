defmodule OsteoTest.Domain.Signals.SignalsTZ do
  import OsteoTest.DSL

  defmacro signals_t_z do
	quote do
		
		
		signal :trabecular_microarchitecture_deterioration do
			description "The progressive structural breakdown and disconnection of the spongy trabecular bone network inside bones, where horizontal struts are completely resorbed and vertical struts thin out."
			
			signal_type :process_state
			
			indicates [
			  :disconnected_trabecular_network,
			  :increased_bone_marrow_cavity_space,
			  :disproportionate_loss_of_strength_relative_to_mass_loss,
			  :susceptibility_to_vertebral_compression_fractures,
			  :loss_of_anisotropy_in_bone_strength,
			  :internal_stress_concentration_on_remaining_struts,
			  :collapse_of_vertebral_bodies
			]
		
		  end
		
		
	  end
    end
	
end