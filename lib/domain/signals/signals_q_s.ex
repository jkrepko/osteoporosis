defmodule Osteoporosis.Domain.Signals.SignalsQS do
  import Osteoporosis.DSL

  defmacro signals_q_s do
	quote do
		
		signal :resorption_lacunae_howships_lacunae do
			description "Resorption lacunae, also known as Howship’s lacunae, are shallow depressions or pits on the bone surface created by osteoclasts during the process of bone resorption.  They are formed when osteoclasts secrete acids and enzymes to dissolve the mineralized bone matrix and digest organic components, leaving behind these characteristic excavations."
			
			signal_type :process_state
		  
			indicates [
			  bone_resorption: [ when: :increased, direction: :increased ],
			  bone_fragility: [ when: :increased, direction: :increased],
			  bone_matrix_weakness: [ when: :increased, direction: :increased]
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