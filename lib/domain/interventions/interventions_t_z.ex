defmodule Osteoporosis.Domain.Interventions.InterventionsTZ do
  # import Osteoporosis.DSL
  
  defmacro interventions_t_z do
  quote do
    
    intervention :teriparatide_therapy do
          description "Teriparatide is a recombinant human parathyroid hormone (specifically amino acids 1 to 34, rhPTH[1-34]) administered via intermittent daily subcutaneous injections. Unlike continuous parathyroid hormone elevation (which promotes bone resorption), intermittent administration of teriparatide exerts a net anabolic (bone-building) effect."
        
          effects [
            osteoblast_activity: [when: :increased, direction: :increased],
            trabecular_bone_mass: [when: :increased, direction: :increased],
            cortical_bone_mass: [when: :increased, direction: :increased],
            fracture_risk: [when: :increased, direction: :decreased]
          ]
        
          indicated_agents [
             :alendronate,
             :teriparatide_therapy,
             :calcium_and_vitamin_D_supplementation,
             :zoledronic_acid
          ]
       end
      
          
     
     intervention :teriparatide_pth_analog_intermittent do
        description "Teriparatide is a recombinant human parathyroid hormone (specifically amino acids 1 to 34, rhPTH[1-34]) administered via intermittent daily subcutaneous injections. Unlike continuous parathyroid hormone elevation (which promotes bone resorption), intermittent administration of teriparatide exerts a net anabolic (bone-building) effect."
      
        effects [
          osteoblast_activity: [when: :increased, direction: :increased],
          trabecular_bone_mass: [when: :increased, direction: :increased],
          cortical_bone_mass: [when: :increased, direction: :increased],
          fracture_risk: [when: :increased, direction: :decreased]
        ]
      
        indicated_agents [
           :alendronate,
           :teriparatide_therapy,
           :calcium_and_vitamin_D_supplementation,
           :zoledronic_acid
        ]
     end
     
     
     intervention :tgf_beta_signaling do
         description "Therapeutic interventions targeting the Transforming Growth Factor-Beta (TGF-beta) signaling pathway to enhance coupling between bone resorption and formation, stimulating osteoblast differentiation and recruitment while improving bone matrix mineralization in osteoporotic states. "
       
         effects [
           osteoblast_activity: [when: :increased, direction: :increased],
           osteocblast_differentiation: [when: :increased, direction: :increased],
           bone_mineralization: [when: :increased, direction: :increased]
         ]
       
         indicated_agents [
            :rh_TGF_beta1,
            :TGF_beta_receptor_type_I_kinase_inhibitor
         ]
      end
    
     
     intervention :wnt_signaling_activators do
        description "Wnt signaling activators are endogenous proteins or exogenous compounds that stimulate the canonical Wnt/β-catenin pathway, which is the primary regulator of bone homeostasis. Their definition centers on their ability to promote osteoblast differentiation and bone formation while simultaneously suppressing osteoclastogenesis and bone resorption. "
      
        effects [
          osteoblast_activity: [when: :increased, direction: :increased],
          osteoclast_activity: [when: :increased, direction: :decreased],
          fracture_risk: [when: :increased, direction: :decreased]
        ]
      
        indicated_agents [
           :romosozumab,
           :alendronate,
           :denosumab,
           :calcium_and_vitamin_D_supplementation
        ]
     end
	  
	  
  end
 end
end