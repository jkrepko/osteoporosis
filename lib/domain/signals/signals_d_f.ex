defmodule Osteoporosis.Domain.Signals.SignalsDF do
  import Osteoporosis.DSL

  defmacro signals_d_f do
	quote do
		
		signal :disconnected_trabecular_network do
			description "Disconnection of the trabecular network is defined as the structural loss of connectivity within the spongy inner bone matrix, where horizontal struts are lost and remaining vertical trabeculae become isolated or broken.  This condition indicates that the bone has undergone a plate-to-rod transition followed by trabecular perforation, leading to a discontinuous scaffold that significantly reduces bone stiffness and strength."
			
			signal_type :process_state
		  
			indicates [
			  fragility: [ when: :increased, direction: :increased ],
			  irreversible_damage: [ when: :increased, direction: :increased],
			  fracture_risk: [ when: :increased, direction: :increased] 
			  ]
		  end
		  
		  
		  
		  signal :endosteal_and_periosteal_integrity do
			description "Endosteal and periosteal integrity refers to the structural and functional condition of the endosteum (lining the inner bone cavities) and the periosteum (covering the outer bone surface), which together regulate bone remodeling, cortical thickness, and overall skeletal strength."
			
			signal_type :process_state
		  
			indicates [
			  endosteal_deficiency: [ when: :decreased, direction: :decreased ],
			  periosteal_failure: [ when: :decreased, direction: :decreased]
			  ]
		  end
		  
		  
		  signal :elasticity_of_organic_matrix do
			description "The elasticity of the organic matrix (primarily composed of Type I collagen and non-collagenous proteins) is significant because it provides tensile strength, flexibility, and toughness, compensating for the loss of mineral density. Definition: It refers to the organic matrix's ability to absorb stress and undergo deformation without permanent damage or fracture, acting as a soft padding that homogenizes stress distribution between stiff mineral crystallites."
			
			signal_type :process_state
		  
			indicates [
			  fracture_risk: [ when: :increased, direction: :decreased ],
			  tensile_strength: [ when: :increased, direction: :increased],
			  ability_to_absorb_stress: [ when: :increased, direction: :increased] 
			  ]
		  end
		  
		  
		  signal :endosteal_resorption do
			description "Endosteal resorption is the process by which osteoclasts break down bone from the inner surface of the cortical bone, widening the medullary cavity and thinning the bone wall.  This process is a primary driver of the net bone loss and microarchitectural deterioration seen in osteoporosis, particularly after menopause when estrogen deficiency accelerates osteoclastic activity. "
			
			signal_type :process_state
		  
			indicates [
			  bone_depth: [ when: :increased, direction: :decreased ],
			  osteoclast_activity: [ when: :increased, direction: :increased],
			  medullary_cavity: [ when: :increased, direction: :increased]
			  ]
		  end
		  
		  
		  signal :energy_atp do
			description "In osteoporosis, ATP indicates a shift from homeostatic bone remodeling to pathological bone loss, driven by energy metabolism disorders in osteoclasts and ATP-induced cell death in osteoblasts and mesenchymal stem cells."
			
			signal_type :molecule
		  
			indicates [
			  bone_resorption: [ when: :increased, direction: :increased ],
			  osteoclast_formation: [ when: :increased, direction: :increased],
			  cell_death_pathways: [ when: :increased, direction: :increased]
			  ]
		  end
		  
		  
		  
		  signal :enlarged_cortical_pores do
			description "Enlarged cortical pores are defined as intracortical vascular canals with a diameter exceeding 100 μm that have accumulated due to unbalanced bone remodeling where resorption outpaces formation.  In osteoporosis, these pores are significant because they are the primary determinant of increased porosity, with pore area changes explaining 81% of the variance in cortical porosity compared to pore density changes. "
			
			signal_type :tissue
		  
			indicates [
			  bone_strength: [ when: :increased, direction: :decreased ],
			  fracture_risk: [ when: :increased, direction: :increased],
			  remodeling_deficits: [ when: :increased, direction: :increased],
			  microstructural_deterioration: [ when: :increased, direction: :increased]
			  ]
		  end
		
		
		
	  end
    end
	
end