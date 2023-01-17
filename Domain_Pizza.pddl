(define (domain pizzaiolo)
  (:requirements :strips :typing)

  (:types hands topping dispenser pizza - object	;;oven pas nécessaire car l'objet n'est pas utlisé
  	    ingredient flavor - topping
	    handpizza handtopping - hands)			;;car chaque main du robot est dédiée à un type d'action
          

  (:predicates    (handempty ?h - hands)
			(holdingpizza ?hp - handpizza ?p - pizza)
                  (holdingtopping ?ht - handtopping ?t - topping)
	            (empty ?p - pizza)
                  (filled ?p - pizza ?t - topping)
			;(used ?o - oven ?p - pizza)
			(dispenses ?d - dispenser ?i - ingredient)
			;(pizza_topping ?f flavor ?i - ingredient)
			(pizza_part_1 ?f - flavor ?i - ingredient)	;;on considere qu'une pizza a 3 ingredients sur sa pâte
                  (pizza_part_2 ?f - flavor ?i - ingredient)
                  (pizza_part_3 ?f - flavor ?i - ingredient)
)
		
  (:action hold
             :parameters (?hp - handpizza ?p - pizza)
             :precondition (handempty ?hp)
             :effect (and (not (handempty ?hp))
			  (holdingpizza ?hp ?p)))


  (:action put-in-oven
             :parameters (?hp - handpizza ?p - pizza)
             :precondition (and (holdingpizza ?hp ?p)			;;limite : on ne vérifie pas que la pizza a été garnie
                           (filled ?p ?t))
             :effect (and (not (holdingpizza ?hp ?p))
	     	     	   (handempty ?hp))
)

  (:action garnish-pizza
           :parameters (?p - pizza ?i - ingredient ?hp ?ht - hands ?d - dispenser)
           :precondition (and (holdingpizza ?hp ?p)
                         (handempty ?ht)
	   		       (dispenses ?d ?i)
                         (empty ?p))
           :effect (and (not (empty ?p))
	   	   	(filled ?p ?t)))

 )