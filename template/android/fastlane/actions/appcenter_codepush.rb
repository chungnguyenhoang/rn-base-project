module Fastlane
  module Actions
    module SharedValues
      APPCENTER_CODEPUSH_CUSTOM_VALUE = :APPCENTER_CODEPUSH_CUSTOM_VALUE
    end

    class AppcenterCodepushAction < Action
      def self.run(params)
        # fastlane will take care of reading in the parameter and fetching the environment variable:
        UI.message "Your appcenter codepush enviroment: #{params[:env]}"

        sh "cd .. && code-push release-react #{params[:owner_name]}/#{params[:my_app]} #{params[:platform]} -d #{params[:env]}"

        # sh "shellcommand ./path"

        # Actions.lane_context[SharedValues::APPCENTER_CODEPUSH_CUSTOM_VALUE] = "my_val"
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "A short description with <= 80 characters of what this action does"
      end

      def self.details
        # Optional:
        # this is your chance to provide a more detailed description of this action
        "You can use this action to do cool things..."
      end

      def self.available_options
        # Define all options your action supports.

        # Below a few examples
        [
          FastlaneCore::ConfigItem.new(key: :env,
                                       env_name: "FL_ENVIRONMENT", # The name of the environment variable
                                       description: "ENV for CodePushAction", # a short description of this parameter
                                       verify_block: proc do |value|
                                          UI.user_error!("No env for CodePushAction given, pass using `env: 'env'`") unless (value and not value.empty?)
                                          # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                       end),
          FastlaneCore::ConfigItem.new(key: :owner_name,
                                      env_name: "FL_OWNER_NAME", # The name of the environment variable
                                      description: "Owner Name for CodePushAction", # a short description of this parameter
                                      verify_block: proc do |value|
                                        UI.user_error!("No owner name for CodePushAction given, pass using `owner_name: 'owner_name'`") unless (value and not value.empty?)
                                        # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                      end),
          FastlaneCore::ConfigItem.new(key: :my_app,
                                      env_name: "FL_MY_APP", # The name of the environment variable
                                      description: "My App for CodePushAction", # a short description of this parameter
                                      verify_block: proc do |value|
                                        UI.user_error!("No my app name for CodePushAction given, pass using `my_app: 'my_app'`") unless (value and not value.empty?)
                                        # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                      end),
          FastlaneCore::ConfigItem.new(key: :platform,
                                      env_name: "FL_FLATFORM", # The name of the environment variable
                                      description: "Platform for CodePushAction", # a short description of this parameter
                                      verify_block: proc do |value|
                                        UI.user_error!("No flatform for CodePushAction given, pass using `platform: 'platform'`") unless (value and not value.empty?)
                                        # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                      end)
        ]
      end

      def self.output
        # Define the shared values you are going to provide
        # Example
        [
          ['APPCENTER_CODEPUSH_CUSTOM_VALUE', 'A description of what this value contains']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Your GitHub/Twitter Name"]
      end

      def self.is_supported?(platform)
        # you can do things like
        #
        #  true
        #
        #  platform == :ios
        #
        #  [:ios, :mac].include?(platform)
        #

        platform == :ios
      end
    end
  end
end
