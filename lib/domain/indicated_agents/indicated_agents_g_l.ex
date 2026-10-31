defmodule Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsGL do
  # import Osteoporosis.DSL
  
  defmacro indicated_agents_g_l do
  quote do
    
    indicated_agent :GLP_1_receptor_agonists do
      description "Injectable incretin mimetics that enhance glucose-dependent insulin secretion, suppress glucagon release, and promote weight loss; weight management benefits can indirectly reduce mechanical joint load, while exhibiting generally neutral or favorable bone safety profiles."
      brand_name [:Ozempic, :Wegovy, :Mounjaro, :Zepbound]
      category :glp1_receptor_agonist
      status :first_line_standard_of_care
      typical_dosage "0.75 mg to 1.5 mg subcutaneously once weekly (dulaglutide) or 0.6 mg to 1.8 mg subcutaneously daily (liraglutide)"
      contraindicated_by [:history_of_medullary_thyroid_carcinoma, :multiple_edocrine_neoplasia_syndrome_type_2,  
                :hypersensitivity_to_dulaglutide_or_liraglutide]
      intended_effects [:enhance_bone_mineral_density, :promote_bone_formation, :improve_bone_quality, :reduce_fracture_risk]
      interventions [:glycemic_control]	
    end
      
      
    indicated_agent :green_tea_extract do
      description "Green tea extract is a concentrated polyphenol botanical extract with powerful antioxidant and anti-inflammatory properties that have been shown in studies to inhibit osteoclast differentiation and promote osteoblast survival."
      brand_name []
      category :botanical_polyphenol
      status :standard_of_care
      typical_dosage "2250 mg to 500 mg standardized extract orally daily,"
      contraindicated_by [:acute_liver_disease, :elevated_baseline_transaminases, :concurrent_use_of_hepatotoxic_medications ]
      intended_effects [:restore_bone_homeostasis, :enhance_osteoblast_activity, :suppress_osteoclast_activity, :reduce_inflammation, :reduce_oxidative_stress]
      interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, 
              :antiresorptive_therapy, :antioxidant_dietary_therapy ]
    end
              
      
    
    indicated_agent :ibandronate do
      description "A nitrogen-containing bisphosphonate available in both oral and intravenous formulations. It is primarily indicated for the treatment and prevention of osteoporosis in postmenopausal women, helping to increase bone mineral density and reduce vertebral fracture risk."
      brand_name :Boniva
      category :oral_intravenous_bisphosphonate
      status :standard_of_care
      typical_dosage "Oral: 150 mg once a month. IV: 3 mg every 3 months administered as an intravenous injection over 15 to 30 seconds."
      contraindicated_by [:uncorrected_hypocalcemia, :esophogeal_abnormalities, 
                :severe_renal_impairment ]
      intended_effects [:increase_bone_mineral_density, :reduce_fracture_risk, 
                        :suppress_bone_resorption, :improve_bone_quality]
      interventions [:bisphosphonate_therapy]
    end
      
    
    
    indicated_agent :IDs_03 do
      description "IDs_03 ( DKK1 Monoclonal Antibody ) is a humanized monoclonal antibody specifically targeting Dickkopf_1 to relieve the inhibition on Wnt signaling, thereby stimulating new bone matrix synthesis and synergistically reducing bone resorption markers in severe osteoporosis."
      brand_name []
      category :humanized_monoclonal_antibody
      status :first_line_standard_of_care
      typical_dosage "Subcutaneous injection of 210 mg administered once monthly for a duration of 12 to 24 months, followed by antiresorptive consolidation therapy."
      contraindicated_by [:hypersensitivity_to_active_biologic_substance, :hypersensitivity_to__murine_or_humanized_protein_residues,
                :uncorrected_hypocalcemia, :recent_myocardial_infarction_or_stroke,  :severe_renal_impairment]
      intended_effects [:promote_bone_formation, :inhibit_bone_resorption,
                        :improve_bone_microarchitecture, :reduce_fracture_risk]
      interventions [ :dkk1_neutralizing_antibodies ]	
    end
	  
	  
	end
  end
end