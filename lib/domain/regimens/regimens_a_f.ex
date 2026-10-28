defmodule Osteoporosis.Domain.Regimens.RegimensAF do
  # import Osteoporosis.DSL
  
  defmacro regimens_a_f do
  quote do
	
	regimen :bone_forming_anabolic_therapy do
		  description "A high-potency regimen utilizing parathyroid hormone analogs to preferentially stimulate osteoblastic bone formation over resorption, reserved for patients with severe osteoporosis or very high fracture risk."
		
		  interventions [
			:teriparatide,
			:romosozumab
		  ]
		
	  intended_effects [
			 :rapidly_increase_trabecular_and_cortical_bone_mass,
			 :improve_bone_microarchitecture_and_structural_strength,
			 :reduce_vertebral_and_clinical_fracture_risk
		  ]
	end
	
	regimen :first_line_antiresorptive_therapy do
		  description "First-Line Antiresorptive Therapy (Bisphosphonates) is a foundational pharmacological approach using nitrogen-containing bisphosphonates to inhibit osteoclast-mediated bone resorption, commonly prescribed for postmenopausal women and men with primary osteoporosis."
		
		  interventions [
	  		:alendronate,
			:zoledronic_acid,
			:calcium,
			:vitamin_d3
		  ]
		
	  intended_effects [
			 :increase_bone_mineral_density_BMD_for_spine_hip_and_femoral_neck,
			 :reduce_fracture_risk,
			 :suppress_bone_turnover_markers
		  ]
	end
	  
	  
  end
 end
end