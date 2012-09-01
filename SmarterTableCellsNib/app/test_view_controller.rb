class TestViewController < UITableViewController

  attr_accessor :complex_cell_nib

  def viewDidLoad
    view.dataSource = view.delegate = self
  end

  def complex_cell_nib
      complex_cell_nib ||= ComplexTableViewCell.nib
  end

  def numberOfSectionsInTableView(tableView)
    sections = 1
  end

  def tableView(tableView, numberOfRowsInSection:section)
    rows = 200
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    cell = ComplexTableViewCell.cellForTableView tableView, fromNib: complex_cell_nib
    unless cell
      puts "couldn't get the cell!"
    else
      cell.title_label.text = "Cell ##{indexPath.row}"
      cell.date_label.text = NSDateFormatter.localizedStringFromDate(NSDate.date, 
                                                                     dateStyle:NSDateFormatterNoStyle,
                                                                     timeStyle:NSDateFormatterMediumStyle)
      cell.location_label.text = "Places unknown"
    end
    cell
  end
end
