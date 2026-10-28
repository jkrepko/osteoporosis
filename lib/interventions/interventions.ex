defmodule OsteoTest.Interventions do
  @moduledoc false
  use OsteoTest.Collection, attribute: :interventions
  import OsteoTest.DSL


  
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
     
     
     intervention :glycemic_control do
       description "Glycemic control is an increasingly recognized and vital metabolic intervention in the comprehensive management of patients with osteoporosis, particularly those with concurrent type 2 diabetes mellitus. Chronic hyperglycemia impairs bone quality and strength through the accumulation of advanced glycation end-products (AGEs) in the organic bone matrix, increases oxidative stress, alters osteoblast differentiation, and negatively impacts bone material properties independent of changes in bone mineral density (BMD)"
     
       effects [
         accumulation_of_AGEs:  [when: :increased, direction: :decreased],
         oxidative_stress:      [when: :increased, direction: :decreased],
         bone_mineral_density:      [when: :increased, direction: :increased]
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
     
   
     intervention :gsk3_beta_inhibitors do
        description "GSK3_beta_inhibitors are small molecule therapeutic agents that inhibit glycogen synthase kinase-3 beta (GSK-3beta), thereby stabilizing beta-catenin and upregulating Wnt signaling pathway activity to stimulate osteoblastic bone formation and mitigate bone mineral density decline."
      
        effects [
          GSK_3beta: [when: :increased, direction: :decreased],
          Wnt_signaling_pathway_activity: [when: :increased, direction: :increased],
          osteoblast_activity: [when: :increased, direction: :increased],
          bone_mineral_density: [when: :increased, direction: :increased]
        ]
      
        indicated_agents [
          :tideglusib,
          :SB_216763
        ]
     end
     
     
     
     intervention :hormone_replacement_therapy do
         description "Hormone replacement therapy (HRT) is a systemic endocrine intervention utilizing estrogen alone (for women without a uterus) or combined with a progestogen (for women with an intact uterus) to suppress bone turnover, prevent bone mineral density loss, and alleviate menopausal symptoms."
       
         effects [
           osteoclast_activity: [when: :increased, direction: :decreased],
           osteoblast_activity: [when: :increased, direction: :increased],
           menopausal_symptoms: [when: :increased, direction: :decreased],
           bone_mineral_density: [when: :increased, direction: :increased]
         ]
       
         indicated_agents [
           :"17-Beta Estradiol",
           :conjugated_equine_etrogens,
           :conjugated_equine_etrogens_with_medroxyprogesterone_acetate
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
     
     
     intervention :multinucleated_resorbing_cells do
         description "A primary antiresorptive therapeutic strategy focused on suppressing the activity, differentiation, and survival of multinucleated osteoclasts to halt excessive bone turnover, prevent trabecular and cortical bone loss, and reduce fracture risk in osteoporotic patients."
       
         effects [
           osteoclast_activity: [when: :increased, direction: :decreased ],
           bone_loss:   [when: :increased, direction: :decreased ],
           trabecular_bone_loss:   [when: :increased, direction: :decreased ],
           cortical_bone_loss:   [when: :increased, direction: :decreased ],
           fracture_risk:   [when: :increased, direction: :decreased ]
         ]
       
         indicated_agents [
           :alendronate,
           :denosumab,
           :zoledronic_acid
         ]
      end
      
      
      intervention :parathyroid_hormone_pth_anabolic_regimens do
          description "Anabolic pharmacological regimens utilizing intermittent administration of parathyroid hormone or related peptides to stimulate osteoblastic bone formation, significantly improving bone mineral density, microarchitecture, and overall skeletal strength in patients with severe osteoporosis."
        
          effects [
            osteoblast_activity: [when: :increased, direction: :increased],
            bone_architecture: [when: :increased, direction: :increased],
            bone_strength: [when: :increased, direction: :increased],
            bone_mineral_density: [when: :increased, direction: :increased]
          ]
        
          indicated_agents [
             :teriparatide,
             :abaloparatide
          ]
       end
      
      
      intervention :raloxifene do
          description "Raloxifene** is a selective estrogen receptor modulator (SERM) designed to mimic the beneficial estrogenic effects on bone mineral density and bone turnover while acting as an antagonist in uterine and breast tissues. By binding to estrogen receptors, raloxifene exerts an anti-resorptive effect on the skeleton, reducing bone resorption and slowing bone loss, which significantly lowers the risk of vertebral fractures in postmenopausal women with osteoporosis. "
        
          effects [
            cancer_risk: [when: :increased, direction: :decreased],
            bone_resorption: [when: :increased, direction: :decreased],
            bone_mineral_density: [when: :increased, direction: :increased]
          ]
        
          indicated_agents [
             :raloxifene_hydrochloride
          ]
       end
       
       
       
      intervention :recombinant_osteoprotegerin do
          description "Recombinant osteoprotegerin is a  biological antiresorptive intervention utilizing recombinant forms of the decoy receptor osteoprotegerin to bind and neutralize RANKL, thereby suppressing osteoclastogenesis, reducing bone resorption, and preserving bone mineral density in postmenopausal or secondary osteoporosis."
        
          effects [
            RANKL_activity: [when: :increased, direction: :decreased],
            osteoclast_activity: [when: :increased, direction: :decreased],
            bone_resorption: [when: :increased, direction: :decreased],
            bone_mineral_density: [when: :increased, direction: :decreased]
          ]
        
          indicated_agents [
             :recombinant_human_osteoprotegerin
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
     
     intervention :regular_weight_bearing_exercise do
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
     
     
     intervention :romosozumab do
         description "Romosozumab is an advanced bone-forming (anabolic) therapeutic intervention utilizing a humanized monoclonal antibody against sclerostin to stimulate new bone formation and simultaneously decrease bone resorption, providing rapid gains in bone mineral density and fracture risk reduction."
       
         effects [
           osteoblast_activity: [when: :increased, direction: :increased],
           osteoclast_activity: [when: :increased, direction: :decreased],
           bone_mineral_density: [when: :increased, direction: :increased],
           fracture_risk: [when: :increased, direction: :decreased]
         ]
       
         indicated_agents [
            :romosozumab,
         ]
      end
      
      
      intervention :selective_estrogen_receptor_modulators do
         description "Selective Estrogen Receptor Modulators (SERMs) are a pharmacological class of compounds that exert estrogenic agonist effects on bone tissue to inhibit bone resorption and increase bone mineral density, while exhibiting antagonist properties in breast and uterine tissues, utilized primarily for the prevention and treatment of postmenopausal osteoporosis."
       
         effects [
           osteoclast_activity: [when: :increased, direction: :decreased],
           osteoclastic_resorption: [when: :increased, direction: :decreased],
           bone_density: [when: :increased, direction: :increased]
         ]
       
         indicated_agents [
            :raloxifene_hydrochloride,
            :bazedoxifene_conjugated_estrogens
         ]
      end
      
      
      
      intervention :senolytics_dasatinib_quercetin do
         description   "Senolytics (Dasatinib + Quercetin) is a combination senolytic therapy utilizing the tyrosine kinase inhibitor dasatinib and the natural flavonoid quercetin to selectively clear senescent cells from bone and bone marrow tissues. By eliminating senescent cells and reducing the senescence-associated secretory phenotype (SASP), this intervention mitigates local inflammation, preserves osteoblast function, and ameliorates age-related trabecular bone loss."
       
         effects [
           senescent_cells:                           [when: :increased, direction: :decreased],
           senescence_associated_secretory_phenotype: [when: :increased, direction: :decreased],
           osteoblast_activity:                       [when: :increased, direction: :increased],
           trabecular_bone_loss:                      [when: :increased, direction: :decreased],
           local_inflammation:                        [when: :increased, direction: :decreased]
         ]
       
         indicated_agents [
            :dasatinib_quercetin_combination_regimen,
            :fisetin_augmented_senolytic_protocol 
         ]
      end
      
     
     
     intervention :strontium_ranelate_modulation do
         description "A dual-action therapeutic intervention that re-couples bone remodeling by stimulating osteoblast-mediated bone formation and inhibiting osteoclast-mediated bone resorption, leading to improved bone mineral density and enhanced structural strength."
       
         effects [
           osteoblast_activity: [when: :increased, direction: :increased],
           osteoclast_activity: [when: :increased, direction: :decreased],
           osteoclastic_resorption: [when: :increased, direction: :decreased],
           bone_strength: [when: :increased, direction: :increased],
           bone_architecture: [when: :increased, direction: :increased]
         ]
       
         indicated_agents [
            :strontium_ranelate
         ]
      end
      
      
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
