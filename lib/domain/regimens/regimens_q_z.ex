defmodule Osteoporosis.Domain.Regimens.RegimensQZ do
  # import Osteoporosis.DSL
  
  defmacro regimens_q_z do
  quote do
	  
	  regimen :sclerostin_inhibition_therapy do
			description "A targeted biologic approach that both increases bone formation and decreases bone resorption by inhibiting sclerostin, a regulatory protein produced by osteocytes."
		  
			interventions [
			  :romoszumab,
		      :sequential_alendronate,
			  :sequential_denosumab
			]
		  
		intended_effects [
			   :promote_bone_formation,
			   :inhibit_bone_resorption,
			   :increase_spinal_and_hip_bone_mineral_density_BMD,
			   :reduce_fracture_risk
			]
	  end
	
	  
	  
  end
 end
end