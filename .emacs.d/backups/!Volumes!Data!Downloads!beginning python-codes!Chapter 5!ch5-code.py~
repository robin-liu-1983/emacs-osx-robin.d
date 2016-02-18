#!/usr/bin/python


# The in_fridge demo function undergoes a few revisions during the
# chapter. If you load this file into a running Python interpreter,
# you'll only use the last one that's defined, since the 

# First
def in_fridge():
    try:
        count = fridge[wanted_food]
    except KeyError:
        count = 0
    return count

# The second, showing how to use a docstring
def in_fridge ():
    """This is a function to see if the fridge has a food.
fridge has to be a dictionary defined outside of the function.
the food to be searched for is in the string wanted_food"""
    try: 
        count = fridge[wanted_food] 
    except KeyError:
        count = 0
    return count

# The third
def in_fridge(some_fridge, desired_item):
    """This is a function to see if the fridge has a food.
fridge has to be a dictionary defined outside of the function.
the food to be searched for is in the string wanted_food"""
    try:
        count = some_fridge[desired_item]
    except KeyError:
        count = 0
    return count


# This is the first instance of the make_omelette function. As with
# other functions, it's the last definition that you'll be able to use
# if you invoke this file with the Python interpreter. To try out each
# separate instance of the function as you go through the chapter, you
# can cut and paste the function into the interpreter, or into your
# own file.

def make_omelet(omelet_type):
    """This will make an omelet.  You can either pass in a dictionary
    that contains all of the ingredients for your omelet, or provide
    a string to select a type of omelet this function already knows
    about"""
    if type(omelet_type) == type({}):
        print("omelet_type is a dictionary with ingredients")
        return make_food(omelet_type, "omelet")
    elif type(omelet_type) == type(""):
        omelet_ingredients = get_omelet_ingredients(omelet_type)
        return make_food(omelet_ingredients, omelet_type)
    else:
        print("I don't think I can make this kind of omelet: %s" % omelet_type)

# These are the support functions for the make_omelet function.

def get_omelet_ingredients(omelet_name):
    """This contains a dictionary of omelet names that can be produced,
and their ingredients"""
    # All of our omelets need eggs and milk 
    ingredients = {"eggs":2, "milk":1}
    if omelet_name == "cheese":
        ingredients["cheddar"] = 2
    elif omelet_name == "western":
        ingredients["jack_cheese"] = 2
        ingredients["ham"]         = 1
        ingredients["pepper"]      = 1
        ingredients["onion"]       = 1
    elif omelet_Name == "greek":
        ingredients["feta_cheese"] = 2
        ingredients["spinach"]     = 2
    else:
        print("That's not on the menu, sorry!")
        return None
    return ingredients

def make_food(ingredients_needed, food_name):
    """make_food(ingredients_needed, food_name)
    Takes the ingredients from ingredients_needed and makes food_name"""
    for ingredient in ingredients_needed.keys():
        print("Adding %d of %s to make a %s" % (ingredients_needed[ingredient],ingredient, food_name))ingredient, food_name)
    print("Made %s" % food_name)
    return food_name

# This implementation of make_omelet shows you how to make functions
# that contain other functions, so that make_omelet is more
# self-contained.

def make_omelet(omelet_type):
    """This will make an omelet.  You can either pass in a dictionary
    that contains all of the ingredients for your omelet, or provide
    a string to select a type of omelet this function already knows
    about"""
    def get_omelet_ingredients(omelet_name):
        """This contains a dictionary of omelet names that can be produced,
and their ingredients"""
        ingredients = {"eggs":2, "milk":1}
        if omelet_name == "cheese":
            ingredients["cheddar"] = 2
        elif omelet_name == "western":
            ingredients["jack_cheese"] = 2
	# You need to  copy in the remainder of the original 
	# get_omelet_ingredients function here.  They are not being 
	# included here for brevity's sake
    if type(omelet_type) == type({}):
        print("omelet_type is a dictionary with ingredients")
        return make_food(omelet_type, "omelet")
    elif type(omelet_type) == type(""):
        omelet_ingredients = get_omelet_ingredients(omelet_type)
        return make_food(omelet_ingredients, omelet_type)
    else:
        print("I don't think I can make this kind of omelet: %s" % omelet_type)

    
# This implementation of make_omelet raises an error as well as printing a
# message
def make_omelet(omelet_type):
    """This will make an omelet.  You can either pass in a dictionary
    that contains all of the ingredients for your omelet, or provide
    a string to select a type of omelet this function already knows
    about"""
    def get_omelet_ingredients(omelet_name):
        """This contains a dictionary of omelet names that can be produced,
and their ingredients"""
        ingredients = {"eggs":2, "milk":1}
        if omelet_name == "cheese":
            ingredients["cheddar"] = 2
        elif omelet_name == "western":
            ingredients["jack_cheese"] = 2
	# You need to  copy in the remainder of the original 
	# get_omelet_ingredients function here.  They are not being 
	# included here for brevity's sake
    if type(omelet_type) == type({}):
        print("omelet_type is a dictionary with ingredients")
        return make_food(omelet_type, "omelet")
    elif type(omelet_type) == type(""):
        omelet_ingredients = get_omelet_ingredients(omelet_type)
        return make_food(omelet_ingredients, omelet_type)
    else:
        raise TypeError("No such omelet type: %s" % omelet_type)

