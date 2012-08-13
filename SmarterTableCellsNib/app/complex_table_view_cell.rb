class ComplexTableViewCell < NibBasedTableViewCell
  TITLE_LABEL    = 1
  DATE_LABEL     = 2
  LOCATION_LABEL = 3
  attr_reader :title_label, :date_label, :location_label

  def outlets
    @title_label = viewWithTag TITLE_LABEL
    @date_label = viewWithTag DATE_LABEL
    @location_label = viewWithTag LOCATION_LABEL
  end
end
