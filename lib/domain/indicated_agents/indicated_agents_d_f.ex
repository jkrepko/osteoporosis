defmodule Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsDF do
  # import Osteoporosis.DSL
  
  defmacro indicated_agents_d_f do
  quote do
    
    indicated_agent :denosumab do
      description "A fully human monoclonal antibody directed against RANKL, preventing the interaction of RANKL with RANK on osteoclast surfaces, thereby profoundly inhibiting osteoclast formation, function, and survival to protect trabecular architecture."
      brand_name [:Prolia]
      category :rankl_inhibitor
      status :standard_of_care
      typical_dosage "60 mg administered subcutaneously once every 6 months"
      contraindicated_by [:pregnancy, :hypocalcemia, :hypersensitivity_to_denosumab ]
      intended_effects [:inhibit_bone_resorption, :increase_bone_mineral_density, :reduce_fracture_risk, :improve_bone_quality]
      interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, :wnt_signaling_activators,
              :antiresorptive_therapy, :multinucleated_resorbing_cells ]
    end
      
      
    
    indicated_agent :dasatinib_quercetin_combination_regimen do
      description "Dasatinib quercetin combination_regimen is a synergistic dual-agent oral regimen where dasatinib targets ephrin-B-dependent dependence receptors and tyrosine kinases, and quercetin targets anti-apoptotic pathways (Bcl-2 family/PI3K), effectively inducing apoptosis in senescent osteocytes and bone marrow stromal cells."
      brand_name []
      category :combined_tyrosine_kinase_inhibitor_and_flavonoid
      status :standard_of_care
      typical_dosage "Oral dasatinib (100 mg) combined with quercetin (1000 mg) administered as a single dose on consecutive days once every 2 weeks or monthly."
      contraindicated_by [:history_of_significant_cardiac_arrhythmias, :severe_hepatic_impairment, 
                           :severe_renal_impairment, :use_of_strong_CYP3A4_inhibitors_or_inducers ]
      intended_effects [:reduce_senescent_cell_burden, :enhance_bone_formation, :restore_bone_density ]
      interventions [ :senolytics_dasatinib_quercetin ]
    end
      
      
    indicated_agent :estradiol_gel_spray do #Angiotensin-Converting Enzyme Inhibitors 
      description "Allows flexible dosing and avoids hepatic first-pass metabolism."
      brand_name [:Elestrin, :Divigel, :Estrogel]
      category :estrogen_therapy
      status :first_line_standard_of_care
      typical_dosage "1 actuation daily (varying by specific product concentration)"
      contraindicated_by []
      intended_effects [:slow_bone_resorption, :reduce_fracture_risk, :prevent_bone_loss,
                        :maintain_bone_microarchitecture]
      interventions [:estrogen_therapy]
    end
      
    
    indicated_agent :fisetin_augmented_senolytic_protocol do
      description "Fisetin augmented senolytic_ rotocol  is a related flavonoid-based senolytic protocol often evaluated alongside dasatinib-quercetin combinations to target senescent cell burden in bone tissue, enhancing osteoblastogenesis and reversing skeletal aging phenotypes."
      brand_name []
      category :flavonoid_senolytic
      status :standard_of_care
      typical_dosage "Oral administration of 20 mg/kg/day for 3 consecutive days every month as part of an anti-aging bone preservation protocol."
      contraindicated_by [:allergy_to_flavonoids_or_plant_derived_polyphenols, :active_bleeding_disorders, 
                :severe_gastrointestinal_intolerance, :active_inflammatory_bowel_disease,
                :active_chemotherapy_or_immunosuppressive_therapy]
      intended_effects [:enhance_osteoblast_activity, :reduce_frailty, 
                        :reduce_senescent_cell_burden, :reduce_oxidative_stress]
      interventions [ :senolytics_dasatinib_quercetin ]
    end
	  
	  
	end
  end
end