defmodule Osteoporosis.Domain.Interventions.InterventionsDF do
  # import Osteoporosis.DSL
  
  defmacro interventions_d_f do
  quote do
	  
    intervention :denosumab do
        description "Denosumab is a fully human monoclonal antibody that effectively inhibits osteoclast formation, function, and survival, leading to a significant decrease in bone resorption, increased bone mineral density (BMD), and a reduced risk of vertebral, non-vertebral, and hip fractures in patients with osteoporosis."
      
        effects [
          osteoclast_activity: [when: :increased, direction: :decreased],
          bone_resorption: [when: :increased, direction: :decreased],
          bone_mineral_density: [when: :increased, direction: :increased],
          fracture_risk: [when: :increased, direction: :decreased]
        ]
      
        indicated_agents [
           :alendronate,
           :teriparatide_therapy,
           :calcium_and_vitamin_D_supplementation,
           :zoledronic_acid
        ]
     end
    
    
    intervention :dkk1_neutralizing_antibodies do
       description "dkk1 neutralizing antibodies are biologic interventions utilizing monoclonal antibodies directed against Dickkopf-1 (DKK1), an endogenous inhibitor of the Wnt/beta-catenin signaling pathway. By blocking DKK1, these agents promote osteoblast differentiation, enhance bone formation, and reverse age- or disease-related trabecular and cortical bone deterioration."
     
       effects [
         osteoblast_differentiation:      [when: :increased, direction: :increased],
         bone_formation:                  [when: :increased, direction: :increased],
         trabecular_bone_deterioration:   [when: :increased, direction: :decreased],
         cortical_bone_deterioration:     [when: :increased, direction: :decreased]
       ]
     
       indicated_agents [
         :IDs_03,
         :BHQ880
       ]
     end
    
    
    intervention :estrogen_receptor_agonism do
       description "Pharmacological therapies utilizing estrogen receptor agonists or selective estrogen receptor modulators (SERMs) to activate estrogen pathways in skeletal tissue, inhibiting osteoclast-mediated bone resorption, preventing postmenopausal bone loss, and reducing the incidence of vertebral fractures."
     
       effects [
         osteoclast_activity:  [when: :increased, direction: :decreased],
         bone_loss:            [when: :increased, direction: :decreased],
         fracture_risk:        [when: :increased, direction: :decreased]
       ]
     
       indicated_agents [
         :raloxifene_hydrochloride,
         :bazedoxifene_conjugated_estrogens
       ]
     end
     
     intervention :estrogen_therapy do
         description "A targeted hormonal treatment utilizing estrogens (often combined with a progestin in women with an intact uterus) to compensate for postmenopausal decline in endogenous estrogen, aiming to restore bone remodeling equilibrium, preserve bone mineral density, and prevent fragility fractures."
       
         effects [
           osteoclast_activity: [when: :increased, direction: :decreased],
           osteoblast_activity: [when: :increased, direction: :increased],
           calcium_homeostasis: [when: :increased, direction: :increased],
           bone_mineral_density: [when: :increased, direction: :increased]
         ]
       
         indicated_agents [
           :progesterone,
           :calcium_and_vitamin_D_supplementation,
           :transdermal_estradiol_patch 
         ]
      end
	  
  end
 end
end