defmodule Osteoporosis.Domain.Signals.SignalsAC do
  import Osteoporosis.DSL
  
  defmacro signals_a_c do
  quote do

        
		signal :abnormal_osteoid_maturation do
			description "Abnormal osteoid maturation is characterized by normal mineralization of the bone matrix but a reduced amount of bone tissue. Osteoid maturation (the process of mineralization) is normal in osteoporosis. The abnormality lies in impaired bone formation and increased bone resorption, leading to low bone mass."
			
			signal_type :process_outcome
			
			indicates [
				bone_formation: [ when: :increased, direction: :decreased ],        # valine, leucine, tyrosine, and tryptophan
				bone_resorption: [ when: :increased, direction: :increased],
				bone_mass: [ when: :increased, direction: :decreased]    # glycine, citrulline, and homocysteine
				]
		end
		
		
		signal :accelerated_osteoclast_differentiation do
			description "Accelerated osteoclast differentiation in osteoporosis is a pathological process where osteoclast precursors rapidly mature into bone-resorbing cells, leading to net bone loss and decreased bone mass. This process is primarily driven by RANKL (Receptor Activator of Nuclear Factor-κB Ligand) signaling, which binds to the RANK receptor on osteoclast precursors.  This interaction triggers a cascade of intracellular signals, including NF-κB, MAPK (such as p38 and JNK), and calcium/NFATc1 pathways, which activate transcription factors essential for osteoclast maturation and function."
			
			signal_type :process_outcome
			
			indicates [       # valine, leucine, tyrosine, and tryptophan
				bone_resorption: [ when: :increased, direction: :increased],
				bone_formation:  [ when: :increased, direction: :decreased],
				bone_mass:       [ when: :increased, direction: :decreased]  ,
				bone_loss:       [ when: :increased, direction: :increased]   # glycine, citrulline, and homocysteine
				]
		end


		signal :accumulation_of_non_enzymatic_glycation_end_products_ages do
			description "Accumulation of non-enzymatic glycation end products (AGEs) in osteoporosis is a critical pathogenic factor that significantly impairs bone quality and increases fracture risk, often independent of bone mineral density (BMD).  The accumulation of AGEs indicates and contributes to bone fragility through several mechanisms."
			
			signal_type :process_state
			
			indicates [
				biomechanical_deterioration: [ when: :increased, direction: :increased ],        # valine, leucine, tyrosine, and tryptophan
				cellular_dysfunction: [ when: :increased, direction: :increased],
				fracture_risk: [ when: :increased, direction: :increased]    # glycine, citrulline, and homocysteine
				]
			end
			
			
			
			signal :activated_osteoclasts do
			description "Activated osteoclasts are bone-resorbing cells that have been stimulated to degrade bone matrix, a process driven primarily by the RANKL/RANK signaling pathway and co-stimulatory signals from ITAM adaptors like DAP12 and FcRγ. This activation is a cytokine-mediated signal triggered by pro-inflammatory cytokines (such as TNF-α and IL-1β) and molecular interactions that activate the master transcription factor NFATc1. This factor upregulates key resorptive enzymes including TRAP, cathepsin K (CTSK), and MMP-9, which degrade the mineral and organic components of bone. "
			
			signal_type :process_state
			
			indicates [
				bone_resorption: [ when: :increased, direction: :increased ],        # valine, leucine, tyrosine, and tryptophan
				bone_loss: [ when: :increased, direction: :increased ], 
				bone_mass: [ when: :increased, direction: :decreased ], # glycine, citrulline, and homocysteine
				]
			end
			
			
			signal :active_RANKL do
			description "Active RANKL is a cytokine ligand belonging to the tumor necrosis factor (TNF) superfamily that acts as a positive signal for bone resorption.  It indicates an imbalance in bone remodeling where the ratio of RANKL to its decoy receptor, OPG, is elevated, leading to excessive osteoclast differentiation, activation, and survival. "
			
			signal_type :molecule
			
			indicates [
				bone_resorption: [ when: :increased, direction: :increased ],        # valine, leucine, tyrosine, and tryptophan
				bone_loss: [ when: :increased, direction: :increased ]   # glycine, citrulline, and homocysteine
				]
			end
			
			
			signal :alkaline_phosphatase_activity do
			description "alkaline phosphatase (ALP) activity typically remains within the normal range, as the condition is defined by low bone mass rather than defects in mineralization.  However, elevated ALP levels serve as a critical signal for increased bone turnover and accelerated remodeling, which often reflects a compensatory response to declining bone density or indicates high-turnover osteoporosis."
			
			signal_type :process_state
			
			indicates [
				bone_turnover:       [ when: :increased, direction: :increased ],      
				bone_remodeling:     [ when: :increased, direction: :increased ], 
				fracture_risk:       [ when: :increased, direction: :increased ]  
				]
			end
			
			
			signal :amino_acids do
			description "These compounds are significant because they directly regulate the balance between bone formation and bone resorption, serving as both diagnostic markers and therapeutic targets."
			
			signal_type :molecule
			
			indicates [
				fracture_risk: [ when: :increased, direction: :decreased ],        # valine, leucine, tyrosine, and tryptophan
				bone_mineral_density: [ when: :increased, direction: :decreased]   # glycine, citrulline, and homocysteine
				]
			end
			
			
			signal :anabolic_peptides do
			description "These compounds are significant because they directly regulate the balance between bone formation and bone resorption, serving as both diagnostic markers and therapeutic targets."
			
			signal_type :molecule
			
			indicates [
				osteoblast_activity:  [ when: :increased, direction: :increased ],        # teriparatide and abaloparatide (PTH analogs)
				new_bone_development: [ when: :increased, direction: :increased ]   
				]
			end
			
			
			signal :antiresorptive_peptides do
			description "These compounds are significant because they directly regulate the balance between bone formation and bone resorption, serving as both diagnostic markers and therapeutic targets."
			
			signal_type :molecule
			
			indicates [
				bone_breakdown: [ when: :increased, direction: :decreased ],        # valine, leucine, tyrosine, and tryptophan
				osteoclast_activity: [ when: :increased, direction: :decreased]   # glycine, citrulline, and homocysteine
				]
			end
			
			signal :apoptotic_osteoblast_bodies do
			description "Apoptotic osteoblast bodies are membrane-bound fragments released when osteoblasts undergo programmed cell death (apoptosis), -- Their significance lies in reflecting a critical imbalance in bone remodeling where osteoblast apoptosis outpaces the supply of new bone-forming cells, leading to diminished bone mass and increased fracture risk."
			
			signal_type :cells
			
			indicates [
				bone_formation: [ when: :increased, direction: :decreased ],        # valine, leucine, tyrosine, and tryptophan
				bone_mineral_density: [ when: :increased, direction: :decreased]   # glycine, citrulline, and homocysteine
				]
			end
			
			
			signal :ascorbic_acid_vitamin_c do
			description "Vitamin C (ascorbic acid) is an essential nutrient that serves as a mandatory cofactor for collagen synthesis, providing the flexible protein scaffold necessary for bone mineralization and structural integrity.  Its significance in osteoporosis lies in its ability to stimulate osteoblast (bone-building) activity, inhibit osteoclast (bone-resorbing) differentiation, and protect bone cells from oxidative stress."
			
			signal_type :molecule
			
			indicates [
				osteoblast_activity:    [ when: :increased, direction: :increased ],       
				osteoclast_differentiation: [ when: :increased, direction: :decreased],
				bone_mineral_density:   [ when: :increased, direction: :increased ],    
				]
			end
			
			
			signal :basic_multicellular_units do
			description "Basic multicellular units (BMUs) are temporary anatomic structures composed of coordinated teams of osteoclasts (bone-resorbing cells) and osteoblasts (bone-forming cells) that facilitate bone remodeling. BMUs are not signals themselves, but rather the mechanical and cellular executioners of signals; however, they are regulated by key signaling molecules like RANKL (promotes resorption) and Wnt antagonists like sclerostin (inhibits formation)."
			
			signal_type :tissue
			
			indicates [
				osteoclast_activity:    [ when: :increased, direction: :increased ],       
				osteoblast_capacity:    [ when: :increased, direction: :decreased],
				bone_loss:              [ when: :increased, direction: :increased ],   
				fragility:              [ when: :increased, direction: :increased ],  
				]
			end
			
			
			signal :bioavailable_calcium_ions do
			description "Bioavailable calcium ions refer to ionized calcium (Ca²⁺), which constitutes the biologically active, unbound fraction of calcium in the blood, distinct from protein-bound calcium.  These ions serve as ubiquitous second messengers in bone physiology, acting as digital signals that trigger intracellular pathways essential for bone remodeling. "
			
			signal_type :molecule
			
			indicates [
				bone_resorption:   [ when: :decreased, direction: :increased ]
				]
			end
			
			signal :bone_brittleness do
			description "Bone brittleness in osteoporosis is the physical result of porous, weakened bones caused by the bone tissue breaking down faster than it is replaced.  It is not a direct sensation or symptom felt by the patient, but rather a structural signal of significantly low bone density and deteriorated microarchitecture."
			
			signal_type :process_state
			
			indicates [
				fracture_risk:   [ when: :increased, direction: :increased ],
				bone_fragility:  [ when: :increased, direction: :increased]
				]
			end
			
			
			signal :bone_degradation_products_ctx_ntx do
			description "Bone degradation products, specifically C-terminal telopeptide (CTX) and N-terminal telopeptide (NTX), are collagen fragments released into the blood and urine when osteoclasts break down bone matrix."
			
			signal_type :molecule
			
			indicates [
				fracture_risk: [ when: :increased, direction: :increased ],
				biophosphonates: [ when: :decreased, direction: :increased],
				hyperresorption: [ when: :increased, direction: :increased] 
				]
			end
			
		
		signal :bone_marrow_cavity_space do
			description "Icreased bone marrow cavity space is defined as the widening of the medullary cavity (the central hollow space within long bones) and the expansion of marrow spaces within trabecular bone. This occurs because daily bone remodeling leads to a gradual resorption of minerals from the inside of the cortical layer and the bone cavity itself, causing the cavity to expand as bone mass is lost. "
			
			signal_type :molecule
		
			indicates [
			fracture_risk: [ when: :increased, direction: :increased ],
			bone_resorption: [ when: :decreased, direction: :increased]
			]
		end
		
		
		
		signal :brittle_protein_scaffolding do
			description "Collagen serves as the critical protein scaffolding in bone, providing the flexible framework upon which minerals like calcium and phosphate are deposited.  In osteoporosis, the deterioration of this collagen matrix—alongside reduced bone mineral density—is a primary indicator of bone fragility and increased susceptibility to fractures."
			
			signal_type :molecule
			
			indicates [
				fragility: [ when: :increased, direction: :increased ],
				bone_tissue_deterioration: [ when: :increased, direction: :increased]
				]
			end
			
			
			signal :calcium_ions_from_bone do
			description "Calcium ions from bone are ionized calcium (Ca²⁺) released into the extracellular space during osteoclast-mediated bone resorption, where osteoclasts degrade the bone matrix."
			
			signal_type :molecule
			
			indicates [
				stimulation_of_bone_formation: [ when: :increased, direction: :increased ],
				regulation_of_bone_metabolism: [ when: :increased, direction: :increased],
				bone_remodeling: [ when: :increased, direction: :increased] 
				]
			end
			
			
			signal :calcium_and_phosphate_into_bloodstream do
			description "The release of calcium and phosphate from bone into the bloodstream is a sign of net bone resorption exceeding bone formation.  This process is driven by osteoclasts dissolving old bone tissue, which is accelerated in conditions like primary hyperparathyroidism or due to phosphate toxicity from high dietary phosphorus intake."
			
			signal_type :process_state
			
			indicates [
				bone_density: [ when: :increased, direction: :decreased ],
				parathyroid_hormone: [ when: :increased, direction: :increased],
				bone_structural_integrity: [ when: :increased, direction: :decreased] 
				]
			end
			
			
			signal :compact_cortical_bone_thickness do
			description "Compact (cortical) bone thickness is defined as the width of the dense, hard outer layer of the bone, which comprises approximately 80% of total skeletal mass. In the context of osteoporosis, this thickness decreases significantly due to increased intracortical remodeling and porosity, a process that accelerates with age and menopause."
			
			signal_type :tissue
			
			indicates [
				fracture_risk: [ when: :increased, direction: :decreased ],
				bone_mineral_density: [ when: :increased, direction: :increased],
				fragility_fractures: [ when: :decreased, direction: :increased] 
				]
			end
			
			
		    signal :cortical_porosity do
				description "Cortical porosity is a micro-architectural measure of the volume fraction of pores (void spaces filled with fluid, primarily water) within the dense cortical bone shell. It is not a traditional imaging signal but a quantitative biomarker derived from advanced imaging techniques such as high-resolution peripheral quantitative computed tomography (HR-pQCT), ultrashort echo time (UTE) MRI, or quantitative acoustics, which detect the increased void volume and associated pore water or free water signals."
				
				signal_type :process_state
				
				indicates [
					bone_fragility:      [ when: :increased, direction: :increased],
					bone_strength:       [ when: :increased, direction: :decreased ],
					bone_resorption:     [ when: :increased, direction: :increased],
					fracture_risk:       [ when: :increased, direction: :increased]
			    ]
			end
			
			
			signal :cortical_porosity_expansion do
				description "The widening and deepening of Haversian and Volkmann canals within the dense outer cortical bone shell, transforming compact bone into a more porous, sponge-like structure."
				
				signal_type :process_state
				
			
				indicates [
					enlarged_cortical_pores:  [ when: :increased, direction: :increased],
					endosteal_resorption:     [ when: :increased, direction: :increased],
					susceptibility_to_long_bone_fractures_hip_and_wrist:  [ when: :increased, direction: :increased],
					diminished_torsional_and_bending_rigidity:  [ when: :increased, direction: :increased],
					cortical_fragility:  [ when: :increased, direction: :increased],
					risk_of_hip_fracture_under_side_impact:  [ when: :increased, direction: :increased]
				]
			
			end
			
			
			signal :cytosolic_beta_catenin do
			description "Cytosolic β-catenin refers to the stabilized, unbound form of the β-catenin protein that accumulates in the cytoplasm due to the inhibition of its degradation complex (which includes GSK-3β and Axin).  It serves as a positive signaling molecule that transmits Wnt pathway signals to the nucleus to activate gene expression."
			
			signal_type :molecule
			
			indicates [
				active_osteogenesis: [ when: :increased, direction: :increased ],
				osteoblast_differentiation: [ when: :increased, direction: :increased],
				bone_formation: [ when: :increased, direction: :increased],
				osteoclast_activity: [ when: :increased, direction: :decreased]
				]
			end
			
			
			signal :cortical_shell do
			description "Thinned cortical shell refers to the reduction in the thickness of the outer dense layer of bone (cortical bone), which typically comprises about 80% of total skeletal mass. This thinning is primarily driven by endosteal resorption, where bone is lost from the inner surface of the cortex, and is a hallmark of involutional osteoporosis."
			
			signal_type :molecule
			
			indicates [
				bone_loss: [ when: :decreased, direction: :increased ],
				fracture_risk: [ when: :decreased, direction: :increased],
				bone_biomechanical_quality: [ when: :decreased, direction: :decreased]
				]
			end
	  end
   end
end