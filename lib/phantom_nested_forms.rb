require 'phantom_nested_forms/helper'
require 'phantom_nested_forms/engine'
require 'phantom_nested_forms/form_builders/validate_nested_form_builder'

module PhantomNestedForms
end

ActionView::Base.send :include, PhantomNestedForms::Helper
