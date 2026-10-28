defmodule Osteoporosis.Regimens do
use Osteoporosis.Collection, attribute: :regimens
import Osteoporosis.DSL

  @moduledoc false

  intervention :adequate_vitamin_d_and_calcium_status do
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
        :osteoclast_activity, [when: :increased, direction: :decreased]
      ]
    
      indicated_agents [
        :alendronate,
        :denosumab,
        :calcium_and_vitamin_D_supplementation,
        :zoledronic_acid
      ]
    end
    
    
    intervention :glycemic_control do
      description "Glycemic control is an increasingly recognized and vital metabolic intervention in the comprehensive management of patients with osteoporosis, particularly those with concurrent type 2 diabetes mellitus. Chronic hyperglycemia impairs bone quality and strength through the accumulation of advanced glycation end-products (AGEs) in the organic bone matrix, increases oxidative stress, alters osteoblast differentiation, and negatively impacts bone material properties independent of changes in bone mineral density (BMD)"
    
      effects [
        accumulation_of_AGEs:  [when: :increased, direction: :decreased],
        oxidative_stress:      [when: :increased, direction: :decreased],
        bone_mineral_density:      [when: :increased, direction: :decreased]
      ]
    
      indicated_agents [
        :metformin,
        :SGLT2_inhibitors,
        :GLP_1_receptor_agonists,
        :calcium_and_vitamin_D_supplementation
      ]
    end
    
  
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
    
    
    intervention :mechanical_loading_stimulation do
       description "Mechanical loading and targeted exercise therapy represent fundamental non-pharmacological interventions for the prevention and management of osteoporosis. "
     
       effects [
         osteoblast_activity: [when: :increased, direction: :increased],
         bone_mineral_density: [when: :increased, direction: :increased]
       ]
     
       indicated_agents [
         :alendronate,
         :calcium_and_vitamin_D_supplementation,
         :transdermal_estradiol_patch,
         :physical_therapy_supervision__rehabilitation
       ]
    end
    
    
    
    intervention :antiresorptive_therapy do
       description "Potent antiresorptive therapy represents a cornerstone pharmacological intervention in the management of osteoporosis, specifically designed for individuals at high or very high risk of osteoporotic fractures. These therapies act primarily by inhibiting osteoclast-mediated bone resorption, thereby reducing the rate of bone turnover, preserving bone mineral density (BMD), and significantly improving bone microarchitecture strength."
     
       effects [
         osteoclast_activity: [when: :increased, direction: :decreased ],
         bone_loss:   [when: :increased, direction: :decreased ],
         fracture_risk:   [when: :increased, direction: :decreased ]
       ]
     
       indicated_agents [
         :alendronate,
         :denosumab,
         :zoledronic_acid
       ]
    end
    
    
    intervention :reduction_of_oxidative_stressors do
       description "The reduction of oxidative stressors is an emerging and vital therapeutic paradigm in the management of osteoporosis. Oxidative stress—characterized by an imbalance between the production of reactive oxygen species (ROS) and antioxidant defense mechanisms—plays a pivotal role in the pathogenesis of bone loss."
     
       effects [
         oxidative_stress: [when: :increased, direction: :increased],
         reactive_oxygen_species: [when: :increased, direction: :decreased],
         bone_architecture: [when: :increased, direction: :increased],
         fracture_risk: [when: :increased, direction: :decreased]
       ]
     
       indicated_agents [
          :vitamin_C,
          :vitamin_E,
          :resveratrol
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
    
    
    
    intervention :mechanical_loading_stimulation do
      description "Mechanical loading and targeted exercise therapy represent fundamental non-pharmacological interventions for the prevention and management of osteoporosis. "
    
      effects [
        osteoblast_activity: [when: :increased, direction: :increased],
        bone_mineral_density: [when: :increased, direction: :increased]
      ]
    
      indicated_agents [
        :alendronate,
        :calcium_and_vitamin_D_supplementation,
        :transdermal_estradiol_patch,
        :physical_therapy_supervision__rehabilitation
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

  # Add regimens here.

