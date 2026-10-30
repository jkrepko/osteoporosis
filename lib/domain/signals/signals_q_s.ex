defmodule Osteoporosis.Domain.Signals.SignalsQS do
  import Osteoporosis.DSL

  defmacro signals_q_s do
	quote do
		
		
		signal :osteoid_production do
			description "Reduced osteoid production is a hallmark of decreased bone formation, indicating that osteoblasts are unable to keep pace with bone resorption. This condition is primarily a cellular signal of impaired osteoblast activity and function, often driven by hormonal changes (such as estrogen deficiency) or aging, rather than a lack of raw materials. "
			
			signal_type :process_state
		  
			indicates [
			  bone_formation:      [ when: :decreased, direction: :decreased ],
			  osteoblast_activity: [ when: :decreased, direction: :decreased],
			  bone_mass:           [ when: :decreased, direction: :decreased],
			  fragility:           [ when: :decreased, direction: :increased]
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