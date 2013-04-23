require 'nested_form/builder_mixin'
require 'gaku_forms/form_builders/validate_form_builder'

module GakuNestedForms
  module FormBuilders

    class ValidateNestedFormBuilder < GakuForms::FormBuilders::ValidateFormBuilder
      include ::NestedForm::BuilderMixin
    end

  end
end
