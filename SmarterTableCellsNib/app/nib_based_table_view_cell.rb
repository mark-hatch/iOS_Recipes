class NibBasedTableViewCell < UITableViewCell

  def self.cell_identifier
    NSStringFromClass self
  end

  def self.cellForTableView(table_view, fromNib:nib)
    cell_id = cell_identifier
    cell = table_view.dequeueReusableCellWithIdentifier cell_id
    unless cell
      nib_objects = nib.instantiateWithOwner nil, options:nil
      if nib_objects.count>0
        cell = nib_objects.first
        cell.outlets
        puts "Cell #{cell_identifier} instantiated"
      else
        puts "Could not instantiate cell!!"
        raise RuntimeError
      end
    end
    cell
  end

  def self.nib
    class_bundle = NSBundle.bundleForClass self.class
    UINib.nibWithNibName nib_name, bundle:class_bundle
  end

  def self.nib_name
    cell_identifier
  end

end
