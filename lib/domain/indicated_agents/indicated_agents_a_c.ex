defmodule Osteoporosis.Domain.IndicatedAgents.IndicatedAgentsAC do
  # import Osteoporosis.DSL
  
  defmacro indicated_agents_a_c do
  quote do
	  
	  indicated_agent :"17_beta_estradiol_oral" do
		  description "Bioidentical oral estrogen formulation providing systemic hormone replacement"
		  brand_name :Estrace
		  category :estrogen_therapy
		  status  :first_line_standard_of_care
		  typical_dosage "0.5 mg to 1.0 mg daily"
		  contraindicated_by []
		  intended_effects [:test_result]
		  interventions [:estrogen_therapy, :hormone_replacement_therapy ]
	  end
		  
		  
	  indicated_agent :abaloparatide do
		  description "Abaloparatide is a synthetic analog of human parathyroid hormone-related protein (PTHrP[1-34]) that selectively targets the RG conformation of the PTH1 receptor, promoting profound osteoblastic bone formation with minimal bone resorption stimulation."
		  brand_name :Abaloparatide
		  category :pthrp_analog
		  status  :standard_of_care
		  typical_dosage "80 micrograms (mcg) administered subcutaneously once daily in the abdominal region for up to 18 to 24 months total duration."
		  contraindicated_by [:osteosarcoma, :pediatric_bone_disorders, :hypersensitivity_to_abaloparatide_or_excipients,
							  :hypercalcemia, :severe_hypercalciuria, :renal_impairment, :hepatic_impairment]
		  intended_effects []
		  interventions [ :parathyroid_hormone_pth_anabolic_regimens  ]
	  end
		  
	  
	  indicated_agent :alendronate do
		  description "A potent oral aminobisphosphonate that is a first-line treatment for postmenopausal osteoporosis, glucocorticoid-induced osteoporosis, and osteoporosis in men."
		  brand_name :Fosamax
		  category :oral_bisphosphonate
		  status  :standard_of_care
		  typical_dosage "70 mg orally once weekly"
		  contraindicated_by [:esophageal_abnormalities, :inability_to_stay_upright_for_30_min, 
							   :hypocalcemia, :hypersensitivity_to_alendronate]
		  intended_effects []
		  interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, :wnt_signaling_activators,
						  :antiresorptive_therapy, :multinucleated_resorbing_cells  ]
	  end
	  
	  
	  indicated_agent :bazedoxifene_conjugated_estrogens do  
		  description "A Tissue-Selective Estrogen Complex (TSEC) that pairs estrogen with a selective estrogen receptor modulator (SERM), eliminating the need for a separate progestin in women with an intact uterus while protecting the endometrium."
		  brand_name :Duavee
		  category :estrogen_therapy
		  status :first_line_standard_of_care
		  typical_dosage "0.45 mg conjugated estrogens / 20 mg bazedoxifene daily"
		  contraindicated_by []
		  intended_effects []
		  interventions [:estrogen_therapy, :selective_estrogen_receptor_modulators, :estrogen_receptor_agonism]
	  end
	  
	  indicated_agent :BHQ880 do
		  description "BHQ880 ( DKK1 Inhibitory Antibody ) is a neutralizing IgG1 monoclonal antibody designed to bind circulating and bone-microenvironment DKK1, blocking its interaction with LRP5/6 receptors and promoting osteoblast-mediated bone accrual."
		  brand_name []
		  category :igg1_monoclonal_antibody
		  status   :first_line_standard_of_care
		  typical_dosage "Intravenous infusion or subcutaneous injection at a dosage of 2.5 mg/kg to 10 mg/kg every 4 weeks under specialist endocrinology supervision."
		  contraindicated_by  [:hypersensitivity_to_active_biologic_substance, :hypersensitivity_or_anaphylaxis_to_monoclonal_antibody_therapies,
							  :pregnancy, :planned_pregnancy, :lactation, :active_systemic_infection_or_chronic_opportunistic_infections,  :severe_hepatic_dysfunction]
		  intended_effects []
		  interventions [ :dkk1_neutralizing_antibodies ]	
	  end
		  
		  
	  indicated_agent :calcium_and_vitamin_D_supplementation do 
		  description "Essential foundational supplements co-prescribed with denosumab to prevent severe hypocalcemia, particularly in patients with pre-existing vitamin D insufficiency or reduced renal function."
		  brand_name [:Caltrate, :Os_Cal, :Citracal]
		  category :supplementation
		  status :first_line_standard_of_care
		  typical_dosage "Calcium: 1000-1200 mg daily; Vitamin D3: 800-2000 IU daily"
		  contraindicated_by [:hypercalcemia, :hypercalciuria, :nephrolithiasis, :severe_renal_impairment ]
		  intended_effects []
		  interventions [:estrogen_therapy, :denosumab, :teriparatide_pth_analog_intermittent, :wnt_signaling_activators ]
	  end
	  
	  indicated_agent :calcium_carbonate do
		  description "A high elemental calcium salt (approximately 40% elemental calcium by weight) that provides a cost-effective and efficient dietary supplement to maintain positive calcium balance, best absorbed when taken with meals."
		  brand_name [:Caltrate, :Os_Cal ]
		  category :mineral_supplement
		  status :first_line_standard_of_care
		  typical_dosage "500 mg to 1200 mg elemental calcium daily (divided in doses not exceeding 500-600 mg of elemental calcium at one time, taken with food)"
		  contraindicated_by [:hypercalcemia, :achlorhydria, :hypercalciuria ]
		  intended_effects []
		  interventions [:estrogen_therapy, :denosumab, :teriparatide_pth_analog_intermittent, :wnt_signaling_activators,
						  :adequate_vitamin_d_and_calcium_status ]
	  end
						  
	  indicated_agent :calcium_citrate do 
		  description "A calcium salt with higher bioavailability that does not rely on stomach acid for absorption, making it highly suitable for elderly patients, those with achlorhydria, or patients taking proton pump inhibitors."
		  brand_name [:Citracal]
		  category :mineral_supplement
		  status :first_line_standard_of_care
		  typical_dosage "500 mg to 1000 mg elemental calcium daily, taken with or without food"
		  contraindicated_by [:hypercalcemia, :severe_renal_impairment, :hypersensitivity_to_calcium_citrate_formulations ]
		  intended_effects []
		  interventions [:estrogen_therapy, :denosumab, :teriparatide_pth_analog_intermittent, :wnt_signaling_activators,
						  :adequate_vitamin_d_and_calcium_status ]
	  end
	  
	  
		
	  indicated_agent :conjugated_equine_estrogens do #Angiotensin-Converting Enzyme Inhibitors 
		  description "Often prescribed in combination with medroxyprogesterone acetate for women with an intact uterus to prevent endometrial hyperplasia."
		  brand_name :Premarin
		  category :estrogen_therapy
		  status :first_line_standard_of_care
		  typical_dosage "0.3 mg to 0.625 mg daily"
		  contraindicated_by []
		  intended_effects []
		  interventions [:estrogen_therapy, :hormone_replacement_therapy ]
	  end
		  
		  
	  indicated_agent :conjugated_equine_etrogens_with_medroxyprogesterone_acetate do  #Angiotensin-Converting Enzyme Inhibitors 
		  description "A combination estrogen and progestogen regimen utilized in women with an intact uterus to provide bone protection while preventing estrogen-induced endometrial hyperplasia."
		  brand_name [:Prempro, :Premphase]
		  category :combined_hormone_therapy
		  status :first_line_standard_of_care
		  typical_dosage "Continuous combined regimen of CEE 0.625 mg and MPA 2.5 mg to 5 mg taken orally once daily without interruption."
		  contraindicated_by [:known_or_suspected_pregnancy, :estrogen_dependent_malignancies_history, :thromboembolic_disorders,
						  :severe_hepatic_impairment, :uterine_bleeding ]
		  intended_effects []
		  interventions [:estrogen_therapy, :hormone_replacement_therapy ]
	  end
	  
	  
    end
  end
end