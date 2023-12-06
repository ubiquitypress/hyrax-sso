
module Hyrax
  module Sso
    module Proprietor
      module AccountsControllerBehavior
        extend ActiveSupport::Concern

        included do

          private

          def edit_account_params
            params.require(:account).permit(:work_os_organisation,
                                            :work_os_managed_domain,
                                            :enable_sso,
                                            super)
          end
        end
      end
    end
  end
end