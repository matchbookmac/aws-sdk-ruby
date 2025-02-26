# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  class DBEngineVersion

    extend Aws::Deprecations

    # @overload def initialize(engine_name, version, options = {})
    #   @param [String] engine_name
    #   @param [String] version
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :engine_name
    #   @option options [required, String] :version
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @engine_name = extract_engine_name(args, options)
      @version = extract_version(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def engine_name
      @engine_name
    end
    alias :engine :engine_name

    # @return [String]
    def version
      @version
    end
    alias :engine_version :version

    # The name of the DB parameter group family for the database engine.
    # @return [String]
    def db_parameter_group_family
      data[:db_parameter_group_family]
    end

    # The description of the database engine.
    # @return [String]
    def db_engine_description
      data[:db_engine_description]
    end

    # The description of the database engine version.
    # @return [String]
    def db_engine_version_description
      data[:db_engine_version_description]
    end

    # The default character set for new instances of this engine version, if
    # the `CharacterSetName` parameter of the CreateDBInstance API isn't
    # specified.
    # @return [Types::CharacterSet]
    def default_character_set
      data[:default_character_set]
    end

    # The EC2 image
    # @return [Types::CustomDBEngineVersionAMI]
    def image
      data[:image]
    end

    # A value that indicates the source media provider of the AMI based on
    # the usage operation. Applicable for RDS Custom for SQL Server.
    # @return [String]
    def db_engine_media_type
      data[:db_engine_media_type]
    end

    # A list of the character sets supported by this engine for the
    # `CharacterSetName` parameter of the `CreateDBInstance` operation.
    # @return [Array<Types::CharacterSet>]
    def supported_character_sets
      data[:supported_character_sets]
    end

    # A list of the character sets supported by the Oracle DB engine for the
    # `NcharCharacterSetName` parameter of the `CreateDBInstance` operation.
    # @return [Array<Types::CharacterSet>]
    def supported_nchar_character_sets
      data[:supported_nchar_character_sets]
    end

    # A list of engine versions that this database engine version can be
    # upgraded to.
    # @return [Array<Types::UpgradeTarget>]
    def valid_upgrade_target
      data[:valid_upgrade_target]
    end

    # A list of the time zones supported by this engine for the `Timezone`
    # parameter of the `CreateDBInstance` action.
    # @return [Array<Types::Timezone>]
    def supported_timezones
      data[:supported_timezones]
    end

    # The types of logs that the database engine has available for export to
    # CloudWatch Logs.
    # @return [Array<String>]
    def exportable_log_types
      data[:exportable_log_types]
    end

    # Indicates whether the engine version supports exporting the log types
    # specified by ExportableLogTypes to CloudWatch Logs.
    # @return [Boolean]
    def supports_log_exports_to_cloudwatch_logs
      data[:supports_log_exports_to_cloudwatch_logs]
    end

    # Indicates whether the database engine version supports read replicas.
    # @return [Boolean]
    def supports_read_replica
      data[:supports_read_replica]
    end

    # A list of the supported DB engine modes.
    # @return [Array<String>]
    def supported_engine_modes
      data[:supported_engine_modes]
    end

    # A list of features supported by the DB engine.
    #
    # The supported features vary by DB engine and DB engine version.
    #
    # To determine the supported features for a specific DB engine and DB
    # engine version using the CLI, use the following command:
    #
    # `aws rds describe-db-engine-versions --engine <engine_name>
    # --engine-version <engine_version>`
    #
    # For example, to determine the supported features for RDS for
    # PostgreSQL version 13.3 using the CLI, use the following command:
    #
    # `aws rds describe-db-engine-versions --engine postgres
    # --engine-version 13.3`
    #
    # The supported features are listed under `SupportedFeatureNames` in the
    # output.
    # @return [Array<String>]
    def supported_feature_names
      data[:supported_feature_names]
    end

    # The status of the DB engine version, either `available` or
    # `deprecated`.
    # @return [String]
    def status
      data[:status]
    end

    # Indicates whether you can use Aurora parallel query with a specific DB
    # engine version.
    # @return [Boolean]
    def supports_parallel_query
      data[:supports_parallel_query]
    end

    # Indicates whether you can use Aurora global databases with a specific
    # DB engine version.
    # @return [Boolean]
    def supports_global_databases
      data[:supports_global_databases]
    end

    # The major engine version of the CEV.
    # @return [String]
    def major_engine_version
      data[:major_engine_version]
    end

    # The name of the Amazon S3 bucket that contains your database
    # installation files.
    # @return [String]
    def database_installation_files_s3_bucket_name
      data[:database_installation_files_s3_bucket_name]
    end

    # The Amazon S3 directory that contains the database installation files.
    # If not specified, then no prefix is assumed.
    # @return [String]
    def database_installation_files_s3_prefix
      data[:database_installation_files_s3_prefix]
    end

    # The ARN of the custom engine version.
    # @return [String]
    def db_engine_version_arn
      data[:db_engine_version_arn]
    end

    # The Amazon Web Services KMS key identifier for an encrypted CEV. This
    # parameter is required for RDS Custom, but optional for Amazon RDS.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The creation time of the DB engine version.
    # @return [Time]
    def create_time
      data[:create_time]
    end

    # A list of tags. For more information, see [Tagging Amazon RDS
    # Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [Array<Types::Tag>]
    def tag_list
      data[:tag_list]
    end

    # Indicates whether the engine version supports Babelfish for Aurora
    # PostgreSQL.
    # @return [Boolean]
    def supports_babelfish
      data[:supports_babelfish]
    end

    # JSON string that lists the installation files and parameters that RDS
    # Custom uses to create a custom engine version (CEV). RDS Custom
    # applies the patches in the order in which they're listed in the
    # manifest. You can set the Oracle home, Oracle base, and UNIX/Linux
    # user and group using the installation parameters. For more
    # information, see [JSON fields in the CEV manifest][1] in the *Amazon
    # RDS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-cev.preparing.html#custom-cev.preparing.manifest.fields
    # @return [String]
    def custom_db_engine_version_manifest
      data[:custom_db_engine_version_manifest]
    end

    # Indicates whether the DB engine version supports Aurora Limitless
    # Database.
    # @return [Boolean]
    def supports_limitless_database
      data[:supports_limitless_database]
    end

    # Indicates whether the engine version supports rotating the server
    # certificate without rebooting the DB instance.
    # @return [Boolean]
    def supports_certificate_rotation_without_restart
      data[:supports_certificate_rotation_without_restart]
    end

    # A list of the supported CA certificate identifiers.
    #
    # For more information, see [Using SSL/TLS to encrypt a connection to a
    # DB instance][1] in the *Amazon RDS User Guide* and [ Using SSL/TLS to
    # encrypt a connection to a DB cluster][2] in the *Amazon Aurora User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html
    # [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL.html
    # @return [Array<String>]
    def supported_ca_certificate_identifiers
      data[:supported_ca_certificate_identifiers]
    end

    # Indicates whether the DB engine version supports forwarding write
    # operations from reader DB instances to the writer DB instance in the
    # DB cluster. By default, write operations aren't allowed on reader DB
    # instances.
    #
    # Valid for: Aurora DB clusters only
    # @return [Boolean]
    def supports_local_write_forwarding
      data[:supports_local_write_forwarding]
    end

    # Indicates whether the DB engine version supports zero-ETL integrations
    # with Amazon Redshift.
    # @return [Boolean]
    def supports_integrations
      data[:supports_integrations]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBEngineVersion}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_engine_version.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_db_engine_versions(
        engine: @engine_name,
        engine_version: @version
      )
      end
      @data = resp.db_engine_versions[0]
      self
    end
    alias :reload :load

    # @return [Types::DBEngineVersion]
    #   Returns the data for this {DBEngineVersion}. Calls
    #   {Client#describe_db_engine_versions} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::RDS::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Plugins::UserAgent.feature('resource') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Associations

    # @return [DBEngine]
    def engine
      DBEngine.new(
        name: @engine,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   option_group_options = db_engine_version.option_group_options({
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [OptionGroupOption::Collection]
    def option_group_options(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          engine_name: @engine,
          major_engine_version: @version
        )
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_option_group_options(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.option_group_options.each do |o|
            batch << OptionGroupOption.new(
              name: o.name,
              data: o,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      OptionGroupOption::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   option_groups = db_engine_version.option_groups({
    #     option_group_name: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :option_group_name
    #   The name of the option group to describe. Can't be supplied together
    #   with EngineName or MajorEngineVersion.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [OptionGroup::Collection]
    def option_groups(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          engine_name: @engine,
          major_engine_version: @version
        )
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_option_groups(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.option_groups_list.each do |o|
            batch << OptionGroup.new(
              name: o.option_group_name,
              data: o,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      OptionGroup::Collection.new(batches)
    end

    # @return [DBParameterGroupFamily, nil]
    def parameter_group_family
      if data[:db_parameter_group_family]
        DBParameterGroupFamily.new(
          name: data[:db_parameter_group_family],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      {
        engine_name: @engine_name,
        version: @version
      }
    end
    deprecated(:identifiers)

    private

    def extract_engine_name(args, options)
      value = args[0] || options.delete(:engine_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :engine_name"
      else
        msg = "expected :engine_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_version(args, options)
      value = args[1] || options.delete(:version)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :version"
      else
        msg = "expected :version to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
