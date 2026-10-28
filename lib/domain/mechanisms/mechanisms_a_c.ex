defmodule OsteoTest.Domain.Mechanisms.MechanismsAC do
  # import OsteoTest.DSL
  
  defmacro mechanisms_a_c do
  quote do
	  
	  mechanism :bone_matrix_mineralization_dysregulation  do
		   description  "A critical pathophysiological process in osteoporosis characterized by the 
		   impaired or abnormal deposition of hydroxyapatite crystals within the newly 
		   formed osteoid matrix. This dysregulation leads to either osteomalacic changes 
		   (insufficient mineralization) or hyper-mineralized, brittle bone microarchitectures 
		   that compromise overall skeletal biomechanical competence and fracture resistance."
		   family :pathophysiological_cellular_dysfunction
		   role :pathogenic
		   consumes [
			 :bioavailable_calcium_ions,
			 :inorganic_phosphate,
			 :alkaline_phosphatase_activity,
			 :mature_osteoblast_secretory_products
			 ]
		   produces [
			 :impaired_hydroxyapatite_deposition,
			 :abnormal_osteoid_maturation,
			 :brittle_microarchitectural_stress_points,
			 :local_calcium_phosphate_imbalance
			 ]
		   explains [
			 :decreased_bone_tensile_strength_independent_of_density,
			 :atypical_femoral_fractures_under_low_load,
			 :compromised_fracture_healing_dynamics_in_elderly_patients
			 ]
		   enhances []
		   enhanced_by []
		   inhibits [
			 :normal_osteoid_mineralization_front,
			 :physiological_bone_toughness_and_elasticity,
			 :optimal_crystal_lattice_formation
			 ]
		   inhibited_by [
			 :bisphosphonate_therapy,
			 :calcium_and_vitamin_D_supplementation,
			 :strontium_ranelate_modulation
			 ]
	   end
	  
	  
	  mechanism :bone_microdamage_repair_failure do
		   description  ""
		   family "Mechaniscal and structural adaptation"
		   role :pathogenic
		   consumes []
		   produces []
		   explains []
		   enhances []
		   enhanced_by []
		   inhibits []
		   inhibited_by []
	   end
	   
	  
	  mechanism :bone_remodeling_uncoupling do
		  description  "Disruption of the physiological coupling between osteoclast-mediated bone resorption and osteoblast-mediated bone formation results in a negative bone balance per remodeling cycle, driving progressive trabecular perforation, cortical porosity, and skeletal fragility."
		  family :skeletal_homeostasis_and_remodeling_dynamics
		  role :pathogenic
		  consumes [
			:basic_multicellular_units_bmus,
			:quiescent_bone_surfaces,
			:osteoprogenitor_pools,
			:mineralizing_surface_area
		  ]
		  produces [
			:resorption_pits_exceeding_formation_volume,
			:negative_bone_balance_per_remodeling_cycle,
			:trabecular_perforations,
			:cortical_porosity
		  ]
		  explains [
			:progressive_loss_of_bone_mineral_density,
			:deterioration_of_microarchitecture,
			:increased_fracture_risk,
			:failure_of_bone_mass_restoration
		  ]
		  enhances []
		  enhanced_by []
		  inhibits [
			:osteoblast_bone_formation_rate,
			:mineralization_apposition_rate,
			:trabecular_connectivity
		  ]
		  inhibited_by [
			:antiresorptive_therapy,
			:bisphosphonate_therapy,
			:denosumab,
			:teriparatide_therapy,
			:romosozumab,
			:mechanical_loading_stimulation
		  ]
	  end
	  
	  
	  mechanism :calcium_vitamin_d_homeostasis_disruption do
		   description  ""
		   family "Mineral metabolism and secondary osteoporosis"
		   role :pathogenic
		   consumes []
		   produces []
		   explains []
		   enhances []
		   enhanced_by []
		   inhibits []
		   inhibited_by []
	   end
	  
	  
	  mechanism :cellular_senescence_accumulation do
		   description  ""
		   family "Aging, inflammation, metabolism"
		   role :pathogenic
		   consumes []
		   produces []
		   explains []
		   enhances []
		   enhanced_by []
		   inhibits []
		   inhibited_by []
	   end
	  
	  
	  mechanism :collagen_matrix_quality_dysregulation do
			 description "The deterioration and qualitative alteration of the collagen type I organic matrix framework, which provides the flexible scaffold upon which hydroxyapatite crystals deposit."
			 family "Mechaniscal and structural adaptation"
			 
			 role :pathogenic
			 consumes [
			   :mature_enzymatic_collagen_cross_links,
			   :elasticity_of_organic_matrix
			 ]
			 produces [
			   :accumulation_of_non_enzymatic_glycation_end_products_ages,
			   :brittle_protein_scaffolding,
			   :microcracks_in_matrix
			 ]
			 explains [
			   :bone_brittleness_despite_adequate_mineralization,
			   :reduced_work_to_fracture_toughness
			 ]
			 enhances [
			   :crack_propagation_through_bone,
			   :material_brittleness
			 ]
			 enhanced_by [
			   :chronic_hyperglycemia_diabetes,
			   :oxidative_stress,
			   :aging_processes
			 ]
			 inhibits [
			   :bone_toughness_and_plastic_deformation,
			   :energy_absorption_during_impact
			 ]
			 inhibited_by [
			   :glycemic_control,
			   :reduction_of_oxidative_stressors,
			   :antioxidant_dietary_therapy
			 ]
		 end
		 
  end
 end
end