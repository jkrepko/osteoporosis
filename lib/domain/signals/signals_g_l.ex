defmodule Osteoporosis.Domain.Signals.SignalsGL do
  import Osteoporosis.DSL

  defmacro signals_g_l do
	quote do
		
		
		signal :gap_junction_communication_channels do
			description "Gap junctional intercellular communication (GJIC) refers to the network of channels, primarily composed of connexin 43 (Cx43), that connect osteocytes, osteoblasts, and osteoclasts.  These channels act as direct cell-to-cell conduits that transmit small signaling molecules such as ions, calcium (Ca2+), cyclic AMP (cAMP), and ATP, rather than electrical impulses or large proteins. These channels indicate and regulate the synchronization of bone remodeling by facilitating mechanotransduction, where mechanical stress sensed by osteocytes is converted into biochemical signals for bone formation."
			
			signal_type :tissue
		  
			indicates [
			  skeletal_homeostaisis:      [ when: :decreased, direction: :decreased ],
			  osteoblast_differentiation: [ when: :decreased, direction: :decreased],
			  bone_loss:                  [ when: :decreased, direction: :increased],
			  fracture_risk:              [ when: :decreased, direction: :increased]
			  ]
		  end
		  
		
				
		signal :hydroxyapatite_deposition do
			description "Osteoporosis is not characterized by impaired hydroxyapatite deposition; rather, it is a condition marked by reduced bone mass and microstructural deterioration where bone resorption by osteoclasts occurs faster than bone formation by osteoblasts.  In contrast, impaired hydroxyapatite deposition (defective mineralization) is the hallmark of osteomalacia, not osteoporosis. In osteomalacia, crystals of hydroxyapatite fail to form properly in the bone matrix due to metabolic abnormalities, leading to softened bones [[MDPI]]."
			
			signal_type :process_state
		  
			indicates [
			  softened_bones: [ when: :decreased, direction: :increased ],
			  osteomalacia:   [ when: :decreased, direction: :increased]
			  ]
		  end
		  
		
		signal :hypocellular_bone_surfaces do
			description "A functional decline and increased programmed cell death (apoptosis) of osteoblasts, the cells responsible for synthesizing new bone matrix, leading to an uncoupling of the bone remodeling cycle."
			
			signal_type :process_state
		  
			indicates [
			  bone_formation_rate: [ when: :increased, direction: :decreased ],
			  osteoid_mineralization: [ when: :increased, direction: :decreased],
			  trabecular_thickness: [ when: :increased, direction: :decreased]
			  ]
		  end
		  
		
		
		signal :inorganic_phosphate do
			description "Inorganic phosphate (also known as inorganic phosphorus) is a critical mineral essential for bone mineralization and cellular energy (ATP) production.  It serves as a primary ionic component of hydroxyapatite, the crystal structure that provides hardness and strength to the bone matrix."
			
			signal_type :molecule
		  
			indicates [
			  rickets: [ when: :decreased, direction: :increased ],
			  calcium_loss: [ when: :increased, direction: :increased]
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
		  
		  
		  signal :local_calcium_phosphate_imbalance do
			  description "Local calcium-phosphate imbalance refers to a disruption in the mineral homeostasis that drives bone remodeling, often characterized by elevated local calcium concentrations resulting from secondary hyperparathyroidism (HPT).  This imbalance acts as a biochemical signal that triggers local bone remodeling and stimulates the deposition of calcium-phosphate (Ca–Pi) complexes within the joint and bone matrix.  It indicates underlying metabolic disturbances, such as vitamin D deficiency or excessive phosphorus intake, which can lead to inflammation, cartilage degradation, and an accelerated risk of joint degeneration or osteoporotic fractures. "
			  
			  signal_type :process_state
			
			  indicates [
				inflammation:            [ when: :increased, direction: :increased ],
				cartilage_degredation:   [ when: :increased, direction: :increased],
				fracture_risk:           [ when: :increased, direction: :increased]
				]
			end
			
		
		  
		  signal :lrp5_6_frizzled_receptor_complexes do
			description "LRP5/6-Frizzled receptor complexes are co-receptor structures on the surface of osteoblasts that bind Wnt proteins to activate the canonical Wnt/β-catenin signaling pathway.  The complex is a critical target for treatments like sclerostin inhibitors, which work by preventing sclerostin from binding to LRP5, thereby restoring Wnt signaling and increasing bone mass in osteoporotic patients."
			
			signal_type :molecule
		  
			indicates [
			  wnt_signaling:           [ when: :decreased, direction: :decreased ],
			  osteoblast_activity:     [ when: :decreased, direction: :decreased],
			  bone_resorption:         [ when: :decreased, direction: :increased],
			  bone_loss:               [ when: :decreased, direction: :increased]
			  ]
		  end
		
		
		
	  end
   end
end