iOS Recipes
===========

Based on the book titled "iOS Recipes" (Pragmatic Programmers).  The original recipes are written in Objective C.  Here they are rendered in Ruby for use with RubyMotion.  The recipes are presented here with minimal explanation, if you find them helpful then [buy the book][Recipes] as it contains much more detail.

[Recipes]: http://pragprog.com/book/cdirec/ios-recipes

** SmarterTableCellsNib **

A nice recipe that simplifies TableViewController by abstracting the table cell production to the cell itself via subclassing of UITableViewCell and extending it with several methods.  But it doesn't stop there, the recipe also uses subclassing to apply a complex Nib-based table cell as the prototype cell.

The complex cell's outlets are attached by a method called outlets.  This is an extra step not required in the Objective C version.  But the goal of encapsulating some of the complexity away from Table View Controller is maintained.

Given that this is for demonstration purposes, some print statements are left in the code.  In particular the app prints when a table cell is instantiated to show that the cell dequeue is working.
