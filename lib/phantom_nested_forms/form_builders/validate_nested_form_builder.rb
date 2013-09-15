require 'nested_form/builder_mixin'
require 'phantom_forms/form_builders/validate_form_builder'

module PhantomNestedForms
  module FormBuilders

    class ValidateNestedFormBuilder < PhantomForms::FormBuilders::ValidateFormBuilder
      include ::NestedForm::BuilderMixin
    end

  end
end
