ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
  end

  # Here is an example of a simple dashboard with columns and panels.
  #
  # columns do
  #   column do
  #     panel "Recent Enquiries" do
  #       ul do
  #         Enquiry.recent(5).map do |post|
  #           li link_to(enquiry.subject, admin_enquiry_path(enquiry))
  #         end
  #       end
  #     end
  #   end # content
end
