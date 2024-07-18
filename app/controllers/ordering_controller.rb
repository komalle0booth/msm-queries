class OrderingController < ApplicationController
  def youngest
    the_dob = params.fetch("dob")

    list = Director.where.not({ :dob => nil }).order({ :dob => :asc })

    young_director = list.at(-1)

    @youngest_director = young_director.name

    render({ :template => "director_templates/youngest"})
  end

  def eldest
    the_dob = params.fetch("dob")

    list = Director.where.not({ :dob => nil }).order({ :dob => :asc })

    old_director = list.at(0)

    @eldest_director = old_director.name

    render({ :template => "director_templates/eldest"})
  end

end
