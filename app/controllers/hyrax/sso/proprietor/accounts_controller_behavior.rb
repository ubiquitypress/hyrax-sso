
module Hyrax
  module Sso
    module Proprietor
      module AccountsControllerBehavior
        extend ActiveSupport::Concern

        included do

          private

          def original_account_params
            params.require(:account).permit(super)
          end

          def edit_account_params
            params.require(:account).permit(:work_os_organisation,
                                            :work_os_managed_domain,
                                            :enable_sso).merge(original_account_params)
          end
        end
      end
    end
  end
end