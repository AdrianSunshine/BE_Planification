(define (problem prob1)
 (:domain pizzaiolo)
 
 
 (:objects
     pizza1 pizza2 - pizza
     right_hand - handtopping
     left_hand - handpizza
     tomato_base cream_base cheese ham mushrooms eggs vegetables anchovies - ingredient
     tre_formaggi regina siciliana completa - flavor
     dispenser1 dispenser2 dispenser3 dispenser4 dispenser5 dispenser6 dispenser7 dispenser8 - dispenser
  )


 (:init 
  (empty pizza1)
  (empty pizza2)
  (dispenses dispenser1 tomato_base)
  (dispenses dispenser2 cream_base)
  (dispenses dispenser3 cheese)
  (dispenses dispenser4 ham)
  (dispenses dispenser5 mushrooms)
  (dispenses dispenser6 eggs)
  (dispenses dispenser7 vegetables)
  (dispenses dispenser8 anchovies)
  (handempty right_hand)
  (handempty left_hand)
  (flavor_part_1 tre_formaggi tomato_base)
  (flavor_part_2 tre_formaggi cheese)
  (flavor_part_3 tre_formaggi cheese)
  (flavor_part_4 tre_formaggi cheese)
  (flavor_part_1 regina tomato_base)
  (flavor_part_2 regina ham)
  (flavor_part_3 regina mushrooms)
  (flavor_part_4 regina cheese)
  (flavor_part_1 siciliana tomato_base)
  (flavor_part_2 siciliana anchovies)
  (flavor_part_3 siciliana vegetables)
  (flavor_part_4 siciliana cheese)
  (flavor_part_1 completa cream_base)
  (flavor_part_2 completa cheese)
  (flavor_part_3 completa eggs)
  (flavor_part_4 completa ham)
  )

 (:goal
  (and
     (filled pizza1 regina)
     (filled pizza2 regina)
     (handempty right_hand)     ;;empty hands to make sure the pizzas are put in the oven
     (handempty left_hand))
  )
     
)