module NavigationHelpers
  def path_to(resource)
    case resource
    when PartnerWidget::Poll
      "/partner_widget/polls/#{resource.id}"
    else
      raise "Can't find path for \"#{resource}\".\n" +
      "Add a mapping in features/support/paths.rb"
    end
  end
end

World(NavigationHelpers)