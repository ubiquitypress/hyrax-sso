
module Hyrax
  module Sso
    module Proprietor
      module AccountsControllerBehavior
        extend ActiveSupport::Concern

        included do

          private

          def edit_account_params
            params.require(:account).permit(:name,
                                            :cname,
                                            :title,
                                            :is_public,
                                            :search_only,
                                            :work_os_organisation,
                                            :work_os_managed_domain,
                                            :enable_sso,
                                            *@account.live_settings.keys,
                                            admin_emails: [],
                                            full_account_cross_searches_attributes: [:id,
                                                                                     :_destroy,
                                                                                     :full_account_id,
                                                                                     full_account_attributes: [:id]],
                                            solr_endpoint_attributes: %i[id url],
                                            fcrepo_endpoint_attributes: %i[id url base_path],
                                            data_cite_endpoint_attributes: %i[mode prefix username password])
          end
        end
      end
    end
  end
end