defmodule Osteoporosis.Domain.Interventions.InterventionsAC do
  # import Osteoporosis.DSL
  
  defmacro interventions_a_c do
  quote do
	  
	  intervention :antioxidant_dietary_therapy do
		  description "Antioxidant dietary factors and supplementation therapy represent an important integrative and supportive approach in the holistic management of osteoporosis. Oxidative stress_driven by an excess of reactive oxygen species (ROS) plays a critical pathological role in bone remodeling by upregulating osteoclastogenesis and promoting osteoblast apoptosis, ultimately leading to accelerated bone loss. "
		
		  effects [
			oxidative_stress: [when: :increased, direction: :decreased],
			chronic_inflammation: [when: :increased, direction: :decreased],
			bone_matrix_integrity: [when: :increased, direction: :increased]
		  ]
		
		  indicated_agents [
			 :vitamin_C,
			 :vitamin_E,
			 :green_tea_extract
		  ]
	   end
	   
	   
	  
	   intervention :antiresorptive_therapy do
		  description "Bisphosphonates are a class of medications widely used to prevent and treat osteoporosis by slowing down the bone resorption process. They work by binding to hydroxyapatite crystals in bone, inhibiting osteoclast activity, which helps preserve bone density and reduce fracture risk."
		
		  effects [
			osteoclast_activity: [when: :increased, direction: :decreased],
			bone_density: [when: :increased, direction: :increased],
			fracture_risk: [when: :increased, direction: :decreased]
		  ]
		
		  indicated_agents [
			 :denosumab,
			 :alendronate,
			 :zoledronic_acid
		  ]
	   end
	   
	   
	  
	   intervention :bisphosphonate_therapy do
		  description "Bisphosphonates are a class of medications widely used to prevent and treat osteoporosis by slowing down the bone resorption process. They work by binding to hydroxyapatite crystals in bone, inhibiting osteoclast activity, which helps preserve bone density and reduce fracture risk."
		
		  effects [
			osteoclast_activity: [when: :increased, direction: :decreased],
			bone_density: [when: :increased, direction: :increased],
			fracture_risk: [when: :increased, direction: :decreased]
		  ]
		
		  indicated_agents [
			 :alendronate,
			 :risedronate,
			 :ibandronate,
			 :zoledronic_acid
		  ]
	   end
	   
	  
	   intervention :calcitonin do
		 description "Calcitonin is a peptide hormone naturally produced by the parafollicular cells (C-cells) of the thyroid gland. In the context of osteoporosis, synthetic salmon calcitonin is typically used as a pharmacological intervention. It exerts its primary therapeutic effect by directly binding to receptors on osteoclasts, thereby inhibiting their resorptive activity and reducing bone turnover."
	   
		 effects [
		   osteoclast_activity: [when: :increased, direction: :decreased]
		 ]
	   
		 indicated_agents [
		   :alendronate,
		   :denosumab,
		   :calcium_and_vitamin_D_supplementation,
		   :zoledronic_acid
		 ]
	   end
	   
	   
	   intervention :calcium_and_vitamin_D_supplementation do
		   description "Achieving and maintaining an adequate vitamin D and calcium status is the foundational cornerstone of prevention and management for all patients with osteoporosis. Calcium is the essential mineral constituent required for the mineralization of the organic bone matrix (osteoid), while vitamin D is critically required for the active intestinal absorption of calcium and phosphorus, as well as for proper neuromuscular function and bone mineralization. Insufficient intake or deficiency leads to secondary hyperparathyroidism, accelerated bone resorption, loss of bone mineral density, and heightened skeletal fragility."
		 
		   effects [
			 bone_density: [when: :increased, direction: :increased],
			 bone_mineralization: [when: :increased, direction: :increased],
			 fracture_risk: [when: :increased, direction: :decreased],
			 fall_risk: [when: :increased, direction: :decreased]
		   ]
		 
		   indicated_agents [
			  :vitamin_D3,
			  :calcium_carbonate,
			  :calcium_citrate
		   ]
		end
	  
  end
 end
end