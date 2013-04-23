require 'gaku_nested_forms/helper'
require 'gaku_nested_forms/engine'
require 'gaku_nested_forms/form_builders/validate_nested_form_builder'

module GakuNestedForms
end

ActionView::Base.send :include, GakuNestedForms::Helper
