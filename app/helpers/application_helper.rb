module ApplicationHelper
# Creates a link to remove fields from ingredients
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
# Creates a link to add fields to ingredients
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, [new_object], :child_index => "new_#{association}") do |builder|
    render(association.to_s.singularize + "_fields", :f => builder)
  end
link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
end
# Creates a submit button with the given name with a cancel link # Accepts two arguments: Form object and the cancel link name 
  def submit_or_cancel(form, name='Cancel')
    form.submit + " or " + 
        link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end
end