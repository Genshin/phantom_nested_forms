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

      object_name = get_class(extract_object(object))
      object_class = options[:resource] ||  object_name
      label = options[:label] || t("#{object_name.underscore}.singular")

      content_tag :div, class: "col-md-12 alert-dismissable" do
        content_tag :div, class: "panel panel-primary" do
          concat(panel_title(label, modal_close_button))
          concat(content_tag(:div, class: "panel-body") { nested_form_for(object, options, &block) })
        end
      end
    end

  end
end
