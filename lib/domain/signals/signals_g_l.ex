defmodule Osteoporosis.Domain.Signals.SignalsGL do
  import Osteoporosis.DSL

  defmacro signals_g_l do
	quote do
		
		
		signal :hypocellular_bone_surfaces do
			description "A functional decline and increased programmed cell death (apoptosis) of osteoblasts, the cells responsible for synthesizing new bone matrix, leading to an uncoupling of the bone remodeling cycle."
			
			signal_type :process_state
		  
			indicates [
			  bone_formation_rate: [ when: :increased, direction: :decreased ],
			  osteoid_mineralization: [ when: :increased, direction: :decreased],
			  trabecular_thickness: [ when: :increased, direction: :decreased]
			  ]
		  end
		  
		  
		  signal :intact_trabecular_struts_and_plates do
			description "Intact trabecular struts and plates are the microscopic, load-bearing components of trabecular (cancellous) bone that form a connected, honeycomb-like internal scaffold.  In a healthy skeleton, these structures are predominantly plate-like (broad, flat sheets) rather than rod-like, providing superior resistance to compression and bending while minimizing weight."
			
			signal_type :tissue
		  
			indicates [
			  skeletal_strength: [ when: :increased, direction: :increased ],
			  plate_to_rod_transition: [ when: :decreased, direction: :increased],
			  fragility: [ when: :decreased, direction: :increased]
			  ]
		  end
		  
		  
		  signal :load_bearing_topology do
			description "The loss of load-bearing topology refers to the structural deterioration of trabecular bone microarchitecture, specifically the loss of horizontal trabeculae that normally brace vertical load-bearing elements, and the conversion of plate-like structures into weaker rod-like structures. This process indicates a critical failure in bone mechanical competence, where the internal scaffold becomes discontinuous and prone to buckling, significantly reducing the bone's ability to distribute stress and resist fracture."
			
			signal_type :process_state
		  
			indicates [
			  trabecular_thinning_and_disconnection: [ when: :decreased, direction: :increased ],
			  plate_to_rod_transition: [ when: :decreased, direction: :increased],
			  cortical_porosity: [ when: :decreased, direction: :increased]
			  ]
		  end
		
		
		
	  end
   end
end