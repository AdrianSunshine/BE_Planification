(define (domain pizzaiolo)
    
    (:requirements :strips :typing)

    (:types hands topping dispenser pizza - object	;;oven not necessary because the object is not used
  	        ingredient flavor - topping
	        handpizza handtopping - hands			;;because each hand of the robot is dedicated to a type of action
    )
    
    
    (:predicates    (handempty ?h - hands)
			        (holdingpizza ?h1 - handpizza ?p - pizza)
                    (holdingtopping ?h2 - handtopping ?t - topping)
	                (empty ?p - pizza)
                    (filled ?p - pizza ?t - topping)
			        (dispenses ?d - dispenser ?i - ingredient)
			        (flavor_part_1 ?f - flavor ?i - ingredient)	    ;;we consider that a pizza has 4 ingredients on its dough ie. that a "flavor" corresponds to 4 ingredients
                    (flavor_part_2 ?f - flavor ?i - ingredient)
                    (flavor_part_3 ?f - flavor ?i - ingredient)
                    (flavor_part_4 ?f - flavor ?i - ingredient)
    )
	
	
    (:action hold
                    :parameters (?hp - handpizza ?p - pizza)
                    :precondition (and (handempty ?hp)
                                       (not (holdingpizza ?hp ?p)))
                    :effect (and (not (handempty ?hp))
			                     (holdingpizza ?hp ?p))
    )
    
    
    (:action put-in-oven
                    :parameters (?hp - handpizza ?p - pizza ?t - topping)
                    :precondition (and (holdingpizza ?hp ?p)			
                                       (filled ?p ?t))                  
                    :effect (and (not (holdingpizza ?hp ?p))
	     	     	             (handempty ?hp))
    )


    (:action garnish-pizza
                    :parameters (?hp - handpizza ?p - pizza ?f - flavor ?ht - handtopping ?d1 - dispenser ?i1 - ingredient ?d2 - dispenser ?i2 - ingredient ?d3 - dispenser ?i3 - ingredient ?d4 - dispenser ?i4 - ingredient)
                    :precondition (and (holdingpizza ?hp ?p)
                                       (handempty ?ht)
	   		                           (dispenses ?d1 ?i1)
	   		                           (dispenses ?d2 ?i2)
	   		                           (dispenses ?d3 ?i3)
	   		                           (dispenses ?d4 ?i4)
                                       (empty ?p)
                                       (flavor_part_1 ?f ?i1)
                                       (flavor_part_2 ?f ?i2)
                                       (flavor_part_3 ?f ?i3)
                                       (flavor_part_4 ?f ?i4))
                    :effect (and (not (empty ?p))
	   	   	                     (filled ?p ?f))
	)

 )
