module PhantomNestedForms
  module Helper

    def remote_nested_form_for(object, options = {}, &block)
      options[:validate] = true
      options[:builder] = PhantomNestedForms::FormBuilders::ValidateNestedFormBuilder
      options[:html] = {:class => 'remote-form form'}
      options[:remote] = true
      content_tag :div, class: "row" do
        content_tag :div, class: "col-md-12 well" do
          nested_form_for(object, options, &block)
        end
      end
    end

    def modal_nested_form_for(object, options = {}, &block)
      options[:validate] = true
      options[:builder] = PhantomNestedForms::FormBuilders::ValidateNestedFormBuilder
      options[:html] = {:'data-type' => 'script', :class => 'remote-form'}
      options[:remote] = true
      nested_form_for(object, options, &block)
    end

  end
end
