(define (problem prob1)
 (:domain pizzaiolo)
 (:objects
     pizza1 pizza2 pizza3 - pizza
     right - handtopping
     left - handpizza
     ingredient1 ingredient2 ingredient3 ingredient4 ingredient5 - ingredient
     flavor1 flavor2 flavor3 - flavor
     dispenser1 dispenser2 dispenser3 dispenser4 dispenser5 - dispenser
)
 (:init 
  (empty pizza1)
  (empty pizza2)
  (empty pizza3)
  (dispenses dispenser1 ingredient1)
  (dispenses dispenser2 ingredient2)
  (dispenses dispenser3 ingredient3)
  (handempty right)
  (handempty left)
  (pizza_part_1 flavor1 ingredient1)
  (pizza_part_2 flavor1 ingredient2)
  (pizza_part_3 flavor1 ingredient3)
  (pizza_part_1 flavor2 ingredient1)
  (pizza_part_2 flavor2 ingredient2)
  (pizza_part_3 flavor2 ingredient4)
  (pizza_part_1 flavor3 ingredient1)
  (pizza_part_2 flavor3 ingredient3)
  (pizza_part_3 flavor3 ingredient5)
  
)
 (:goal
  (and
     (filled pizza1 flavor1)
     (filled pizza2 flavor2)
     (filled pizza3 flavor3)
)))