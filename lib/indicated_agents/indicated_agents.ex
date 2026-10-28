defmodule Osteoporosis.IndicatedAgents do
  @moduledoc false
  use Osteoporosis.Collection, attribute: :indicated_agents
  import Osteoporosis.DSL


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
		
    
	indicated_agent :denosumab do
		description "A fully human monoclonal antibody directed against RANKL, preventing the interaction of RANKL with RANK on osteoclast surfaces, thereby profoundly inhibiting osteoclast formation, function, and survival to protect trabecular architecture."
		brand_name [:Prolia]
		category :rankl_inhibitor
		status :standard_of_care
		typical_dosage "60 mg administered subcutaneously once every 6 months"
		contraindicated_by [:pregnancy, :hypocalcemia, :hypersensitivity_to_denosumab ]
		intended_effects []
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
		intended_effects []
		interventions [ :senolytics_dasatinib_quercetin ]
	end
		
	  
	indicated_agent :estradiol_gel_spray do #Angiotensin-Converting Enzyme Inhibitors 
		description "Allows flexible dosing and avoids hepatic first-pass metabolism."
		brand_name [:Elestrin, :Divigel, :Estrogel]
		category :estrogen_therapy
		status :first_line_standard_of_care
		typical_dosage "1 actuation daily (varying by specific product concentration)"
		contraindicated_by []
		intended_effects []
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
		intended_effects []
		interventions [ :senolytics_dasatinib_quercetin ]
	end
		
		
	indicated_agent :GLP_1_receptor_agonists do
		description "Injectable incretin mimetics that enhance glucose-dependent insulin secretion, suppress glucagon release, and promote weight loss; weight management benefits can indirectly reduce mechanical joint load, while exhibiting generally neutral or favorable bone safety profiles."
		brand_name [:Ozempic, :Wegovy, :Mounjaro, :Zepbound]
		category :glp1_receptor_agonist
		status :first_line_standard_of_care
		typical_dosage "0.75 mg to 1.5 mg subcutaneously once weekly (dulaglutide) or 0.6 mg to 1.8 mg subcutaneously daily (liraglutide)"
		contraindicated_by [:history_of_medullary_thyroid_carcinoma, :multiple_edocrine_neoplasia_syndrome_type_2,  
							:hypersensitivity_to_dulaglutide_or_liraglutide]
		intended_effects []
		interventions [:glycemic_control]	
	end
		
		
	indicated_agent :green_tea_extract do
		description "Green tea extract is a concentrated polyphenol botanical extract with powerful antioxidant and anti-inflammatory properties that have been shown in studies to inhibit osteoclast differentiation and promote osteoblast survival."
		brand_name []
		category :botanical_polyphenol
		status :standard_of_care
		typical_dosage "2250 mg to 500 mg standardized extract orally daily,"
		contraindicated_by [:acute_liver_disease, :elevated_baseline_transaminases, :concurrent_use_of_hepatotoxic_medications ]
		intended_effects []
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
		intended_effects []
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
		intended_effects []
		interventions [ :dkk1_neutralizing_antibodies ]	
	end
		
		
	indicated_agent :metformin do
		description "A first-line oral biguanide anti-hyperglycemic agent that improves insulin sensitivity and reduces hepatic glucose production, with preclinical and clinical evidence suggesting a neutral to potentially beneficial effect on bone remodeling and fracture risk reduction."
		brand_name [:Glucophage, :Glumetza, :Fortamet, :Riomet]
		category :biguanide
		status :first_line_standard_of_care
		typical_dosage "500 mg to 2000 mg daily, typically initiated at 500 mg once or twice daily with meals and titrated gradually to minimize gastrointestinal side effects"
		contraindicated_by [:low_eGFR, :acute_metabolic_acidosis, :chronic_metabolic_acidosis,  :hepatic_disease, :tissue_hypoxia ]
		intended_effects []
		interventions [:denosumab, :teriparatide_pth_analog_intermittent, :glycemic_control ]	
	end
			
	
	indicated_agent :physical_therapy_supervision__rehabilitation do
		description "Specialized physical therapy consultation and supervised rehabilitation to ensure proper biomechanical form, prevent dangerous spinal flexion or twisting movements, and customize exercise loads for patients with pre-existing fractures."
		brand_name []
		category :rehabilitative_care
		status :standard_of_care
		typical_dosage "1-3 sessions per week initially for form mastery, transitioning to independent home programs with periodic clinical reassessment"
		contraindicated_by [:traumatic_spinal_instability, :patient_refusal ]
		intended_effects []
		interventions [:estrogen_therapy]
	end
	
	
	indicated_agent :progesterone do
		description "Co-administered with estrogen in non-hysterectomized women to protect the endometrium from unopposed estrogen-induced hyperplasia and endometrial carcinoma."
		brand_name [:Endometrin, :Crinone, :Milprosa]
		category :hormone_co_therapy
		status :standard_of_care
		typical_dosage "200 mg orally daily for 12 days per month (sequential) or 100 mg orally daily (continuous combined)"
		contraindicated_by [:breast_cancer, :uterine_bleeding, :liver_disease,
							:hypersensitivity_to_progesterone ]
		intended_effects []
		interventions [:estrogen_therapy]
	end
		
	
	indicated_agent :raloxifene_hydrochloride do
		description "A second-generation selective estrogen receptor modulator (SERM) that acts as an estrogen agonist in bone and lipid metabolism, reducing bone resorption and lowering total and LDL cholesterol, while acting as an antagonist in uterine and breast tissues.  A benzothiophene-derived SERM that selectively binds to estrogen receptors, providing estrogen-like bone-sparing effects to prevent vertebral fractures and postmenopausal bone loss without stimulating endometrial tissue."
		brand_name [:Evista, :Optruma]
		category [:serm, :selective_estrogen_receptor_modulator]
		status :standard_of_care
		typical_dosage "60 milligrams (mg) taken orally once daily, with or without food, accompanied by adequate calcium and vitamin D supplementation."
		contraindicated_by [:venous_thromboembolism, :pregnancy, :lactation, :severe_hepatic_impairment, :cholestasis,
							:uterine_bleeding, :severe_hepatic_impairment, :prolonged_immobilization ]
		intended_effects []
		interventions [:estrogen_therapy, :estrogen_receptor_agonism, :raloxifene, :selective_estrogen_receptor_modulators ]
	end
		
	
	indicated_agent :recombinant_human_osteoprotegerin do
		description "Recombinant human_ steoprotegerin is a genetically engineered fusion protein combining the ligand-binding domain of human osteoprotegerin with the Fc portion of human IgG1, designed to extend circulatory half-life and potently neutralize RANKL to inhibit bone resorption."
		brand_name []
		category :rdecoy_receptor_biologic
		status :standard_of_care
		typical_dosage "Parenteral administration (subcutaneous injection) ranging from 0.1 mg/kg to 3.0 mg/kg administered at multi-week intervals in clinical trial settings."
		contraindicated_by [:uncorrected_hypocalcemia, :severe_infection, :sepsis, :development_of_neutralizing_anti_OPG_antibodies,
							:hypersensitivity_to_human_immunoglobulin_Fc_fusion_proteins ]
		intended_effects []
		interventions [:recombinant_osteoprotegerin]
	end
	
	indicated_agent :resveratrol do
		description "A natural polyphenol and potent sirtuin activator (SIRT1) with strong antioxidant and anti-inflammatory properties that inhibit osteoclastogenesis, reduce bone oxidative stress, and stimulate osteoblastic bone formation."
		brand_name []
		category :polyphenolic_antioxidant
		status :standard_of_care
		typical_dosage "150 mg to 500 mg orally once daily with food"
		contraindicated_by [:active_bleeding_disprders, :hormone_sensitive_malignancies, :hypersensitivity_to_resveratrol ]
		intended_effects []
		interventions [:reduction_of_oxidative_stressors]
	end
	
	indicated_agent :rh_TGF_beta1 do
		description "A purified recombinant growth factor that stimulates osteoblast precursor recruitment, chemotaxis, and early matrix production to promote bone coupling and mineralization in osteoporotic bone defects."
		brand_name []
		category :growth_factor_biologic
		status :standard_of_care
		typical_dosage "Targeted local or systemic administration ranging from 0.05 mg/kg to 1.0 mg/kg via specialized delivery protocols under clinical evaluation."
		contraindicated_by [:active_local_or_systemic_neoplasia, :pregnancy, :lactation, :severe_inflammation_at_the_administration_site,
							:hypersensitivity_to_recombinant_human_growth_factors]
		intended_effects []
		interventions [:tgf_beta_signaling]
	end
	
	
	indicated_agent :risedronate do
		description "A pyridinyl bisphosphonate that binds to bone surfaces, inhibiting osteoclast-mediated bone resorption to reduce vertebral and non-vertebral fractures."
		brand_name [:Actonel, :Atelvia]
		category :oral_bisphosphonate
		status :standard_of_care
		typical_dosage "35 mg orally once weekly or 150 mg orally once a month"
		contraindicated_by [:severe_renal_impairment, :inability_to_stay_upright_for_30_min, 
							:hypocalcemia, :hypersensitivity_to_risedronate]
		intended_effects []
		interventions [:bisphosphonate_therapy]
	end
		

	
	indicated_agent :romosozumab do
		description "Romozozumab is a humanized monoclonal antibody that targets and inhibits sclerostin, promoting marked osteoblastic bone formation alongside a temporary reduction in bone resorption, uniquely suited for patients with severe osteoporosis and high fracture risk."
		brand_name [:Evenity]
		category [:monoclonal_antibody_anabolic, :sclerostin_inhibitor]
		status :standard_of_care
		typical_dosage "210 mg total dose administered subcutaneously once monthly (given as two 105 mg injections in the abdomen, thigh, or upper arm) for a maximum duration of 12 monthly doses, followed by an antiresorptive therapy."
		contraindicated_by [:myocardial_infarction, :hypocalcemia, :hypersensitivity_to_romosozumab_aqqg]
		intended_effects []
		interventions [:reduction_of_oxidative_stressors, :romosozumab, :wnt_signaling_activators]
	end
		
		
	indicated_agent :SB_216763 do
		description "SB_216763 is a phighly selective, ATP-competitive small molecule inhibitor of GSK-3alpha and GSK-3beta known to stimulate alkaline phosphatase activity and mineralization in osteoblastic cell cultures, supporting bone accrual."
		brand_name []
		category :atp_competitive_inhibitor
		status :standard_of_care
		typical_dosage "Investigational oral dosing ranging from 10 mg/kg to 30 mg/kg daily, adjusted according to metabolic response."
		contraindicated_by [:history_of_severe_drug_induced_liver_injury, 
							:use_of_strong_inducers_or_inhibitors_of_CYP450_enzymes_metabolizing_the_compound,
							:active_malignancies, :active_proliferative_bone_disorders ]
		intended_effects []
		interventions [:gsk3_beta_inhibitors]
	end
		
		
	indicated_agent :SGLT2_inhibitors do
		description "Oral antidiabetic agents that inhibit sodium-glucose cotransporter 2 in the proximal renal tubules, reducing blood glucose through glycosuria; clinical considerations are warranted regarding potential effects on volume status and bone mineral metabolism."
		brand_name [:Empagliflozin, :Dapagliflozin]
		category :sglt2_inhibitor
		status :first_line_standard_of_care
		typical_dosage "10 mg orally once daily (empagliflozin) or 10 mg orally once daily (dapagliflozin), taken in the morning with or without food"
		contraindicated_by [:low_eGFR, :severe_renal_impairment, :end_stage_renal_disease,  
							 :hypersensitivity_to_the_specific_SGLT2_inhibitor]
		intended_effects []
		interventions [:glycemic_control]	
	end
		
		
	indicated_agent :strontium_ranelate do
		description "The primary dual-action oral agent composed of two atoms of stable strontium bound to an organic ranelate moiety. It uniquely promotes osteoblastic bone matrix deposition while suppressing osteoclastic resorption, improving overall bone strength and microarchitecture."
		brand_name [:Protelos, :Protos, :Osseor]
		category :dual_action_modulator
		status :first_line_standard_of_care
		typical_dosage " g once daily taken orally as a suspension in a glass of water, ideally taken at bedtime separated from food and dairy products to ensure optimal absorption."
		contraindicated_by [:cardiovascular_disease,  :venous_thromboembolic_events, :severe_renal_failure,
							:uncontrolled_hypertension]
		intended_effects []
		interventions [:glycemic_control]	
	end
		
		
		
	indicated_agent :teriparatide_therapy do
		description "A recombinant human parathyroid hormone analog that stimulates bone formation, sometimes utilized in specialized sequential regimens after denosumab, though careful monitoring is required to prevent transient BMD loss."
		brand_name [:Bonsity, :Forsteo, :Movymia, :Terrosa, :Sondelbay, :Kauliv]
		category :anabolic_agent
		status :first_line_standard_of_care
		typical_dosage "20 mcg subcutaneously once daily"
		contraindicated_by [:bone_metastases, :open_epiphyses, :metabolic_bone_diseases, :pagets_disease, :hypercalcemia, :skeletal_radiation ]
		intended_effects []
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
		intended_effects []
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
		intended_effects []
		interventions [:gsk3_beta_inhibitors]
	end
		
		
	indicated_agent :transdermal_estradiol_patch do
		description "Bypasses first-pass hepatic metabolism, potentially lowering the risk of venous thromboembolism compared to oral formulations."
		brand_name [:Climara, :Vivelle_Dot]
		category :estrogen_therapy
		status :first_line_standard_of_care
		typical_dosage "0.025 mg to 0.1 mg / 24 hours (applied weekly or bi-weekly)"
		contraindicated_by []
		intended_effects []
		interventions [:estrogen_therapy]
	end
	

		
	indicated_agent :vitamin_C do 
		description "Vitamin C (Ascorbic Acid) is a potent water-soluble antioxidant that acts as a cofactor for prolyl and lysyl hydroxylase, essential for collagen synthesis and cross-linking in the organic bone matrix, while scavenging free radicals to protect bone cells."
		brand_name []
		category :water_soluble_vitamin_antioxidant
		status :standard_of_care
		typical_dosage "200 IU to 400 IU orally daily"
		contraindicated_by [:calcium_oxalate_nephrolithiasis_history, :G6PD_deficiency, :hemochromatosis, :iron_overload_disorders ]
	    intended_effects []
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
		intended_effects []
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
		intended_effects []
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
		intended_effects []
		interventions [:bisphosphonate_therapy, :denosumab, :teriparatide_pth_analog_intermittent, 
						:antiresorptive_therapy,
						:multinucleated_resorbing_cells  ]
	end
	

end
