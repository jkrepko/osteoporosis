defmodule Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsTZ do
  # import Osteoporosis.DSL
  
  defmacro indicated_agents_t_z do
  quote do
	  
    indicated_agent :teriparatide_therapy do
      description "A recombinant human parathyroid hormone analog that stimulates bone formation, sometimes utilized in specialized sequential regimens after denosumab, though careful monitoring is required to prevent transient BMD loss."
      brand_name [:Bonsity, :Forsteo, :Movymia, :Terrosa, :Sondelbay, :Kauliv]
      category :anabolic_agent
      status :first_line_standard_of_care
      typical_dosage "20 mcg subcutaneously once daily"
      contraindicated_by [:bone_metastases, :open_epiphyses, :metabolic_bone_diseases, :pagets_disease, :hypercalcemia, :skeletal_radiation ]
      intended_effects [:increase_bone_mineral_density, :reduce_fracture_risk, :improve_bone_quality, :enhance_fracture_healing]
      interventions [:denosumab, :teriparatide_pth_analog_intermittent, :parathyroid_hormone_pth_anabolic_regimens ]	
    end
    
    indicated_agent  :TGF_beta_receptor_type_I_kinase_inhibitor do
      description "A selective small molecule modulator designed to fine-tune aberrant TGF-beta/Smad signaling pathways in bone marrow microenvironments, optimizing the balance between osteoblastic bone formation and fibrotic or sclerotic bone changes."
      brand_name []
      category :small_molecule_inhibitor
      status :standard_of_care
      typical_dosage "Oral administration ranging from 10 mg to 50 mg daily, tailored to patient metabolic and bone turnover markers."
      contraindicated_by [:hepatic_failure, :elevated_transaminases, :cardiac_arrhythmias,
                :QTc_prolongation, :use_of_strong_CYP3A4_inhibitors, :women_not_employing_effective_contraception]
      intended_effects [:increase_osteoblast_activity, :decrease_osteoclast_activity, 
                        :enhance_bone_mass, :improve_mechanical_strength]
      interventions [:tgf_beta_signaling ]
    end
      
    
    indicated_agent :tideglusib do
      description "Tideglusib is a potent, irreversible, non-ATP-competitive small molecule inhibitor of GSK-3beta that promotes beta-catenin accumulation in osteoblast precursors, enhancing bone formation and trabecular microarchitecture in experimental models of osteoporosis."
      brand_name [:Tideglusib]
      category :irreversible_small_molecule_inhibitor
      status :standard_of_care
      typical_dosage "Oral administration ranging from daily to intermittent dosing schedules, depending on selectivity and central nervous system vs. bone tissue bioavailability."
      contraindicated_by [:severe_psychiatric_disorders, :severe_hepatic_impairment, :uncontrolled_cardiac_arrrhythmias,
                :hypersensitivity_to_gsk3_beta_inhibitors_or_excipients, :active_ischemic_heart_disease ]
      intended_effects [:accelerate_bone_healing, :promote_osteogenesis, :modulate_inflammation, 
                        :reduce_apoptosis, :enhance_structural_integrity]
      interventions [:gsk3_beta_inhibitors]
    end
      
      
    indicated_agent :transdermal_estradiol_patch do
      description "Bypasses first-pass hepatic metabolism, potentially lowering the risk of venous thromboembolism compared to oral formulations."
      brand_name [:Climara, :Vivelle_Dot]
      category :estrogen_therapy
      status :first_line_standard_of_care
      typical_dosage "0.025 mg to 0.1 mg / 24 hours (applied weekly or bi-weekly)"
      contraindicated_by []
      intended_effects [:preserve_bone_mineral_density, :increase_bone_mineral_density, :suppress_bone_turnover,
                        :reduce_fracture_risk, :restore_hormonal_balance]
      interventions [:estrogen_therapy]
    end
    
    
      
    indicated_agent :vitamin_C do 
      description "Vitamin C (Ascorbic Acid) is a potent water-soluble antioxidant that acts as a cofactor for prolyl and lysyl hydroxylase, essential for collagen synthesis and cross-linking in the organic bone matrix, while scavenging free radicals to protect bone cells."
      brand_name []
      category :water_soluble_vitamin_antioxidant
      status :standard_of_care
      typical_dosage "200 IU to 400 IU orally daily"
      contraindicated_by [:calcium_oxalate_nephrolithiasis_history, :G6PD_deficiency, :hemochromatosis, :iron_overload_disorders ]
        intended_effects [:stimulate_bone_formation, :inhibit_bone_resorption, :prevent_bone_loss, :reduce_fracture_risk]
      interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, 
              :antiresorptive_therapy, :antioxidant_dietary_therapy  ]
    end
              
    
    indicated_agent :vitamin_D3 do
      description "The physiological form of vitamin D synthesized in the skin or ingested, which is hydroxylated in the liver and kidneys to calcitriol to enhance intestinal calcium absorption and promote bone mineralization."
      brand_name []
      category :fat_soluble_vitamin
      status :standard_of_care
      typical_dosage "1,000 IU to 2,000 IU orally daily (or equivalent weekly/monthly regimens based on deficiency severity)"
      contraindicated_by [:hypervitaminosis_D, :G6PD_deficiency, :hypercalcemia,
                :hypersensitivity_to_vitamin_D_derivatives ]
      intended_effects [:enhance_calcium_absorption, :reducedfracture_risk, :reduce_falls_risk, :increase_bone_mineral_density]
      interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, :adequate_vitamin_d_and_calcium_status,
              :antiresorptive_therapy, :antioxidant_dietary_therapy, 
              :reduction_of_oxidative_stressors, :adequate_vitamin_d_and_calcium_status ]
    end
            
    
    indicated_agent :vitamin_E do
      description "Vitamin E (alpha-tocopherol) is a major fat-soluble chain-breaking antioxidant that protects cell membranes in bone tissue from lipid peroxidation, helping to modulate inflammatory pathways and reduce oxidative damage to osteoblasts."
      brand_name []
      category :fat_soluble_vitamin_antioxidant
      status :standard_of_care
      typical_dosage "5 mg intravenous infusion administered over at least 15 minutes once a year (for treatment) or once every 2 years (for prevention)."
      contraindicated_by [:concurrent_coagulant_therapy, :vitamin_K_deficiency, :recent_hemorrhagic_stroke]
      intended_effects [:reduce_osteoclastic_activity, :anti_inflammatory_action, :antioxidant_protection, :structural_bone_preservation]
      interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, :reduction_of_oxidative_stressors,
              :antioxidant_dietary_therapy, :antiresorptive_therapy  ]
    end
    
    
    
    indicated_agent :zoledronic_acid do
      description "A highly potent, once-yearly intravenous bisphosphonate. It is indicated for the treatment and prevention of postmenopausal osteoporosis, treatment to increase bone mass in men with osteoporosis, and prevention of clinical fractures after hip fracture."
      brand_name [:Reclast, :Zometa]
      category :intravenous_bisphosphonate
      status :standard_of_care
      typical_dosage "5 mg intravenous infusion administered over at least 15 minutes once a year (for treatment) or once every 2 years (for prevention)."
      contraindicated_by [:severe_renal_impairment, :inability_to_stay_upright_for_30_min, 
                :hypocalcemia, :hypersensitivity_to_zoledronic_acid, :pregnancy, :lactation]
      intended_effects [:inhibite_bone_resorption, :increase_bone_density, :reduce_fracture_risk, :lower_bone_turnover_markers,
                        :decrease_mortality, :improve_quality_of_life]
      interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, 
              :antiresorptive_therapy,
              :multinucleated_resorbing_cells  ]
    end
	  
	end
  end
end