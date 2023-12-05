
module Hyrax
  module Sso
    module Proprietor
      module AccountsControllerBehavior
        extend ActiveSupport::Concern

        private

        def edit_account_params
          params.require(:account).permit(
            super,
            :work_os_organisation,
            :work_os_managed_domain,
            :enable_sso)
        end
      end
    end
  end
end