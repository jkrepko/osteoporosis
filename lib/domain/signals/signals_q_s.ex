defmodule Osteoporosis.Domain.Signals.SignalsQS do
  import Osteoporosis.DSL

  defmacro signals_q_s do
	quote do
		
		signal :RANKL_secretion do
			description "RANKL secretion is typically elevated due to the decline in protective estrogen levels, which normally suppress RANKL expression. This increase indicates a shift in the bone remodeling balance toward increased bone resorption, as RANKL stimulates osteoclast differentiation and activation. The resulting higher RANKL/OPG ratio is a key indicator of the accelerated bone loss and increased fracture risk characteristic of the disease."
			
			signal_type :process_state
		  
			indicates [
			  bone_resorption:            [ when: :increased, direction: :increased ],
			  osteoclast_differentiation: [ when: :increased, direction: :increased],
			  osteoclast_activation:      [ when: :increased, direction: :increased]
			  ]
		  end
		
		signal :resorption_lacunae_howships_lacunae do
			description "Resorption lacunae, also known as Howship’s lacunae, are shallow depressions or pits on the bone surface created by osteoclasts during the process of bone resorption.  They are formed when osteoclasts secrete acids and enzymes to dissolve the mineralized bone matrix and digest organic components, leaving behind these characteristic excavations."
			
			signal_type :process_state
		  
			indicates [
			  bone_resorption: [ when: :increased, direction: :increased ],
			  bone_fragility: [ when: :increased, direction: :increased],
			  bone_matrix_weakness: [ when: :increased, direction: :increased]
			  ]
		  end
		  

		signal :resorption_pits_exceeding_formation_volume do
			description "The phenomenon where bone resorption (the breakdown of bone by osteoclasts) exceeds bone formation (the rebuilding of bone by osteoblasts) is the primary pathological mechanism of the disease.  This imbalance is not a single 'signal' but rather a physiological state driven by specific molecular and hormonal signals, most notably RANKL (which stimulates osteoclasts) and a lack of estrogen (which normally inhibits osteoclast activity). "
			
			signal_type :process_state
		  
			indicates [
			  bone_mass:            [ when: :increased, direction: :increased ],
			  bone_porosity:        [ when: :increased, direction: :increased],
			  bone_fragility:       [ when: :increased, direction: :increased],
			  fracture_risk:        [ when: :increased, direction: :increased]
			  ]
		  end
		  

		signal :senescence_associated_secretory_phenotype do
			description "The senescence-associated secretory phenotype (SASP) is defined as a hypersecretory profile of bioactive molecules—including pro-inflammatory cytokines, chemokines, matrix metalloproteinases (MMPs), and growth factors—released by cells that have entered a permanent state of cell cycle arrest."
			
			signal_type :process_state
		  
			indicates [
			  osteoblast_differentiation: [ when: :increased, direction: :decreased ],
			  osteoclast_formation: [ when: :increased, direction: :increased],
			  cell_bystander_effect: [ when: :increased, direction: :increased],
			  extracellular_matrix: [ when: :increased, direction: :decreased]
			  ]
		  end
		  
		  
		  signal :suppressed_osteogenic_transcription do
			  description "In osteoporosis, Wnt/β-catenin signaling is the primary osteogenic signal that is suppressed.  This suppression is driven by increased levels of endogenous antagonists, specifically sclerostin and Dickkopf-1 (DKK1), which block the pathway and inhibit the transcription of key osteogenic factors like Runx2 and Osterix. "
			  
			  signal_type :process_state
			
			  indicates [
				bone_mass:                  [ when: :increased, direction: :decreased ],
				bone_strength:              [ when: :increased, direction: :decreased]
				]
			end
		  
		  signal :structural_cross_linking_proteins do
			description "Structural cross-linking proteins refer to the specific molecular bonds and associated proteins that stabilize the bone collagen matrix, primarily pyridinoline (PYD) and deoxypyridinoline (DPD).  These are enzymatic cross-links formed during the extracellular maturation of type I collagen, which constitutes over 90% of the bone's protein matrix."
			
			signal_type :molecule
		  
			indicates [
			  bone_density: [ when: :increased, direction: :increased ],
			  bone_maturity: [ when: :increased, direction: :increased],
			  bone_biomechanical_quality: [ when: :increased, direction: :increased]
			  ]
		  end
		
	  end
    end
end