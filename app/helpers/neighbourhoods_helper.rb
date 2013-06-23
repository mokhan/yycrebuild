module NeighbourhoodsHelper
  def css_class_for(neighbourhood)
    case
    when neighbourhood.status.start_with?('Evac')
      "evac"
    when neighbourhood.status.start_with?('Part')
      "part"
    else
      "open"
    end
  end
end
