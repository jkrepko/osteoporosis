defmodule OsteoTest.Domain.Signals.SignalsAC do
  import OsteoTest.DSL
  
  defmacro signals_a_c do
  quote do

		signal :accumulation_of_non_enzymatic_glycation_end_products_ages do
			description "Accumulation of non-enzymatic glycation end products (AGEs) in osteoporosis is a critical pathogenic factor that significantly impairs bone quality and increases fracture risk, often independent of bone mineral density (BMD).  The accumulation of AGEs indicates and contributes to bone fragility through several mechanisms."
			
			signal_type :process_state
			
			indicates [
				biomechanical_deterioration: [ when: :increased, direction: :increased ],        # valine, leucine, tyrosine, and tryptophan
				cellular_dysfunction: [ when: :increased, direction: :increased],
				fracture_risk: [ when: :increased, direction: :increased]    # glycine, citrulline, and homocysteine
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