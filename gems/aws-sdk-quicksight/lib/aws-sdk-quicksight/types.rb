# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QuickSight
  module Types

    # You don't have access to this item. The provided credentials
    # couldn't be validated. You might not be authorized to carry out the
    # request. Make sure that your account is authorized to use the Amazon
    # QuickSight service, that your policies have the correct permissions,
    # and that you are using the correct credentials.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon QuickSight customizations associated with your Amazon Web
    # Services account or a QuickSight namespace in a specific Amazon Web
    # Services Region.
    #
    # @!attribute [rw] default_theme
    #   The default theme for this Amazon QuickSight subscription.
    #   @return [String]
    #
    # @!attribute [rw] default_email_customization_template
    #   The default email customization template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccountCustomization AWS API Documentation
    #
    class AccountCustomization < Struct.new(
      :default_theme,
      :default_email_customization_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the following account information elements:
    #
    # * Your Amazon QuickSight account name.
    #
    # * The edition of Amazon QuickSight that your account is using.
    #
    # * The notification email address that is associated with the Amazon
    #   QuickSight account.
    #
    # * The authentication type of the Amazon QuickSight account.
    #
    # * The status of the Amazon QuickSight account's subscription.
    #
    # @!attribute [rw] account_name
    #   The account name that you provided for the Amazon QuickSight
    #   subscription in your Amazon Web Services account. You create this
    #   name when you sign up for Amazon QuickSight. It's unique over all
    #   of Amazon Web Services, and it appears only when users sign in.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The edition of your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] notification_email
    #   The email address that will be used for Amazon QuickSight to send
    #   notifications regarding your Amazon Web Services account or Amazon
    #   QuickSight subscription.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The way that your Amazon QuickSight account is authenticated.
    #   @return [String]
    #
    # @!attribute [rw] account_subscription_status
    #   The status of your account subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccountInfo AWS API Documentation
    #
    class AccountInfo < Struct.new(
      :account_name,
      :edition,
      :notification_email,
      :authentication_type,
      :account_subscription_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon QuickSight settings associated with your Amazon Web
    # Services account.
    #
    # @!attribute [rw] account_name
    #   The "account name" you provided for the Amazon QuickSight
    #   subscription in your Amazon Web Services account. You create this
    #   name when you sign up for Amazon QuickSight. It is unique in all of
    #   Amazon Web Services and it appears only when users sign in.
    #   @return [String]
    #
    # @!attribute [rw] edition
    #   The edition of Amazon QuickSight that you're currently subscribed
    #   to: Enterprise edition or Standard edition.
    #   @return [String]
    #
    # @!attribute [rw] default_namespace
    #   The default Amazon QuickSight namespace for your Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] notification_email
    #   The main notification email for your Amazon QuickSight subscription.
    #   @return [String]
    #
    # @!attribute [rw] public_sharing_enabled
    #   A Boolean value that indicates whether public sharing is turned on
    #   for an Amazon QuickSight account. For more information about turning
    #   on public sharing, see [UpdatePublicSharingSettings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdatePublicSharingSettings.html
    #   @return [Boolean]
    #
    # @!attribute [rw] termination_protection_enabled
    #   A boolean value that determines whether or not an Amazon QuickSight
    #   account can be deleted. A `True` value doesn't allow the account to
    #   be deleted and results in an error message if a user tries to make a
    #   `DeleteAccountSubsctiption` request. A `False` value will allow the
    #   ccount to be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AccountSettings AWS API Documentation
    #
    class AccountSettings < Struct.new(
      :account_name,
      :edition,
      :default_namespace,
      :notification_email,
      :public_sharing_enabled,
      :termination_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The active Identity and Access Management (IAM) policy assignment.
    #
    # @!attribute [rw] assignment_name
    #   A name for the IAM policy assignment.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ActiveIAMPolicyAssignment AWS API Documentation
    #
    class ActiveIAMPolicyAssignment < Struct.new(
      :assignment_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An ad hoc (one-time) filtering option.
    #
    # @!attribute [rw] availability_status
    #   Availability status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AdHocFilteringOption AWS API Documentation
    #
    class AdHocFilteringOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An aggregation function aggregates values from a dimension or measure.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] numerical_aggregation_function
    #   Aggregation for numerical values.
    #   @return [Types::NumericalAggregationFunction]
    #
    # @!attribute [rw] categorical_aggregation_function
    #   Aggregation for categorical values.
    #
    #   * `COUNT`: Aggregate by the total number of values, including
    #     duplicates.
    #
    #   * `DISTINCT_COUNT`: Aggregate by the total number of distinct
    #     values.
    #   @return [String]
    #
    # @!attribute [rw] date_aggregation_function
    #   Aggregation for date values.
    #
    #   * `COUNT`: Aggregate by the total number of values, including
    #     duplicates.
    #
    #   * `DISTINCT_COUNT`: Aggregate by the total number of distinct
    #     values.
    #
    #   * `MIN`: Select the smallest date value.
    #
    #   * `MAX`: Select the largest date value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AggregationFunction AWS API Documentation
    #
    class AggregationFunction < Struct.new(
      :numerical_aggregation_function,
      :categorical_aggregation_function,
      :date_aggregation_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration options to sort aggregated values.
    #
    # @!attribute [rw] column
    #   The column that determines the sort order of aggregated values.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] sort_direction
    #   The sort direction of values.
    #
    #   * `ASC`: Sort in ascending order.
    #
    #   * `DESC`: Sort in descending order.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_function
    #   The function that aggregates the values in `Column`.
    #   @return [Types::AggregationFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AggregationSortConfiguration AWS API Documentation
    #
    class AggregationSortConfiguration < Struct.new(
      :column,
      :sort_direction,
      :aggregation_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for OpenSearch.
    #
    # @!attribute [rw] domain
    #   The OpenSearch domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AmazonElasticsearchParameters AWS API Documentation
    #
    class AmazonElasticsearchParameters < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for OpenSearch.
    #
    # @!attribute [rw] domain
    #   The OpenSearch domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AmazonOpenSearchParameters AWS API Documentation
    #
    class AmazonOpenSearchParameters < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata structure for an analysis in Amazon QuickSight
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status associated with the analysis.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   Errors associated with the analysis.
    #   @return [Array<Types::AnalysisError>]
    #
    # @!attribute [rw] data_set_arns
    #   The ARNs of the datasets of the analysis.
    #   @return [Array<String>]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the analysis was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the analysis was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] sheets
    #   A list of the associated sheets with the unique identifier and name
    #   of each sheet.
    #   @return [Array<Types::Sheet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Analysis AWS API Documentation
    #
    class Analysis < Struct.new(
      :analysis_id,
      :arn,
      :name,
      :status,
      :errors,
      :data_set_arns,
      :theme_arn,
      :created_time,
      :last_updated_time,
      :sheets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for default analysis settings.
    #
    # @!attribute [rw] default_new_sheet_configuration
    #   The configuration for default new sheet settings.
    #   @return [Types::DefaultNewSheetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisDefaults AWS API Documentation
    #
    class AnalysisDefaults < Struct.new(
      :default_new_sheet_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of an analysis.
    #
    # @!attribute [rw] data_set_identifier_declarations
    #   An array of dataset identifier declarations. This mapping allows the
    #   usage of dataset identifiers instead of dataset ARNs throughout
    #   analysis sub-structures.
    #   @return [Array<Types::DataSetIdentifierDeclaration>]
    #
    # @!attribute [rw] sheets
    #   An array of sheet definitions for an analysis. Each
    #   `SheetDefinition` provides detailed information about a sheet within
    #   this analysis.
    #   @return [Array<Types::SheetDefinition>]
    #
    # @!attribute [rw] calculated_fields
    #   An array of calculated field definitions for the analysis.
    #   @return [Array<Types::CalculatedField>]
    #
    # @!attribute [rw] parameter_declarations
    #   An array of parameter declarations for an analysis.
    #
    #   Parameters are named variables that can transfer a value for use by
    #   an action or an object.
    #
    #   For more information, see [Parameters in Amazon QuickSight][1] in
    #   the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/parameters-in-quicksight.html
    #   @return [Array<Types::ParameterDeclaration>]
    #
    # @!attribute [rw] filter_groups
    #   Filter definitions for an analysis.
    #
    #   For more information, see [Filtering Data in Amazon QuickSight][1]
    #   in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/adding-a-filter.html
    #   @return [Array<Types::FilterGroup>]
    #
    # @!attribute [rw] column_configurations
    #   An array of analysis-level column configurations. Column
    #   configurations can be used to set default formatting for a column to
    #   be used throughout an analysis.
    #   @return [Array<Types::ColumnConfiguration>]
    #
    # @!attribute [rw] analysis_defaults
    #   The configuration for default analysis settings.
    #   @return [Types::AnalysisDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisDefinition AWS API Documentation
    #
    class AnalysisDefinition < Struct.new(
      :data_set_identifier_declarations,
      :sheets,
      :calculated_fields,
      :parameter_declarations,
      :filter_groups,
      :column_configurations,
      :analysis_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # Analysis error.
    #
    # @!attribute [rw] type
    #   The type of the analysis error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message associated with the analysis error.
    #   @return [String]
    #
    # @!attribute [rw] violated_entities
    #   Lists the violated entities that caused the analysis error
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisError AWS API Documentation
    #
    class AnalysisError < Struct.new(
      :type,
      :message,
      :violated_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that you apply when searching for one or more analyses.
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example `"Operator": "StringEquals"`. Valid values are
    #   `"StringEquals"` and `"StringLike"`.
    #
    #   If you set the operator value to `"StringEquals"`, you need to
    #   provide an ownership related filter in the `"NAME"` field and the
    #   arn of the user or group whose folders you want to search in the
    #   `"Value"` field. For example, `"Name":"DIRECT_QUICKSIGHT_OWNER",
    #   "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #
    #   If you set the value to `"StringLike"`, you need to provide the name
    #   of the folders you are searching for. For example,
    #   `"Name":"ANALYSIS_NAME", "Operator": "StringLike", "Value": "Test"`.
    #   The `"StringLike"` operator only supports the `NAME` value
    #   `ANALYSIS_NAME`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the value that you want to use as a filter, for example
    #   `"Name": "QUICKSIGHT_OWNER"`.
    #
    #   Valid values are defined as follows:
    #
    #   * `QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or group,
    #     and any analyses with that ARN listed as one of the analysis'
    #     owners or viewers are returned. Implicit permissions from folders
    #     or groups are considered.
    #
    #   * `QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and any
    #     analyses with that ARN listed as one of the owners of the analyses
    #     are returned. Implicit permissions from folders or groups are
    #     considered.
    #
    #   * `DIRECT_QUICKSIGHT_SOLE_OWNER`: Provide an ARN of a user or group,
    #     and any analyses with that ARN listed as the only owner of the
    #     analysis are returned. Implicit permissions from folders or groups
    #     are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and
    #     any analyses with that ARN listed as one of the owners of the
    #     analyses are returned. Implicit permissions from folders or groups
    #     are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or
    #     group, and any analyses with that ARN listed as one of the owners
    #     or viewers of the analyses are returned. Implicit permissions from
    #     folders or groups are not considered.
    #
    #   * `ANALYSIS_NAME`: Any analyses whose names have a substring match
    #     to this value will be returned.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item, in this case `QUICKSIGHT_USER`, that
    #   you want to use as a filter, for example `"Value"`. An example is
    #   `"arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSearchFilter AWS API Documentation
    #
    class AnalysisSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source entity of an analysis.
    #
    # @!attribute [rw] source_template
    #   The source template for the source entity of the analysis.
    #   @return [Types::AnalysisSourceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSourceEntity AWS API Documentation
    #
    class AnalysisSourceEntity < Struct.new(
      :source_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source template of an analysis.
    #
    # @!attribute [rw] data_set_references
    #   The dataset references of the source template of an analysis.
    #   @return [Array<Types::DataSetReference>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the source template of an
    #   analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSourceTemplate AWS API Documentation
    #
    class AnalysisSourceTemplate < Struct.new(
      :data_set_references,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary metadata that describes an analysis.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis. This ID displays in the URL.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the analysis. This name is displayed in the Amazon
    #   QuickSight console.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The last known status for the analysis.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the analysis was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the analysis was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnalysisSummary AWS API Documentation
    #
    class AnalysisSummary < Struct.new(
      :arn,
      :analysis_id,
      :name,
      :status,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The date configuration of the filter.
    #
    # @!attribute [rw] anchor_option
    #   The options for the date configuration. Choose one of the options
    #   below:
    #
    #   * `NOW`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter that is used for the anchor date
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnchorDateConfiguration AWS API Documentation
    #
    class AnchorDateConfiguration < Struct.new(
      :anchor_option,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the dashboard that you want to embed.
    #
    # @!attribute [rw] initial_dashboard_id
    #   The dashboard ID for the dashboard that you want the user to see
    #   first. This ID is included in the output URL. When the URL in
    #   response is accessed, Amazon QuickSight renders this dashboard.
    #
    #   The Amazon Resource Name (ARN) of this dashboard must be included in
    #   the `AuthorizedResourceArns` parameter. Otherwise, the request will
    #   fail with `InvalidParameterValueException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnonymousUserDashboardEmbeddingConfiguration AWS API Documentation
    #
    class AnonymousUserDashboardEmbeddingConfiguration < Struct.new(
      :initial_dashboard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The experience that you are embedding. You can use this object to
    # generate a url that embeds a visual into your application.
    #
    # @!attribute [rw] initial_dashboard_visual_id
    #   The visual ID for the visual that you want the user to see. This ID
    #   is included in the output URL. When the URL in response is accessed,
    #   Amazon QuickSight renders this visual.
    #
    #   The Amazon Resource Name (ARN) of the dashboard that the visual
    #   belongs to must be included in the `AuthorizedResourceArns`
    #   parameter. Otherwise, the request will fail with
    #   `InvalidParameterValueException`.
    #   @return [Types::DashboardVisualId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnonymousUserDashboardVisualEmbeddingConfiguration AWS API Documentation
    #
    class AnonymousUserDashboardVisualEmbeddingConfiguration < Struct.new(
      :initial_dashboard_visual_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of experience you want to embed. For anonymous users, you can
    # embed Amazon QuickSight dashboards.
    #
    # @!attribute [rw] dashboard
    #   The type of embedding experience. In this case, Amazon QuickSight
    #   dashboards.
    #   @return [Types::AnonymousUserDashboardEmbeddingConfiguration]
    #
    # @!attribute [rw] dashboard_visual
    #   The type of embedding experience. In this case, Amazon QuickSight
    #   visuals.
    #   @return [Types::AnonymousUserDashboardVisualEmbeddingConfiguration]
    #
    # @!attribute [rw] q_search_bar
    #   The Q search bar that you want to use for anonymous user embedding.
    #   @return [Types::AnonymousUserQSearchBarEmbeddingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnonymousUserEmbeddingExperienceConfiguration AWS API Documentation
    #
    class AnonymousUserEmbeddingExperienceConfiguration < Struct.new(
      :dashboard,
      :dashboard_visual,
      :q_search_bar)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings that you want to use with the Q search bar.
    #
    # @!attribute [rw] initial_topic_id
    #   The QuickSight Q topic ID of the topic that you want the anonymous
    #   user to see first. This ID is included in the output URL. When the
    #   URL in response is accessed, Amazon QuickSight renders the Q search
    #   bar with this topic pre-selected.
    #
    #   The Amazon Resource Name (ARN) of this Q topic must be included in
    #   the `AuthorizedResourceArns` parameter. Otherwise, the request will
    #   fail with `InvalidParameterValueException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AnonymousUserQSearchBarEmbeddingConfiguration AWS API Documentation
    #
    class AnonymousUserQSearchBarEmbeddingConfiguration < Struct.new(
      :initial_topic_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The arc axis configuration of a `GaugeChartVisual`.
    #
    # @!attribute [rw] range
    #   The arc axis range of a `GaugeChartVisual`.
    #   @return [Types::ArcAxisDisplayRange]
    #
    # @!attribute [rw] reserve_range
    #   The reserved range of the arc axis.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ArcAxisConfiguration AWS API Documentation
    #
    class ArcAxisConfiguration < Struct.new(
      :range,
      :reserve_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The arc axis range of a `GaugeChartVisual`.
    #
    # @!attribute [rw] min
    #   The minimum value of the arc axis range.
    #   @return [Float]
    #
    # @!attribute [rw] max
    #   The maximum value of the arc axis range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ArcAxisDisplayRange AWS API Documentation
    #
    class ArcAxisDisplayRange < Struct.new(
      :min,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # The arc configuration of a `GaugeChartVisual`.
    #
    # @!attribute [rw] arc_angle
    #   The option that determines the arc angle of a `GaugeChartVisual`.
    #   @return [Float]
    #
    # @!attribute [rw] arc_thickness
    #   The options that determine the arc thickness of a
    #   `GaugeChartVisual`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ArcConfiguration AWS API Documentation
    #
    class ArcConfiguration < Struct.new(
      :arc_angle,
      :arc_thickness)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the arc thickness of a `GaugeChartVisual`.
    #
    # @!attribute [rw] arc_thickness
    #   The arc thickness of a `GaugeChartVisual`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ArcOptions AWS API Documentation
    #
    class ArcOptions < Struct.new(
      :arc_thickness)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for Amazon Athena.
    #
    # @!attribute [rw] work_group
    #   The workgroup that Amazon Athena uses.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Use the `RoleArn` structure to override an account-wide role for a
    #   specific Athena data source. For example, say an account
    #   administrator has turned off all Athena access with an account-wide
    #   role. The administrator can then use `RoleArn` to bypass the
    #   account-wide role and allow Athena access for the single Athena data
    #   source that is specified in the structure, even if the account-wide
    #   role forbidding Athena access is still active.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AthenaParameters AWS API Documentation
    #
    class AthenaParameters < Struct.new(
      :work_group,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for Amazon Aurora.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AuroraParameters AWS API Documentation
    #
    class AuroraParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameters for Amazon Aurora PostgreSQL-Compatible Edition.
    #
    # @!attribute [rw] host
    #   The Amazon Aurora PostgreSQL-Compatible host to connect to.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that Amazon Aurora PostgreSQL is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   The Amazon Aurora PostgreSQL database to connect to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AuroraPostgreSqlParameters AWS API Documentation
    #
    class AuroraPostgreSqlParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for IoT Analytics.
    #
    # @!attribute [rw] data_set_name
    #   Dataset name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AwsIotAnalyticsParameters AWS API Documentation
    #
    class AwsIotAnalyticsParameters < Struct.new(
      :data_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data options for an axis.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] numeric_axis_options
    #   The options for an axis with a numeric field.
    #   @return [Types::NumericAxisOptions]
    #
    # @!attribute [rw] date_axis_options
    #   The options for an axis with a date field.
    #   @return [Types::DateAxisOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisDataOptions AWS API Documentation
    #
    class AxisDataOptions < Struct.new(
      :numeric_axis_options,
      :date_axis_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that are saved for future extension.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisDisplayDataDrivenRange AWS API Documentation
    #
    class AxisDisplayDataDrivenRange < Aws::EmptyStructure; end

    # The minimum and maximum setup for an axis display range.
    #
    # @!attribute [rw] minimum
    #   The minimum setup for an axis display range.
    #   @return [Float]
    #
    # @!attribute [rw] maximum
    #   The maximum setup for an axis display range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisDisplayMinMaxRange AWS API Documentation
    #
    class AxisDisplayMinMaxRange < Struct.new(
      :minimum,
      :maximum)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for the axis label.
    #
    # @!attribute [rw] tick_label_options
    #   The tick label options of an axis.
    #   @return [Types::AxisTickLabelOptions]
    #
    # @!attribute [rw] axis_line_visibility
    #   Determines whether or not the axis line is visible.
    #   @return [String]
    #
    # @!attribute [rw] grid_line_visibility
    #   Determines whether or not the grid line is visible.
    #   @return [String]
    #
    # @!attribute [rw] data_options
    #   The data options for an axis.
    #   @return [Types::AxisDataOptions]
    #
    # @!attribute [rw] scrollbar_options
    #   The scroll bar options for an axis.
    #   @return [Types::ScrollBarOptions]
    #
    # @!attribute [rw] axis_offset
    #   The offset value that determines the starting placement of the axis
    #   within a visual's bounds.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisDisplayOptions AWS API Documentation
    #
    class AxisDisplayOptions < Struct.new(
      :tick_label_options,
      :axis_line_visibility,
      :grid_line_visibility,
      :data_options,
      :scrollbar_options,
      :axis_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # The range setup of a numeric axis display range.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] min_max
    #   The minimum and maximum setup of an axis display range.
    #   @return [Types::AxisDisplayMinMaxRange]
    #
    # @!attribute [rw] data_driven
    #   The data-driven setup of an axis display range.
    #   @return [Types::AxisDisplayDataDrivenRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisDisplayRange AWS API Documentation
    #
    class AxisDisplayRange < Struct.new(
      :min_max,
      :data_driven)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label options for a chart axis. You must specify the field that
    # the label is targeted to.
    #
    # @!attribute [rw] font_configuration
    #   The font configuration of the axis label.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] custom_label
    #   The text for the axis label.
    #   @return [String]
    #
    # @!attribute [rw] apply_to
    #   The options that indicate which field the label belongs to.
    #   @return [Types::AxisLabelReferenceOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisLabelOptions AWS API Documentation
    #
    class AxisLabelOptions < Struct.new(
      :font_configuration,
      :custom_label,
      :apply_to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference that specifies where the axis label is applied to.
    #
    # @!attribute [rw] field_id
    #   The field that the axis label is targeted to.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the axis label is targeted to.
    #   @return [Types::ColumnIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisLabelReferenceOptions AWS API Documentation
    #
    class AxisLabelReferenceOptions < Struct.new(
      :field_id,
      :column)
      SENSITIVE = []
      include Aws::Structure
    end

    # The liner axis scale setup.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] step_count
    #   The step count setup of a linear axis.
    #   @return [Integer]
    #
    # @!attribute [rw] step_size
    #   The step size setup of a linear axis.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisLinearScale AWS API Documentation
    #
    class AxisLinearScale < Struct.new(
      :step_count,
      :step_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logarithmic axis scale setup.
    #
    # @!attribute [rw] base
    #   The base setup of a logarithmic axis scale.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisLogarithmicScale AWS API Documentation
    #
    class AxisLogarithmicScale < Struct.new(
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scale setup options for a numeric axis display.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] linear
    #   The linear axis scale setup.
    #   @return [Types::AxisLinearScale]
    #
    # @!attribute [rw] logarithmic
    #   The logarithmic axis scale setup.
    #   @return [Types::AxisLogarithmicScale]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisScale AWS API Documentation
    #
    class AxisScale < Struct.new(
      :linear,
      :logarithmic)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tick label options of an axis.
    #
    # @!attribute [rw] label_options
    #   Determines whether or not the axis ticks are visible.
    #   @return [Types::LabelOptions]
    #
    # @!attribute [rw] rotation_angle
    #   The rotation angle of the axis tick labels.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/AxisTickLabelOptions AWS API Documentation
    #
    class AxisTickLabelOptions < Struct.new(
      :label_options,
      :rotation_angle)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field wells of a bar chart.
    #
    # @!attribute [rw] category
    #   The category (y-axis) field well of a bar chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The value field wells of a bar chart. Values are aggregated by
    #   category.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] colors
    #   The color (group/color) field well of a bar chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] small_multiples
    #   The small multiples field well of a bar chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BarChartAggregatedFieldWells AWS API Documentation
    #
    class BarChartAggregatedFieldWells < Struct.new(
      :category,
      :values,
      :colors,
      :small_multiples)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `BarChartVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::BarChartFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a `BarChartVisual`.
    #   @return [Types::BarChartSortConfiguration]
    #
    # @!attribute [rw] orientation
    #   The orientation of the bars in a bar chart visual. There are two
    #   valid values in this structure:
    #
    #   * `HORIZONTAL`: Used for charts that have horizontal bars. Visuals
    #     that use this value are horizontal bar charts, horizontal stacked
    #     bar charts, and horizontal stacked 100% bar charts.
    #
    #   * `VERTICAL`: Used for charts that have vertical bars. Visuals that
    #     use this value are vertical bar charts, vertical stacked bar
    #     charts, and vertical stacked 100% bar charts.
    #   @return [String]
    #
    # @!attribute [rw] bars_arrangement
    #   Determines the arrangement of the bars. The orientation and
    #   arrangement of bars determine the type of bar that is used in the
    #   visual.
    #   @return [String]
    #
    # @!attribute [rw] visual_palette
    #   The palette (chart color) display setup of the visual.
    #   @return [Types::VisualPalette]
    #
    # @!attribute [rw] small_multiples_options
    #   The small multiples setup for the visual.
    #   @return [Types::SmallMultiplesOptions]
    #
    # @!attribute [rw] category_axis
    #   The label display options (grid line, range, scale, axis step) for
    #   bar chart category.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] category_label_options
    #   The label options (label text, label visibility and sort icon
    #   visibility) for a bar chart.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] value_axis
    #   The label display options (grid line, range, scale, axis step) for a
    #   bar chart value.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] value_label_options
    #   The label options (label text, label visibility and sort icon
    #   visibility) for a bar chart value.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] color_label_options
    #   The label options (label text, label visibility and sort icon
    #   visibility) for a color that is used in a bar chart.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] data_labels
    #   The options that determine if visual data labels are displayed.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] reference_lines
    #   The reference line setup of the visual.
    #   @return [Array<Types::ReferenceLine>]
    #
    # @!attribute [rw] contribution_analysis_defaults
    #   The contribution analysis (anomaly configuration) setup of the
    #   visual.
    #   @return [Array<Types::ContributionAnalysisDefault>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BarChartConfiguration AWS API Documentation
    #
    class BarChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :orientation,
      :bars_arrangement,
      :visual_palette,
      :small_multiples_options,
      :category_axis,
      :category_label_options,
      :value_axis,
      :value_label_options,
      :color_label_options,
      :legend,
      :data_labels,
      :tooltip,
      :reference_lines,
      :contribution_analysis_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of a `BarChartVisual`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] bar_chart_aggregated_field_wells
    #   The aggregated field wells of a bar chart.
    #   @return [Types::BarChartAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BarChartFieldWells AWS API Documentation
    #
    class BarChartFieldWells < Struct.new(
      :bar_chart_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # sort-configuration-description
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of category fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] category_items_limit
    #   The limit on the number of categories displayed in a bar chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] color_sort
    #   The sort configuration of color fields in a bar chart.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] color_items_limit
    #   The limit on the number of values displayed in a bar chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] small_multiples_sort
    #   The sort configuration of the small multiples field.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] small_multiples_limit_configuration
    #   The limit on the number of small multiples panels that are
    #   displayed.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BarChartSortConfiguration AWS API Documentation
    #
    class BarChartSortConfiguration < Struct.new(
      :category_sort,
      :category_items_limit,
      :color_sort,
      :color_items_limit,
      :small_multiples_sort,
      :small_multiples_limit_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A bar chart.
    #
    # The `BarChartVisual` structure describes a visual that is a member of
    # the bar chart family. The following charts can be described using this
    # structure:
    #
    # * Horizontal bar chart
    #
    # * Vertical bar chart
    #
    # * Horizontal stacked bar chart
    #
    # * Vertical stacked bar chart
    #
    # * Horizontal stacked 100% bar chart
    #
    # * Vertical stacked 100% bar chart
    #
    # For more information, see [Using bar charts][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/bar-charts.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::BarChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BarChartVisual AWS API Documentation
    #
    class BarChartVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the bin count of a histogram.
    #
    # @!attribute [rw] value
    #   The options that determine the bin count value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BinCountOptions AWS API Documentation
    #
    class BinCountOptions < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the bin width of a histogram.
    #
    # @!attribute [rw] value
    #   The options that determine the bin width value.
    #   @return [Float]
    #
    # @!attribute [rw] bin_count_limit
    #   The options that determine the bin count limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BinWidthOptions AWS API Documentation
    #
    class BinWidthOptions < Struct.new(
      :value,
      :bin_count_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a body section.
    #
    # @!attribute [rw] section_id
    #   The unique identifier of a body section.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The configuration of content in a body section.
    #   @return [Types::BodySectionContent]
    #
    # @!attribute [rw] style
    #   The style options of a body section.
    #   @return [Types::SectionStyle]
    #
    # @!attribute [rw] page_break_configuration
    #   The configuration of a page break for a section.
    #   @return [Types::SectionPageBreakConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BodySectionConfiguration AWS API Documentation
    #
    class BodySectionConfiguration < Struct.new(
      :section_id,
      :content,
      :style,
      :page_break_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of content in a body section.
    #
    # @!attribute [rw] layout
    #   The layout configuration of a body section.
    #   @return [Types::SectionLayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BodySectionContent AWS API Documentation
    #
    class BodySectionContent < Struct.new(
      :layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bookmarks configuration of an embedded dashboard.
    #
    # @!attribute [rw] enabled
    #   A Boolean value that determines whether a user can bookmark an
    #   embedded dashboard.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BookmarksConfigurations AWS API Documentation
    #
    class BookmarksConfigurations < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for tile borders for visuals.
    #
    # @!attribute [rw] show
    #   The option to enable display of borders for visuals.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BorderStyle AWS API Documentation
    #
    class BorderStyle < Struct.new(
      :show)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field well for a box plot.
    #
    # @!attribute [rw] group_by
    #   The group by field well of a box plot chart. Values are grouped
    #   based on group by fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The value field well of a box plot chart. Values are aggregated
    #   based on group by fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BoxPlotAggregatedFieldWells AWS API Documentation
    #
    class BoxPlotAggregatedFieldWells < Struct.new(
      :group_by,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `BoxPlotVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::BoxPlotFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a `BoxPlotVisual`.
    #   @return [Types::BoxPlotSortConfiguration]
    #
    # @!attribute [rw] box_plot_options
    #   The box plot chart options for a box plot visual
    #   @return [Types::BoxPlotOptions]
    #
    # @!attribute [rw] category_axis
    #   The label display options (grid line, range, scale, axis step) of a
    #   box plot category.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] category_label_options
    #   The label options (label text, label visibility and sort Icon
    #   visibility) of a box plot category.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] primary_y_axis_display_options
    #   The label display options (grid line, range, scale, axis step) of a
    #   box plot category.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] primary_y_axis_label_options
    #   The label options (label text, label visibility and sort icon
    #   visibility) of a box plot value.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] legend
    #   The options for the legend setup of a visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] reference_lines
    #   The reference line setup of the visual.
    #   @return [Array<Types::ReferenceLine>]
    #
    # @!attribute [rw] visual_palette
    #   The palette (chart color) display setup of the visual.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BoxPlotChartConfiguration AWS API Documentation
    #
    class BoxPlotChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :box_plot_options,
      :category_axis,
      :category_label_options,
      :primary_y_axis_display_options,
      :primary_y_axis_label_options,
      :legend,
      :tooltip,
      :reference_lines,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of a `BoxPlotVisual`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] box_plot_aggregated_field_wells
    #   The aggregated field wells of a box plot.
    #   @return [Types::BoxPlotAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BoxPlotFieldWells AWS API Documentation
    #
    class BoxPlotFieldWells < Struct.new(
      :box_plot_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options of a box plot visual.
    #
    # @!attribute [rw] style_options
    #   The style options of the box plot.
    #   @return [Types::BoxPlotStyleOptions]
    #
    # @!attribute [rw] outlier_visibility
    #   Determines the visibility of the outlier in a box plot.
    #   @return [String]
    #
    # @!attribute [rw] all_data_points_visibility
    #   Determines the visibility of all data points of the box plot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BoxPlotOptions AWS API Documentation
    #
    class BoxPlotOptions < Struct.new(
      :style_options,
      :outlier_visibility,
      :all_data_points_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a `BoxPlotVisual`.
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of a group by fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] pagination_configuration
    #   The pagination configuration of a table visual or box plot.
    #   @return [Types::PaginationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BoxPlotSortConfiguration AWS API Documentation
    #
    class BoxPlotSortConfiguration < Struct.new(
      :category_sort,
      :pagination_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The style options of the box plot.
    #
    # @!attribute [rw] fill_style
    #   The fill styles (solid, transparent) of the box plot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BoxPlotStyleOptions AWS API Documentation
    #
    class BoxPlotStyleOptions < Struct.new(
      :fill_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # A box plot.
    #
    # For more information, see [Using box plots][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/box-plots.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::BoxPlotChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/BoxPlotVisual AWS API Documentation
    #
    class BoxPlotVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # A calculated column for a dataset.
    #
    # @!attribute [rw] column_name
    #   Column name.
    #   @return [String]
    #
    # @!attribute [rw] column_id
    #   A unique ID to identify a calculated column. During a dataset
    #   update, if the column ID of a calculated column matches that of an
    #   existing calculated column, Amazon QuickSight preserves the existing
    #   calculated column.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   An expression that defines the calculated column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CalculatedColumn AWS API Documentation
    #
    class CalculatedColumn < Struct.new(
      :column_name,
      :column_id,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # The calculated field of an analysis.
    #
    # @!attribute [rw] data_set_identifier
    #   The data set that is used in this calculated field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the calculated field.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression of the calculated field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CalculatedField AWS API Documentation
    #
    class CalculatedField < Struct.new(
      :data_set_identifier,
      :name,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # The table calculation measure field for pivot tables.
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression in the table calculation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CalculatedMeasureField AWS API Documentation
    #
    class CalculatedMeasureField < Struct.new(
      :field_id,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CancelIngestionRequest AWS API Documentation
    #
    class CancelIngestionRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :ingestion_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the data ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CancelIngestionResponse AWS API Documentation
    #
    class CancelIngestionResponse < Struct.new(
      :arn,
      :ingestion_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values that are displayed in a control can be configured to only
    # show values that are valid based on what's selected in other
    # controls.
    #
    # @!attribute [rw] source_controls
    #   A list of source controls that determine the values that are used in
    #   the current control.
    #   @return [Array<Types::CascadingControlSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CascadingControlConfiguration AWS API Documentation
    #
    class CascadingControlConfiguration < Struct.new(
      :source_controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source controls that are used in a
    # `CascadingControlConfiguration`.
    #
    # @!attribute [rw] source_sheet_control_id
    #   The source sheet control ID of a `CascadingControlSource`.
    #   @return [String]
    #
    # @!attribute [rw] column_to_match
    #   The column identifier that determines which column to look up for
    #   the source sheet control.
    #   @return [Types::ColumnIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CascadingControlSource AWS API Documentation
    #
    class CascadingControlSource < Struct.new(
      :source_sheet_control_id,
      :column_to_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that casts a column to a different type.
    #
    # @!attribute [rw] column_name
    #   Column name.
    #   @return [String]
    #
    # @!attribute [rw] new_column_type
    #   New column data type.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   When casting a column from string to datetime type, you can supply a
    #   string in a format supported by Amazon QuickSight to denote the
    #   source data format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CastColumnTypeOperation AWS API Documentation
    #
    class CastColumnTypeOperation < Struct.new(
      :column_name,
      :new_column_type,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimension type field with categorical type columns..
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that is used in the `CategoricalDimensionField`.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] hierarchy_id
    #   The custom hierarchy ID.
    #   @return [String]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the field.
    #   @return [Types::StringFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CategoricalDimensionField AWS API Documentation
    #
    class CategoricalDimensionField < Struct.new(
      :field_id,
      :column,
      :hierarchy_id,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The measure type field with categorical type columns.
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that is used in the `CategoricalMeasureField`.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] aggregation_function
    #   The aggregation function of the measure field.
    #   @return [String]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the field.
    #   @return [Types::StringFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CategoricalMeasureField AWS API Documentation
    #
    class CategoricalMeasureField < Struct.new(
      :field_id,
      :column,
      :aggregation_function,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The numeric equality type drill down filter.
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] category_values
    #   A list of the string inputs that are the values of the category
    #   drill down filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CategoryDrillDownFilter AWS API Documentation
    #
    class CategoryDrillDownFilter < Struct.new(
      :column,
      :category_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `CategoryFilter` filters text values.
    #
    # For more information, see [Adding text filters][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/add-a-text-filter-data-prep.html
    #
    # @!attribute [rw] filter_id
    #   An identifier that uniquely identifies a filter within a dashboard,
    #   analysis, or template.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] configuration
    #   The configuration for a `CategoryFilter`.
    #   @return [Types::CategoryFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CategoryFilter AWS API Documentation
    #
    class CategoryFilter < Struct.new(
      :filter_id,
      :column,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a `CategoryFilter`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] filter_list_configuration
    #   A list of filter configurations. In the Amazon QuickSight console,
    #   this filter type is called a filter list.
    #   @return [Types::FilterListConfiguration]
    #
    # @!attribute [rw] custom_filter_list_configuration
    #   A list of custom filter values. In the Amazon QuickSight console,
    #   this filter type is called a custom filter list.
    #   @return [Types::CustomFilterListConfiguration]
    #
    # @!attribute [rw] custom_filter_configuration
    #   A custom filter that filters based on a single value. This filter
    #   can be partially matched.
    #   @return [Types::CustomFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CategoryFilterConfiguration AWS API Documentation
    #
    class CategoryFilterConfiguration < Struct.new(
      :filter_list_configuration,
      :custom_filter_list_configuration,
      :custom_filter_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents the cell value synonym.
    #
    # @!attribute [rw] cell_value
    #   The cell value.
    #   @return [String]
    #
    # @!attribute [rw] synonyms
    #   Other names or aliases for the cell value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CellValueSynonym AWS API Documentation
    #
    class CellValueSynonym < Struct.new(
      :cell_value,
      :synonyms)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label options for an axis on a chart.
    #
    # @!attribute [rw] visibility
    #   The visibility of an axis label on a chart. Choose one of the
    #   following options:
    #
    #   * `VISIBLE`: Shows the axis.
    #
    #   * `HIDDEN`: Hides the axis.
    #   @return [String]
    #
    # @!attribute [rw] sort_icon_visibility
    #   The visibility configuration of the sort icon on a chart's axis
    #   label.
    #   @return [String]
    #
    # @!attribute [rw] axis_label_options
    #   The label options for a chart axis.
    #   @return [Array<Types::AxisLabelOptions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ChartAxisLabelOptions AWS API Documentation
    #
    class ChartAxisLabelOptions < Struct.new(
      :visibility,
      :sort_icon_visibility,
      :axis_label_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster marker that is a part of the cluster marker configuration.
    #
    # @!attribute [rw] simple_cluster_marker
    #   The simple cluster marker of the cluster marker.
    #   @return [Types::SimpleClusterMarker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ClusterMarker AWS API Documentation
    #
    class ClusterMarker < Struct.new(
      :simple_cluster_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster marker configuration of the geospatial map selected point
    # style.
    #
    # @!attribute [rw] cluster_marker
    #   The cluster marker that is a part of the cluster marker
    #   configuration
    #   @return [Types::ClusterMarker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ClusterMarkerConfiguration AWS API Documentation
    #
    class ClusterMarkerConfiguration < Struct.new(
      :cluster_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a collective constant.
    #
    # @!attribute [rw] value_list
    #   A list of values for the collective constant.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CollectiveConstant AWS API Documentation
    #
    class CollectiveConstant < Struct.new(
      :value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the color scale that is applied to the visual.
    #
    # @!attribute [rw] colors
    #   Determines the list of colors that are applied to the visual.
    #   @return [Array<Types::DataColor>]
    #
    # @!attribute [rw] color_fill_type
    #   Determines the color fill type.
    #   @return [String]
    #
    # @!attribute [rw] null_value_color
    #   Determines the color that is applied to null values.
    #   @return [Types::DataColor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColorScale AWS API Documentation
    #
    class ColorScale < Struct.new(
      :colors,
      :color_fill_type,
      :null_value_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The general configuration of a column.
    #
    # @!attribute [rw] column
    #   The column.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of a column.
    #   @return [Types::FormatConfiguration]
    #
    # @!attribute [rw] role
    #   The role of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnConfiguration AWS API Documentation
    #
    class ColumnConfiguration < Struct.new(
      :column,
      :format_configuration,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata that contains a description for a column.
    #
    # @!attribute [rw] text
    #   The text of a description for a column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnDescription AWS API Documentation
    #
    class ColumnDescription < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Groupings of columns that work together in certain Amazon QuickSight
    # features. This is a variant type structure. For this structure to be
    # valid, only one of the attributes can be non-null.
    #
    # @!attribute [rw] geo_spatial_column_group
    #   Geospatial column group that denotes a hierarchy.
    #   @return [Types::GeoSpatialColumnGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnGroup AWS API Documentation
    #
    class ColumnGroup < Struct.new(
      :geo_spatial_column_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure describing the name, data type, and geographic role of the
    # columns.
    #
    # @!attribute [rw] name
    #   The name of the column group's column schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnGroupColumnSchema AWS API Documentation
    #
    class ColumnGroupColumnSchema < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The column group schema.
    #
    # @!attribute [rw] name
    #   The name of the column group schema.
    #   @return [String]
    #
    # @!attribute [rw] column_group_column_schema_list
    #   A structure containing the list of schemas for column group columns.
    #   @return [Array<Types::ColumnGroupColumnSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnGroupSchema AWS API Documentation
    #
    class ColumnGroupSchema < Struct.new(
      :name,
      :column_group_column_schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the hierarchy of the fields for a visual
    # element.
    #
    # @!attribute [rw] explicit_hierarchy
    #   The option that determines the hierarchy of the fields that are
    #   built within a visual's field wells. These fields can't be
    #   duplicated to other visuals.
    #   @return [Types::ExplicitHierarchy]
    #
    # @!attribute [rw] date_time_hierarchy
    #   The option that determines the hierarchy of any `DateTime` fields.
    #   @return [Types::DateTimeHierarchy]
    #
    # @!attribute [rw] predefined_hierarchy
    #   The option that determines the hierarchy of the fields that are
    #   defined during data preparation. These fields are available to use
    #   in any analysis that uses the data source.
    #   @return [Types::PredefinedHierarchy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnHierarchy AWS API Documentation
    #
    class ColumnHierarchy < Struct.new(
      :explicit_hierarchy,
      :date_time_hierarchy,
      :predefined_hierarchy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A column of a data set.
    #
    # @!attribute [rw] data_set_identifier
    #   The data set that the column belongs to.
    #   @return [String]
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnIdentifier AWS API Documentation
    #
    class ColumnIdentifier < Struct.new(
      :data_set_identifier,
      :column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule defined to grant access on one or more restricted columns. Each
    # dataset can have multiple rules. To create a restricted column, you
    # add it to one or more rules. Each rule must contain at least one
    # column and at least one user or group. To be able to see a restricted
    # column, a user or group needs to be added to a rule for that column.
    #
    # @!attribute [rw] principals
    #   An array of Amazon Resource Names (ARNs) for Amazon QuickSight users
    #   or groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] column_names
    #   An array of column names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnLevelPermissionRule AWS API Documentation
    #
    class ColumnLevelPermissionRule < Struct.new(
      :principals,
      :column_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The column schema.
    #
    # @!attribute [rw] name
    #   The name of the column schema.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the column schema.
    #   @return [String]
    #
    # @!attribute [rw] geographic_role
    #   The geographic role of the column schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnSchema AWS API Documentation
    #
    class ColumnSchema < Struct.new(
      :name,
      :data_type,
      :geographic_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration for a column that is not used in a field well.
    #
    # @!attribute [rw] sort_by
    #   A column of a data set.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] direction
    #   The sort direction.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_function
    #   The aggregation function that is defined in the column sort.
    #   @return [Types::AggregationFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnSort AWS API Documentation
    #
    class ColumnSort < Struct.new(
      :sort_by,
      :direction,
      :aggregation_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag for a column in a ` TagColumnOperation ` structure. This is a
    # variant type structure. For this structure to be valid, only one of
    # the attributes can be non-null.
    #
    # @!attribute [rw] column_geographic_role
    #   A geospatial role for a column.
    #   @return [String]
    #
    # @!attribute [rw] column_description
    #   A description for a column.
    #   @return [Types::ColumnDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnTag AWS API Documentation
    #
    class ColumnTag < Struct.new(
      :column_geographic_role,
      :column_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tooltip item for the columns that are not part of a field well.
    #
    # @!attribute [rw] column
    #   The target column of the tooltip item.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] label
    #   The label of the tooltip item.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the tooltip item.
    #   @return [String]
    #
    # @!attribute [rw] aggregation
    #   The aggregation function of the column tooltip item.
    #   @return [Types::AggregationFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ColumnTooltipItem AWS API Documentation
    #
    class ColumnTooltipItem < Struct.new(
      :column,
      :label,
      :visibility,
      :aggregation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field wells of a combo chart.
    #
    # @!attribute [rw] category
    #   The aggregated category field wells of a combo chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] bar_values
    #   The aggregated `BarValues` field well of a combo chart.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] colors
    #   The aggregated colors field well of a combo chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] line_values
    #   The aggregated `LineValues` field well of a combo chart.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComboChartAggregatedFieldWells AWS API Documentation
    #
    class ComboChartAggregatedFieldWells < Struct.new(
      :category,
      :bar_values,
      :colors,
      :line_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `ComboChartVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::ComboChartFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a `ComboChartVisual`.
    #   @return [Types::ComboChartSortConfiguration]
    #
    # @!attribute [rw] bars_arrangement
    #   Determines the bar arrangement in a combo chart. The following are
    #   valid values in this structure:
    #
    #   * `CLUSTERED`: For clustered bar combo charts.
    #
    #   * `STACKED`: For stacked bar combo charts.
    #
    #   * `STACKED_PERCENT`: Do not use. If you use this value, the
    #     operation returns a validation error.
    #   @return [String]
    #
    # @!attribute [rw] category_axis
    #   The category axis of a combo chart.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] category_label_options
    #   The label options (label text, label visibility, and sort icon
    #   visibility) of a combo chart category (group/color) field well.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] primary_y_axis_display_options
    #   The label display options (grid line, range, scale, and axis step)
    #   of a combo chart's primary y-axis (bar) field well.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] primary_y_axis_label_options
    #   The label options (label text, label visibility, and sort icon
    #   visibility) of a combo chart's primary y-axis (bar) field well.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] secondary_y_axis_display_options
    #   The label display options (grid line, range, scale, axis step) of a
    #   combo chart's secondary y-axis (line) field well.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] secondary_y_axis_label_options
    #   The label options (label text, label visibility, and sort icon
    #   visibility) of a combo chart's secondary y-axis(line) field well.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] color_label_options
    #   The label options (label text, label visibility, and sort icon
    #   visibility) of a combo chart's color field well.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] bar_data_labels
    #   The options that determine if visual data labels are displayed.
    #
    #   The data label options for a bar in a combo chart.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] line_data_labels
    #   The options that determine if visual data labels are displayed.
    #
    #   The data label options for a line in a combo chart.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The legend display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] reference_lines
    #   The reference line setup of the visual.
    #   @return [Array<Types::ReferenceLine>]
    #
    # @!attribute [rw] visual_palette
    #   The palette (chart color) display setup of the visual.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComboChartConfiguration AWS API Documentation
    #
    class ComboChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :bars_arrangement,
      :category_axis,
      :category_label_options,
      :primary_y_axis_display_options,
      :primary_y_axis_label_options,
      :secondary_y_axis_display_options,
      :secondary_y_axis_label_options,
      :color_label_options,
      :legend,
      :bar_data_labels,
      :line_data_labels,
      :tooltip,
      :reference_lines,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of the visual.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] combo_chart_aggregated_field_wells
    #   The aggregated field wells of a combo chart. Combo charts only have
    #   aggregated field wells. Columns in a combo chart are aggregated by
    #   category.
    #   @return [Types::ComboChartAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComboChartFieldWells AWS API Documentation
    #
    class ComboChartFieldWells < Struct.new(
      :combo_chart_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a `ComboChartVisual`.
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of the category field well in a combo chart.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] category_items_limit
    #   The item limit configuration for the category field well of a combo
    #   chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] color_sort
    #   The sort configuration of the color field well in a combo chart.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] color_items_limit
    #   The item limit configuration of the color field well in a combo
    #   chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComboChartSortConfiguration AWS API Documentation
    #
    class ComboChartSortConfiguration < Struct.new(
      :category_sort,
      :category_items_limit,
      :color_sort,
      :color_items_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A combo chart.
    #
    # The `ComboChartVisual` includes stacked bar combo charts and clustered
    # bar combo charts
    #
    # For more information, see [Using combo charts][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/combo-charts.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::ComboChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComboChartVisual AWS API Documentation
    #
    class ComboChartVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a comparative order.
    #
    # @!attribute [rw] use_ordering
    #   The ordering type for a column. Valid values for this structure are
    #   `GREATER_IS_BETTER`, `LESSER_IS_BETTER` and `SPECIFIED`.
    #   @return [String]
    #
    # @!attribute [rw] specifed_order
    #   The list of columns to be used in the ordering.
    #   @return [Array<String>]
    #
    # @!attribute [rw] treat_undefined_specified_values
    #   The treat of undefined specified values. Valid values for this
    #   structure are `LEAST` and `MOST`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComparativeOrder AWS API Documentation
    #
    class ComparativeOrder < Struct.new(
      :use_ordering,
      :specifed_order,
      :treat_undefined_specified_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The comparison display configuration of a KPI or gauge chart.
    #
    # @!attribute [rw] comparison_method
    #   The method of the comparison. Choose from the following options:
    #
    #   * `DIFFERENCE`
    #
    #   * `PERCENT_DIFFERENCE`
    #
    #   * `PERCENT`
    #   @return [String]
    #
    # @!attribute [rw] comparison_format
    #   The format of the comparison.
    #   @return [Types::ComparisonFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComparisonConfiguration AWS API Documentation
    #
    class ComparisonConfiguration < Struct.new(
      :comparison_method,
      :comparison_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The format of the comparison.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] number_display_format_configuration
    #   The number display format.
    #   @return [Types::NumberDisplayFormatConfiguration]
    #
    # @!attribute [rw] percentage_display_format_configuration
    #   The percentage display format.
    #   @return [Types::PercentageDisplayFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ComparisonFormatConfiguration AWS API Documentation
    #
    class ComparisonFormatConfiguration < Struct.new(
      :number_display_format_configuration,
      :percentage_display_format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The computation union that is used in an insight visual.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] top_bottom_ranked
    #   The top ranked and bottom ranked computation configuration.
    #   @return [Types::TopBottomRankedComputation]
    #
    # @!attribute [rw] top_bottom_movers
    #   The top movers and bottom movers computation configuration.
    #   @return [Types::TopBottomMoversComputation]
    #
    # @!attribute [rw] total_aggregation
    #   The total aggregation computation configuration.
    #   @return [Types::TotalAggregationComputation]
    #
    # @!attribute [rw] maximum_minimum
    #   The maximum and minimum computation configuration.
    #   @return [Types::MaximumMinimumComputation]
    #
    # @!attribute [rw] metric_comparison
    #   The metric comparison computation configuration.
    #   @return [Types::MetricComparisonComputation]
    #
    # @!attribute [rw] period_over_period
    #   The period over period computation configuration.
    #   @return [Types::PeriodOverPeriodComputation]
    #
    # @!attribute [rw] period_to_date
    #   The period to `DataSetIdentifier` computation configuration.
    #   @return [Types::PeriodToDateComputation]
    #
    # @!attribute [rw] growth_rate
    #   The growth rate computation configuration.
    #   @return [Types::GrowthRateComputation]
    #
    # @!attribute [rw] unique_values
    #   The unique values computation configuration.
    #   @return [Types::UniqueValuesComputation]
    #
    # @!attribute [rw] forecast
    #   The forecast computation configuration.
    #   @return [Types::ForecastComputation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Computation AWS API Documentation
    #
    class Computation < Struct.new(
      :top_bottom_ranked,
      :top_bottom_movers,
      :total_aggregation,
      :maximum_minimum,
      :metric_comparison,
      :period_over_period,
      :period_to_date,
      :growth_rate,
      :unique_values,
      :forecast)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource is already in a state that indicates an operation is
    # happening that must complete before a new update can be applied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConcurrentUpdatingException AWS API Documentation
    #
    class ConcurrentUpdatingException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The formatting configuration for the color.
    #
    # @!attribute [rw] solid
    #   Formatting configuration for solid color.
    #   @return [Types::ConditionalFormattingSolidColor]
    #
    # @!attribute [rw] gradient
    #   Formatting configuration for gradient color.
    #   @return [Types::ConditionalFormattingGradientColor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingColor AWS API Documentation
    #
    class ConditionalFormattingColor < Struct.new(
      :solid,
      :gradient)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the custom condition for an icon set.
    #
    # @!attribute [rw] expression
    #   The expression that determines the condition of the icon set.
    #   @return [String]
    #
    # @!attribute [rw] icon_options
    #   Custom icon options for an icon set.
    #   @return [Types::ConditionalFormattingCustomIconOptions]
    #
    # @!attribute [rw] color
    #   Determines the color of the icon.
    #   @return [String]
    #
    # @!attribute [rw] display_configuration
    #   Determines the icon display configuration.
    #   @return [Types::ConditionalFormattingIconDisplayConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingCustomIconCondition AWS API Documentation
    #
    class ConditionalFormattingCustomIconCondition < Struct.new(
      :expression,
      :icon_options,
      :color,
      :display_configuration)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Custom icon options for an icon set.
    #
    # @!attribute [rw] icon
    #   Determines the type of icon.
    #   @return [String]
    #
    # @!attribute [rw] unicode_icon
    #   Determines the Unicode icon type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingCustomIconOptions AWS API Documentation
    #
    class ConditionalFormattingCustomIconOptions < Struct.new(
      :icon,
      :unicode_icon)
      SENSITIVE = []
      include Aws::Structure
    end

    # Formatting configuration for gradient color.
    #
    # @!attribute [rw] expression
    #   The expression that determines the formatting configuration for
    #   gradient color.
    #   @return [String]
    #
    # @!attribute [rw] color
    #   Determines the color.
    #   @return [Types::GradientColor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingGradientColor AWS API Documentation
    #
    class ConditionalFormattingGradientColor < Struct.new(
      :expression,
      :color)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # The formatting configuration for the icon.
    #
    # @!attribute [rw] icon_set
    #   Formatting configuration for icon set.
    #   @return [Types::ConditionalFormattingIconSet]
    #
    # @!attribute [rw] custom_condition
    #   Determines the custom condition for an icon set.
    #   @return [Types::ConditionalFormattingCustomIconCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingIcon AWS API Documentation
    #
    class ConditionalFormattingIcon < Struct.new(
      :icon_set,
      :custom_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the icon display configuration.
    #
    # @!attribute [rw] icon_display_option
    #   Determines the icon display configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingIconDisplayConfiguration AWS API Documentation
    #
    class ConditionalFormattingIconDisplayConfiguration < Struct.new(
      :icon_display_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # Formatting configuration for icon set.
    #
    # @!attribute [rw] expression
    #   The expression that determines the formatting configuration for the
    #   icon set.
    #   @return [String]
    #
    # @!attribute [rw] icon_set_type
    #   Determines the icon set type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingIconSet AWS API Documentation
    #
    class ConditionalFormattingIconSet < Struct.new(
      :expression,
      :icon_set_type)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Formatting configuration for solid color.
    #
    # @!attribute [rw] expression
    #   The expression that determines the formatting configuration for
    #   solid color.
    #   @return [String]
    #
    # @!attribute [rw] color
    #   Determines the color.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConditionalFormattingSolidColor AWS API Documentation
    #
    class ConditionalFormattingSolidColor < Struct.new(
      :expression,
      :color)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contribution analysis visual display for a line, pie, or bar
    # chart.
    #
    # @!attribute [rw] measure_field_id
    #   The measure field that is used in the contribution analysis.
    #   @return [String]
    #
    # @!attribute [rw] contributor_dimensions
    #   The dimensions columns that are used in the contribution analysis,
    #   usually a list of `ColumnIdentifiers`.
    #   @return [Array<Types::ColumnIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ContributionAnalysisDefault AWS API Documentation
    #
    class ContributionAnalysisDefault < Struct.new(
      :measure_field_id,
      :contributor_dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to
    #   customize Amazon QuickSight for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The Amazon QuickSight namespace that you want to add customizations
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The Amazon QuickSight customizations you're adding in the current
    #   Amazon Web Services Region. You can add these to an Amazon Web
    #   Services account and a QuickSight namespace.
    #
    #   For example, you can add a default theme by setting
    #   `AccountCustomization` to the midnight theme:
    #   `"AccountCustomization": \{ "DefaultTheme":
    #   "arn:aws:quicksight::aws:theme/MIDNIGHT" \}`. Or, you can add a
    #   custom theme by specifying `"AccountCustomization": \{
    #   "DefaultTheme":
    #   "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
    #   \}`.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] tags
    #   A list of the tags that you want to attach to this resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountCustomizationRequest AWS API Documentation
    #
    class CreateAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :account_customization,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the customization that you
    #   created for this Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to
    #   customize Amazon QuickSight for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the customization you're creating.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The Amazon QuickSight customizations you're adding in the current
    #   Amazon Web Services Region.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountCustomizationResponse AWS API Documentation
    #
    class CreateAccountCustomizationResponse < Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] edition
    #   The edition of Amazon QuickSight that you want your account to have.
    #   Currently, you can choose from `ENTERPRISE` or `ENTERPRISE_AND_Q`.
    #
    #   If you choose `ENTERPRISE_AND_Q`, the following parameters are
    #   required:
    #
    #   * `FirstName`
    #
    #   * `LastName`
    #
    #   * `EmailAddress`
    #
    #   * `ContactNumber`
    #   @return [String]
    #
    # @!attribute [rw] authentication_method
    #   The method that you want to use to authenticate your Amazon
    #   QuickSight account. Currently, the valid values for this parameter
    #   are `IAM_AND_QUICKSIGHT`, `IAM_ONLY`, and `ACTIVE_DIRECTORY`.
    #
    #   If you choose `ACTIVE_DIRECTORY`, provide an `ActiveDirectoryName`
    #   and an `AdminGroup` associated with your Active Directory.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID of the account that you're using
    #   to create your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The name of your Amazon QuickSight account. This name is unique over
    #   all of Amazon Web Services, and it appears only when users sign in.
    #   You can't change `AccountName` value after the Amazon QuickSight
    #   account is created.
    #   @return [String]
    #
    # @!attribute [rw] notification_email
    #   The email address that you want Amazon QuickSight to send
    #   notifications to regarding your Amazon QuickSight account or Amazon
    #   QuickSight subscription.
    #   @return [String]
    #
    # @!attribute [rw] active_directory_name
    #   The name of your Active Directory. This field is required if
    #   `ACTIVE_DIRECTORY` is the selected authentication method of the new
    #   Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] realm
    #   The realm of the Active Directory that is associated with your
    #   Amazon QuickSight account. This field is required if
    #   `ACTIVE_DIRECTORY` is the selected authentication method of the new
    #   Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] directory_id
    #   The ID of the Active Directory that is associated with your Amazon
    #   QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] admin_group
    #   The admin group associated with your Active Directory. This field is
    #   required if `ACTIVE_DIRECTORY` is the selected authentication method
    #   of the new Amazon QuickSight account. For more information about
    #   using Active Directory in Amazon QuickSight, see [Using Active
    #   Directory with Amazon QuickSight Enterprise Edition][1] in the
    #   Amazon QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] author_group
    #   The author group associated with your Active Directory. For more
    #   information about using Active Directory in Amazon QuickSight, see
    #   [Using Active Directory with Amazon QuickSight Enterprise
    #   Edition][1] in the Amazon QuickSight User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] reader_group
    #   The reader group associated with your Active Direcrtory. For more
    #   information about using Active Directory in Amazon QuickSight, see
    #   [Using Active Directory with Amazon QuickSight Enterprise
    #   Edition][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/aws-directory-service.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_name
    #   The first name of the author of the Amazon QuickSight account to use
    #   for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the author of the Amazon QuickSight account to use
    #   for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the author of the Amazon QuickSight account to
    #   use for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] contact_number
    #   A 10-digit phone number for the author of the Amazon QuickSight
    #   account to use for future communications. This field is required if
    #   `ENTERPPRISE_AND_Q` is the selected edition of the new Amazon
    #   QuickSight account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountSubscriptionRequest AWS API Documentation
    #
    class CreateAccountSubscriptionRequest < Struct.new(
      :edition,
      :authentication_method,
      :aws_account_id,
      :account_name,
      :notification_email,
      :active_directory_name,
      :realm,
      :directory_id,
      :admin_group,
      :author_group,
      :reader_group,
      :first_name,
      :last_name,
      :email_address,
      :contact_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signup_response
    #   A `SignupResponse` object that returns information about a newly
    #   created Amazon QuickSight account.
    #   @return [Types::SignupResponse]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAccountSubscriptionResponse AWS API Documentation
    #
    class CreateAccountSubscriptionResponse < Struct.new(
      :signup_response,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account where you are creating an
    #   analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID for the analysis that you're creating. This ID displays in
    #   the URL of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the analysis that you're creating. This name
    #   displays for the analysis in the Amazon QuickSight console.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might
    #   accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis. You can use the `Permissions` structure
    #   to grant permissions by providing a list of Identity and Access
    #   Management (IAM) action information for each principal listed by
    #   Amazon Resource Name (ARN).
    #
    #   To specify no permissions, omit `Permissions`.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] source_entity
    #   A source entity to use for the analysis that you're creating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #   @return [Types::AnalysisSourceEntity]
    #
    # @!attribute [rw] theme_arn
    #   The ARN for the theme to apply to the analysis that you're
    #   creating. To see the theme in the Amazon QuickSight console, make
    #   sure that you have access to it.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the analysis.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] definition
    #   The definition of an analysis.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #   @return [Types::AnalysisDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAnalysisRequest AWS API Documentation
    #
    class CreateAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :name,
      :parameters,
      :permissions,
      :source_entity,
      :theme_arn,
      :tags,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN for the analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of the creation of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateAnalysisResponse AWS API Documentation
    #
    class CreateAnalysisResponse < Struct.new(
      :arn,
      :analysis_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that creates calculated columns. Columns created
    # in one such operation form a lexical closure.
    #
    # @!attribute [rw] columns
    #   Calculated columns to create.
    #   @return [Array<Types::CalculatedColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateColumnsOperation AWS API Documentation
    #
    class CreateColumnsOperation < Struct.new(
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account where you want to create
    #   the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the creation of the dashboard, which you want to
    #   use to override the default settings. A dashboard can have any type
    #   of parameters, and some parameters might accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] permissions
    #   A structure that contains the permissions of the dashboard. You can
    #   use this structure for granting permissions by providing a list of
    #   IAM action information for each principal ARN.
    #
    #   To specify no permissions, omit the permissions list.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you create the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only create a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to create a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the ` CreateTemplate ` API operation. For `SourceTemplate`, specify
    #   the Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate`ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list
    #   the replacement datasets for the placeholders listed in the
    #   original. The schema in each dataset must match its placeholder.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #   @return [Types::DashboardSourceEntity]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dashboard.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] version_description
    #   A description for the first version of the dashboard being created.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can
    #     be either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     Amazon QuickSight disables the left filter pane on the published
    #     dashboard, which can be used for ad hoc (one-time) filtering. This
    #     option is `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data
    #     to .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility
    #     state can be either `COLLAPSED` or `EXPANDED`. This option is
    #     `COLLAPSED` by default.
    #   @return [Types::DashboardPublishOptions]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that is used in the source entity. The theme ARN must exist in
    #   the same Amazon Web Services account where you create the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of a dashboard.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #   @return [Types::DashboardVersionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDashboardRequest AWS API Documentation
    #
    class CreateDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :name,
      :parameters,
      :permissions,
      :source_entity,
      :tags,
      :version_description,
      :dashboard_publish_options,
      :theme_arn,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN of the dashboard, including the version number of the first
    #   version that is created.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of the dashboard creation request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDashboardResponse AWS API Documentation
    #
    class CreateDashboardResponse < Struct.new(
      :arn,
      :version_arn,
      :dashboard_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   An ID for the dataset that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] physical_table_map
    #   Declares the physical tables that are available in the underlying
    #   data sources.
    #   @return [Hash<String,Types::PhysicalTable>]
    #
    # @!attribute [rw] logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #   @return [Hash<String,Types::LogicalTable>]
    #
    # @!attribute [rw] import_mode
    #   Indicates whether you want to import the data into SPICE.
    #   @return [String]
    #
    # @!attribute [rw] column_groups
    #   Groupings of columns that work together in certain Amazon QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #   @return [Array<Types::ColumnGroup>]
    #
    # @!attribute [rw] field_folders
    #   The folder that contains fields and nested subfolders for your
    #   dataset.
    #   @return [Hash<String,Types::FieldFolder>]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the data that you want to
    #   create.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @!attribute [rw] row_level_permission_tag_configuration
    #   The configuration of tags on a dataset to set row-level security.
    #   Row-level security tags are currently supported for anonymous
    #   embedding only.
    #   @return [Types::RowLevelPermissionTagConfiguration]
    #
    # @!attribute [rw] column_level_permission_rules
    #   A set of one or more definitions of a ` ColumnLevelPermissionRule `.
    #   @return [Array<Types::ColumnLevelPermissionRule>]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the dataset.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] data_set_usage_configuration
    #   The usage configuration to apply to child datasets that reference
    #   this dataset as a source.
    #   @return [Types::DataSetUsageConfiguration]
    #
    # @!attribute [rw] dataset_parameters
    #   The parameter declarations of the dataset.
    #   @return [Array<Types::DatasetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSetRequest AWS API Documentation
    #
    class CreateDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :name,
      :physical_table_map,
      :logical_table_map,
      :import_mode,
      :column_groups,
      :field_folders,
      :permissions,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration,
      :column_level_permission_rules,
      :tags,
      :data_set_usage_configuration,
      :dataset_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_arn
    #   The ARN for the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   The ID of the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSetResponse AWS API Documentation
    #
    class CreateDataSetResponse < Struct.new(
      :arn,
      :data_set_id,
      :ingestion_arn,
      :ingestion_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   An ID for the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source. To return a list of all data sources,
    #   use `ListDataSources`.
    #
    #   Use `AMAZON_ELASTICSEARCH` for Amazon OpenSearch Service.
    #   @return [String]
    #
    # @!attribute [rw] data_source_parameters
    #   The parameters that Amazon QuickSight uses to connect to your
    #   underlying source.
    #   @return [Types::DataSourceParameters]
    #
    # @!attribute [rw] credentials
    #   The credentials Amazon QuickSight that uses to connect to your
    #   underlying source. Currently, only credentials based on user name
    #   and password are supported.
    #   @return [Types::DataSourceCredentials]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the data source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] vpc_connection_properties
    #   Use this parameter only when you want Amazon QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #   @return [Types::VpcConnectionProperties]
    #
    # @!attribute [rw] ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when Amazon
    #   QuickSight connects to your underlying source.
    #   @return [Types::SslProperties]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the data source.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSourceRequest AWS API Documentation
    #
    class CreateDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id,
      :name,
      :type,
      :data_source_parameters,
      :credentials,
      :permissions,
      :vpc_connection_properties,
      :ssl_properties,
      :tags)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :arn,
      :data_source_id,
      :creation_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The ID of the asset (the dashboard, analysis, or dataset).
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   The type of the member, including `DASHBOARD`, `ANALYSIS`, and
    #   `DATASET`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolderMembershipRequest AWS API Documentation
    #
    class CreateFolderMembershipRequest < Struct.new(
      :aws_account_id,
      :folder_id,
      :member_id,
      :member_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] folder_member
    #   Information about the member in the folder.
    #   @return [Types::FolderMember]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolderMembershipResponse AWS API Documentation
    #
    class CreateFolderMembershipResponse < Struct.new(
      :status,
      :folder_member,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account where you want to create
    #   the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_type
    #   The type of folder. By default, `folderType` is `SHARED`.
    #   @return [String]
    #
    # @!attribute [rw] parent_folder_arn
    #   The Amazon Resource Name (ARN) for the parent folder.
    #
    #   `ParentFolderArn` can be null. An empty `parentFolderArn` creates a
    #   root-level folder.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A structure that describes the principals and the resource-level
    #   permissions of a folder.
    #
    #   To specify no permissions, omit `Permissions`.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] tags
    #   Tags for the folder.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolderRequest AWS API Documentation
    #
    class CreateFolderRequest < Struct.new(
      :aws_account_id,
      :folder_id,
      :name,
      :folder_type,
      :parent_folder_arn,
      :permissions,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the newly created folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The folder ID for the newly created folder.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The request ID for the newly created folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateFolderResponse AWS API Documentation
    #
    class CreateFolderResponse < Struct.new(
      :status,
      :arn,
      :folder_id,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_name
    #   The name of the user that you want to add to the group membership.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to add the user to.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want the user to be a part of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembershipRequest AWS API Documentation
    #
    class CreateGroupMembershipRequest < Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_member
    #   The group member.
    #   @return [Types::GroupMember]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupMembershipResponse AWS API Documentation
    #
    class CreateGroupMembershipResponse < Struct.new(
      :group_member,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request object for this operation.
    #
    # @!attribute [rw] group_name
    #   A name for the group that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the group that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want the group to be a part of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response object for this operation.
    #
    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account where you want to assign
    #   an IAM policy to Amazon QuickSight users or groups.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment, also called a rule. The name must be
    #   unique within the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy to apply to the Amazon QuickSight users
    #   and groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The Amazon QuickSight users, groups, or both that you want to assign
    #   the policy to.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] namespace
    #   The namespace that contains the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIAMPolicyAssignmentRequest AWS API Documentation
    #
    class CreateIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :assignment_status,
      :policy_arn,
      :identities,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_name
    #   The name of the assignment. The name must be unique within the
    #   Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   The ID for the assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy that is applied to the Amazon QuickSight
    #   users and groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The Amazon QuickSight users, groups, or both that the IAM policy is
    #   assigned to.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIAMPolicyAssignmentResponse AWS API Documentation
    #
    class CreateIAMPolicyAssignmentResponse < Struct.new(
      :assignment_name,
      :assignment_id,
      :assignment_status,
      :policy_arn,
      :identities,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_type
    #   The type of ingestion that you want to create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIngestionRequest AWS API Documentation
    #
    class CreateIngestionRequest < Struct.new(
      :data_set_id,
      :ingestion_id,
      :aws_account_id,
      :ingestion_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the data ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_status
    #   The ingestion status.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateIngestionResponse AWS API Documentation
    #
    class CreateIngestionResponse < Struct.new(
      :arn,
      :ingestion_id,
      :ingestion_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to create
    #   the Amazon QuickSight namespace in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name that you want to use to describe the new namespace.
    #   @return [String]
    #
    # @!attribute [rw] identity_store
    #   Specifies the type of your user identity directory. Currently, this
    #   supports users with an identity type of `QUICKSIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you want to associate with the namespace that you're
    #   creating.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateNamespaceRequest AWS API Documentation
    #
    class CreateNamespaceRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :identity_store,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the Amazon QuickSight namespace you created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new namespace that you created.
    #   @return [String]
    #
    # @!attribute [rw] capacity_region
    #   The Amazon Web Services Region; that you want to use for the free
    #   SPICE capacity for the new namespace. This is set to the region that
    #   you run CreateNamespace in.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of the creation of the namespace. This is an asynchronous
    #   process. A status of `CREATED` means that your namespace is ready to
    #   use. If an error occurs, it indicates if the process is `retryable`
    #   or `non-retryable`. In the case of a non-retryable error, refer to
    #   the error message for follow-up tasks.
    #   @return [String]
    #
    # @!attribute [rw] identity_store
    #   Specifies the type of your user identity directory. Currently, this
    #   supports users with an identity type of `QUICKSIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateNamespaceResponse AWS API Documentation
    #
    class CreateNamespaceResponse < Struct.new(
      :arn,
      :name,
      :capacity_region,
      :creation_status,
      :identity_store,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The refresh schedule.
    #   @return [Types::RefreshSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateRefreshScheduleRequest AWS API Documentation
    #
    class CreateRefreshScheduleRequest < Struct.new(
      :data_set_id,
      :aws_account_id,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] schedule_id
    #   The ID of the refresh schedule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the refresh schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateRefreshScheduleResponse AWS API Documentation
    #
    class CreateRefreshScheduleResponse < Struct.new(
      :status,
      :request_id,
      :schedule_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you creating an alias for.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name that you want to give to the template alias that you're
    #   creating. Don't start the alias name with the `$` character. Alias
    #   names that start with `$` are reserved by Amazon QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] template_version_number
    #   The version number of the template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateAliasRequest AWS API Documentation
    #
    class CreateTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      :template_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias
    #   Information about the template alias.
    #   @return [Types::TemplateAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateAliasResponse AWS API Documentation
    #
    class CreateTemplateAliasResponse < Struct.new(
      :template_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in. You
    #   use the ID for the Amazon Web Services account that contains your
    #   Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template that you want to create. This template is
    #   unique per Amazon Web Services Region; in each Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the template.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions to be set on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you create the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name
    #   (ARN). For `SourceTemplate`, specify the ARN of the source template.
    #   For `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the
    #   placeholders listed in the original. The schema in each dataset must
    #   match its placeholder.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #   @return [Types::TemplateSourceEntity]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] version_description
    #   A description of the current template version being created. This
    #   API operation creates the first version of the template. Every time
    #   `UpdateTemplate` is called, a new version is created. Each version
    #   of the template maintains a description of the version in the
    #   `VersionDescription` field.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of a template.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #
    #   Either a `SourceEntity` or a `Definition` must be provided in order
    #   for the request to be valid.
    #   @return [Types::TemplateVersionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateRequest AWS API Documentation
    #
    class CreateTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :name,
      :permissions,
      :source_entity,
      :tags,
      :version_description,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN for the template.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN for the template, including the version information of the
    #   first version.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The template creation status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTemplateResponse AWS API Documentation
    #
    class CreateTemplateResponse < Struct.new(
      :arn,
      :version_arn,
      :template_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   for the new theme alias.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name that you want to give to the theme alias that you are
    #   creating. The alias name can't begin with a `$`. Alias names that
    #   start with `$` are reserved by Amazon QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] theme_version_number
    #   The version number of the theme.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeAliasRequest AWS API Documentation
    #
    class CreateThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      :theme_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias
    #   Information about the theme alias.
    #   @return [Types::ThemeAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeAliasResponse AWS API Documentation
    #
    class CreateThemeAliasResponse < Struct.new(
      :theme_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account where you want to store
    #   the new theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme that you want to create. The theme ID is unique
    #   per Amazon Web Services Region in each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the theme.
    #   @return [String]
    #
    # @!attribute [rw] base_theme_id
    #   The ID of the theme that a custom theme will inherit from. All
    #   themes inherit from one of the starting themes defined by Amazon
    #   QuickSight. For a list of the starting themes, use `ListThemes` or
    #   choose **Themes** from within an analysis.
    #   @return [String]
    #
    # @!attribute [rw] version_description
    #   A description of the first version of the theme that you're
    #   creating. Every time `UpdateTheme` is called, a new version is
    #   created. Each version of the theme has a description of the version
    #   in the `VersionDescription` field.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The theme configuration, which contains the theme display
    #   properties.
    #   @return [Types::ThemeConfiguration]
    #
    # @!attribute [rw] permissions
    #   A valid grouping of resource permissions to apply to the new theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the resource tag or tags that you
    #   want to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeRequest AWS API Documentation
    #
    class CreateThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :name,
      :base_theme_id,
      :version_description,
      :configuration,
      :permissions,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the theme.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The Amazon Resource Name (ARN) for the new theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID of the theme.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The theme creation status.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateThemeResponse AWS API Documentation
    #
    class CreateThemeResponse < Struct.new(
      :arn,
      :version_arn,
      :theme_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   you're creating a refresh schedule for.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] refresh_schedule
    #   The definition of a refresh schedule.
    #   @return [Types::TopicRefreshSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopicRefreshScheduleRequest AWS API Documentation
    #
    class CreateTopicRefreshScheduleRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :dataset_arn,
      :dataset_name,
      :refresh_schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopicRefreshScheduleResponse AWS API Documentation
    #
    class CreateTopicRefreshScheduleResponse < Struct.new(
      :topic_id,
      :topic_arn,
      :dataset_arn,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that you want to create a
    #   topic in.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID for the topic that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic
    #   The definition of a topic to create.
    #   @return [Types::TopicDetails]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   that are assigned to the dataset.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopicRequest AWS API Documentation
    #
    class CreateTopicRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :topic,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID for the topic that you want to create. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] refresh_arn
    #   The Amazon Resource Name (ARN) of the topic refresh.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateTopicResponse AWS API Documentation
    #
    class CreateTopicResponse < Struct.new(
      :arn,
      :topic_id,
      :refresh_arn,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID of the account where you want to
    #   create a new VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs for the VPC connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The IAM role to associate with the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs for the resource tag or tags assigned
    #   to the VPC connection.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateVPCConnectionRequest AWS API Documentation
    #
    class CreateVPCConnectionRequest < Struct.new(
      :aws_account_id,
      :vpc_connection_id,
      :name,
      :subnet_ids,
      :security_group_ids,
      :dns_resolvers,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID for the VPC connection that you're creating. This ID is
    #   unique per Amazon Web Services Region for each Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The status of the creation of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] availability_status
    #   The availability status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CreateVPCConnectionResponse AWS API Documentation
    #
    class CreateVPCConnectionResponse < Struct.new(
      :arn,
      :vpc_connection_id,
      :creation_status,
      :availability_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The combination of user name and password that are used as
    # credentials.
    #
    # @!attribute [rw] username
    #   User name.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Password.
    #   @return [String]
    #
    # @!attribute [rw] alternate_data_source_parameters
    #   A set of alternate data source parameters that you want to share for
    #   these credentials. The credentials are applied in tandem with the
    #   data source parameters when you copy a data source by using a create
    #   or update request. The API operation compares the
    #   `DataSourceParameters` structure that's in the request with the
    #   structures in the `AlternateDataSourceParameters` allow list. If the
    #   structures are an exact match, the request is allowed to use the new
    #   data source with the existing credentials. If the
    #   `AlternateDataSourceParameters` list is null, the
    #   `DataSourceParameters` originally used with these `Credentials` is
    #   automatically allowed.
    #   @return [Array<Types::DataSourceParameters>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CredentialPair AWS API Documentation
    #
    class CredentialPair < Struct.new(
      :username,
      :password,
      :alternate_data_source_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the currency display format configuration.
    #
    # @!attribute [rw] prefix
    #   Determines the prefix value of the currency format.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   Determines the suffix value of the currency format.
    #   @return [String]
    #
    # @!attribute [rw] separator_configuration
    #   The options that determine the numeric separator configuration.
    #   @return [Types::NumericSeparatorConfiguration]
    #
    # @!attribute [rw] symbol
    #   Determines the symbol for the currency format.
    #   @return [String]
    #
    # @!attribute [rw] decimal_places_configuration
    #   The option that determines the decimal places configuration.
    #   @return [Types::DecimalPlacesConfiguration]
    #
    # @!attribute [rw] number_scale
    #   Determines the number scale value for the currency format.
    #   @return [String]
    #
    # @!attribute [rw] negative_value_configuration
    #   The options that determine the negative value configuration.
    #   @return [Types::NegativeValueConfiguration]
    #
    # @!attribute [rw] null_value_format_configuration
    #   The options that determine the null value format configuration.
    #   @return [Types::NullValueFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CurrencyDisplayFormatConfiguration AWS API Documentation
    #
    class CurrencyDisplayFormatConfiguration < Struct.new(
      :prefix,
      :suffix,
      :separator_configuration,
      :symbol,
      :decimal_places_configuration,
      :number_scale,
      :negative_value_configuration,
      :null_value_format_configuration)
      SENSITIVE = [:prefix, :suffix]
      include Aws::Structure
    end

    # The filter operation that filters data included in a visual or in an
    # entire sheet.
    #
    # @!attribute [rw] selected_fields_configuration
    #   The configuration that chooses the fields to be filtered.
    #   @return [Types::FilterOperationSelectedFieldsConfiguration]
    #
    # @!attribute [rw] target_visuals_configuration
    #   The configuration that chooses the target visuals to be filtered.
    #   @return [Types::FilterOperationTargetVisualsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomActionFilterOperation AWS API Documentation
    #
    class CustomActionFilterOperation < Struct.new(
      :selected_fields_configuration,
      :target_visuals_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The navigation operation that navigates between different sheets in
    # the same analysis.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] local_navigation_configuration
    #   The configuration that chooses the navigation target.
    #   @return [Types::LocalNavigationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomActionNavigationOperation AWS API Documentation
    #
    class CustomActionNavigationOperation < Struct.new(
      :local_navigation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The set parameter operation that sets parameters in custom action.
    #
    # @!attribute [rw] parameter_value_configurations
    #   The parameter that determines the value configuration.
    #   @return [Array<Types::SetParameterValueConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomActionSetParametersOperation AWS API Documentation
    #
    class CustomActionSetParametersOperation < Struct.new(
      :parameter_value_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The URL operation that opens a link to another webpage.
    #
    # @!attribute [rw] url_template
    #   THe URL link of the `CustomActionURLOperation`.
    #   @return [String]
    #
    # @!attribute [rw] url_target
    #   The target of the `CustomActionURLOperation`.
    #
    #   Valid values are defined as follows:
    #
    #   * `NEW_TAB`: Opens the target URL in a new browser tab.
    #
    #   * `NEW_WINDOW`: Opens the target URL in a new browser window.
    #
    #   * `SAME_TAB`: Opens the target URL in the same browser tab.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomActionURLOperation AWS API Documentation
    #
    class CustomActionURLOperation < Struct.new(
      :url_template,
      :url_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `CustomContentVisual`.
    #
    # @!attribute [rw] content_url
    #   The input URL that links to the custom content that you want in the
    #   custom visual.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the custom content visual. You can use this to
    #   have the visual render as an image.
    #   @return [String]
    #
    # @!attribute [rw] image_scaling
    #   The sizing options for the size of the custom content visual. This
    #   structure is required when the `ContentType` of the visual is
    #   `'IMAGE'`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomContentConfiguration AWS API Documentation
    #
    class CustomContentConfiguration < Struct.new(
      :content_url,
      :content_type,
      :image_scaling)
      SENSITIVE = []
      include Aws::Structure
    end

    # A visual that contains custom content.
    #
    # For more information, see [Using custom visual content][1] in the
    # *Amazon QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/custom-visual-content.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a `CustomContentVisual`.
    #   @return [Types::CustomContentConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] data_set_identifier
    #   The dataset that is used to create the custom content visual. You
    #   can't create a visual without a dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomContentVisual AWS API Documentation
    #
    class CustomContentVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :data_set_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom filter that filters based on a single value. This filter can
    # be partially matched.
    #
    # @!attribute [rw] match_operator
    #   The match operator that is used to determine if a filter should be
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] category_value
    #   The category value for the filter.
    #
    #   This field is mutually exclusive to `ParameterName`.
    #   @return [String]
    #
    # @!attribute [rw] select_all_options
    #   Select all of the values. Null is not the assigned value of select
    #   all.
    #
    #   * `FILTER_ALL_VALUES`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   The parameter whose value should be used for the filter value.
    #
    #   This field is mutually exclusive to `CategoryValue`.
    #   @return [String]
    #
    # @!attribute [rw] null_option
    #   This option determines how null values should be treated when
    #   filtering data.
    #
    #   * `ALL_VALUES`: Include null values in filtered results.
    #
    #   * `NULLS_ONLY`: Only include null values in filtered results.
    #
    #   * `NON_NULLS_ONLY`: Exclude null values from filtered results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomFilterConfiguration AWS API Documentation
    #
    class CustomFilterConfiguration < Struct.new(
      :match_operator,
      :category_value,
      :select_all_options,
      :parameter_name,
      :null_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of custom filter values.
    #
    # @!attribute [rw] match_operator
    #   The match operator that is used to determine if a filter should be
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] category_values
    #   The list of category values for the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] select_all_options
    #   Select all of the values. Null is not the assigned value of select
    #   all.
    #
    #   * `FILTER_ALL_VALUES`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] null_option
    #   This option determines how null values should be treated when
    #   filtering data.
    #
    #   * `ALL_VALUES`: Include null values in filtered results.
    #
    #   * `NULLS_ONLY`: Only include null values in filtered results.
    #
    #   * `NON_NULLS_ONLY`: Exclude null values from filtered results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomFilterListConfiguration AWS API Documentation
    #
    class CustomFilterListConfiguration < Struct.new(
      :match_operator,
      :category_values,
      :select_all_options,
      :null_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom narrative options.
    #
    # @!attribute [rw] narrative
    #   The string input of custom narrative.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomNarrativeOptions AWS API Documentation
    #
    class CustomNarrativeOptions < Struct.new(
      :narrative)
      SENSITIVE = []
      include Aws::Structure
    end

    # The customized parameter values.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] string_values
    #   A list of string-type parameter values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] integer_values
    #   A list of integer-type parameter values.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] decimal_values
    #   A list of decimal-type parameter values.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] date_time_values
    #   A list of datetime-type parameter values.
    #   @return [Array<Time>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomParameterValues AWS API Documentation
    #
    class CustomParameterValues < Struct.new(
      :string_values,
      :integer_values,
      :decimal_values,
      :date_time_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A physical table type built from the results of the custom SQL query.
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the SQL query result.
    #   @return [String]
    #
    # @!attribute [rw] sql_query
    #   The SQL query.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   The column schema from the SQL query result set.
    #   @return [Array<Types::InputColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomSql AWS API Documentation
    #
    class CustomSql < Struct.new(
      :data_source_arn,
      :name,
      :sql_query,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of custom values for the destination parameter in
    # `DestinationParameterValueConfiguration`.
    #
    # @!attribute [rw] include_null_value
    #   Includes the null value in custom action parameter values.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_values
    #   The customized parameter values.
    #
    #   This is a union type structure. For this structure to be valid, only
    #   one of the attributes can be defined.
    #   @return [Types::CustomParameterValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/CustomValuesConfiguration AWS API Documentation
    #
    class CustomValuesConfiguration < Struct.new(
      :include_null_value,
      :custom_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard.
    #
    # @!attribute [rw] dashboard_id
    #   Dashboard ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version.
    #   @return [Types::DashboardVersion]
    #
    # @!attribute [rw] created_time
    #   The time that this dashboard was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_published_time
    #   The last time that this dashboard was published.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dashboard was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Dashboard AWS API Documentation
    #
    class Dashboard < Struct.new(
      :dashboard_id,
      :arn,
      :name,
      :version,
      :created_time,
      :last_published_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard error.
    #
    # @!attribute [rw] type
    #   Type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message.
    #   @return [String]
    #
    # @!attribute [rw] violated_entities
    #   Lists the violated entities that caused the dashboard error.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardError AWS API Documentation
    #
    class DashboardError < Struct.new(
      :type,
      :message,
      :violated_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard publish options.
    #
    # @!attribute [rw] ad_hoc_filtering_option
    #   Ad hoc (one-time) filtering option.
    #   @return [Types::AdHocFilteringOption]
    #
    # @!attribute [rw] export_to_csv_option
    #   Export to .csv option.
    #   @return [Types::ExportToCSVOption]
    #
    # @!attribute [rw] sheet_controls_option
    #   Sheet controls option.
    #   @return [Types::SheetControlsOption]
    #
    # @!attribute [rw] visual_publish_options
    #   The visual publish options of a visual in a dashboard.
    #   @return [Types::DashboardVisualPublishOptions]
    #
    # @!attribute [rw] sheet_layout_element_maximization_option
    #   The sheet layout maximization options of a dashbaord.
    #   @return [Types::SheetLayoutElementMaximizationOption]
    #
    # @!attribute [rw] visual_menu_option
    #   The menu options of a visual in a dashboard.
    #   @return [Types::VisualMenuOption]
    #
    # @!attribute [rw] visual_axis_sort_option
    #   The axis sort options of a dashboard.
    #   @return [Types::VisualAxisSortOption]
    #
    # @!attribute [rw] export_with_hidden_fields_option
    #   Determines if hidden fields are exported with a dashboard.
    #   @return [Types::ExportWithHiddenFieldsOption]
    #
    # @!attribute [rw] data_point_drill_up_down_option
    #   The drill-down options of data points in a dashboard.
    #   @return [Types::DataPointDrillUpDownOption]
    #
    # @!attribute [rw] data_point_menu_label_option
    #   The data point menu label options of a dashboard.
    #   @return [Types::DataPointMenuLabelOption]
    #
    # @!attribute [rw] data_point_tooltip_option
    #   The data point tool tip options of a dashboard.
    #   @return [Types::DataPointTooltipOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardPublishOptions AWS API Documentation
    #
    class DashboardPublishOptions < Struct.new(
      :ad_hoc_filtering_option,
      :export_to_csv_option,
      :sheet_controls_option,
      :visual_publish_options,
      :sheet_layout_element_maximization_option,
      :visual_menu_option,
      :visual_axis_sort_option,
      :export_with_hidden_fields_option,
      :data_point_drill_up_down_option,
      :data_point_menu_label_option,
      :data_point_tooltip_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that you apply when searching for dashboards.
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example `"Operator": "StringEquals"`. Valid values are
    #   `"StringEquals"` and `"StringLike"`.
    #
    #   If you set the operator value to `"StringEquals"`, you need to
    #   provide an ownership related filter in the `"NAME"` field and the
    #   arn of the user or group whose folders you want to search in the
    #   `"Value"` field. For example, `"Name":"DIRECT_QUICKSIGHT_OWNER",
    #   "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #
    #   If you set the value to `"StringLike"`, you need to provide the name
    #   of the folders you are searching for. For example,
    #   `"Name":"DASHBOARD_NAME", "Operator": "StringLike", "Value":
    #   "Test"`. The `"StringLike"` operator only supports the `NAME` value
    #   `DASHBOARD_NAME`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the value that you want to use as a filter, for example,
    #   `"Name": "QUICKSIGHT_OWNER"`.
    #
    #   Valid values are defined as follows:
    #
    #   * `QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or group,
    #     and any dashboards with that ARN listed as one of the
    #     dashboards's owners or viewers are returned. Implicit permissions
    #     from folders or groups are considered.
    #
    #   * `QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and any
    #     dashboards with that ARN listed as one of the owners of the
    #     dashboards are returned. Implicit permissions from folders or
    #     groups are considered.
    #
    #   * `DIRECT_QUICKSIGHT_SOLE_OWNER`: Provide an ARN of a user or group,
    #     and any dashboards with that ARN listed as the only owner of the
    #     dashboard are returned. Implicit permissions from folders or
    #     groups are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and
    #     any dashboards with that ARN listed as one of the owners of the
    #     dashboards are returned. Implicit permissions from folders or
    #     groups are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or
    #     group, and any dashboards with that ARN listed as one of the
    #     owners or viewers of the dashboards are returned. Implicit
    #     permissions from folders or groups are not considered.
    #
    #   * `DASHBOARD_NAME`: Any dashboards whose names have a substring
    #     match to this value will be returned.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item, in this case `QUICKSIGHT_USER`, that
    #   you want to use as a filter, for example, `"Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSearchFilter AWS API Documentation
    #
    class DashboardSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard source entity.
    #
    # @!attribute [rw] source_template
    #   Source template.
    #   @return [Types::DashboardSourceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSourceEntity AWS API Documentation
    #
    class DashboardSourceEntity < Struct.new(
      :source_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard source template.
    #
    # @!attribute [rw] data_set_references
    #   Dataset references.
    #   @return [Array<Types::DataSetReference>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSourceTemplate AWS API Documentation
    #
    class DashboardSourceTemplate < Struct.new(
      :data_set_references,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   Dashboard ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dashboard was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dashboard was updated.
    #   @return [Time]
    #
    # @!attribute [rw] published_version_number
    #   Published version number.
    #   @return [Integer]
    #
    # @!attribute [rw] last_published_time
    #   The last time that this dashboard was published.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardSummary AWS API Documentation
    #
    class DashboardSummary < Struct.new(
      :arn,
      :dashboard_id,
      :name,
      :created_time,
      :last_updated_time,
      :published_version_number,
      :last_published_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard version.
    #
    # @!attribute [rw] created_time
    #   The time that this dashboard version was created.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   Errors associated with this dashboard version.
    #   @return [Array<Types::DashboardError>]
    #
    # @!attribute [rw] version_number
    #   Version number for this version of the dashboard.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] source_entity_arn
    #   Source entity ARN.
    #   @return [String]
    #
    # @!attribute [rw] data_set_arns
    #   The Amazon Resource Numbers (ARNs) for the datasets that are
    #   associated with this version of the dashboard.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   Description.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme associated with a version of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] sheets
    #   A list of the associated sheets with the unique identifier and name
    #   of each sheet.
    #   @return [Array<Types::Sheet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardVersion AWS API Documentation
    #
    class DashboardVersion < Struct.new(
      :created_time,
      :errors,
      :version_number,
      :status,
      :arn,
      :source_entity_arn,
      :data_set_arns,
      :description,
      :theme_arn,
      :sheets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The contents of a dashboard.
    #
    # @!attribute [rw] data_set_identifier_declarations
    #   An array of dataset identifier declarations. With this mapping,you
    #   can use dataset identifiers instead of dataset Amazon Resource Names
    #   (ARNs) throughout the dashboard's sub-structures.
    #   @return [Array<Types::DataSetIdentifierDeclaration>]
    #
    # @!attribute [rw] sheets
    #   An array of sheet definitions for a dashboard.
    #   @return [Array<Types::SheetDefinition>]
    #
    # @!attribute [rw] calculated_fields
    #   An array of calculated field definitions for the dashboard.
    #   @return [Array<Types::CalculatedField>]
    #
    # @!attribute [rw] parameter_declarations
    #   The parameter declarations for a dashboard. Parameters are named
    #   variables that can transfer a value for use by an action or an
    #   object.
    #
    #   For more information, see [Parameters in Amazon QuickSight][1] in
    #   the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/parameters-in-quicksight.html
    #   @return [Array<Types::ParameterDeclaration>]
    #
    # @!attribute [rw] filter_groups
    #   The filter definitions for a dashboard.
    #
    #   For more information, see [Filtering Data in Amazon QuickSight][1]
    #   in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/adding-a-filter.html
    #   @return [Array<Types::FilterGroup>]
    #
    # @!attribute [rw] column_configurations
    #   An array of dashboard-level column configurations. Column
    #   configurations are used to set the default formatting for a column
    #   that is used throughout a dashboard.
    #   @return [Array<Types::ColumnConfiguration>]
    #
    # @!attribute [rw] analysis_defaults
    #   The configuration for default analysis settings.
    #   @return [Types::AnalysisDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardVersionDefinition AWS API Documentation
    #
    class DashboardVersionDefinition < Struct.new(
      :data_set_identifier_declarations,
      :sheets,
      :calculated_fields,
      :parameter_declarations,
      :filter_groups,
      :column_configurations,
      :analysis_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dashboard version summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dashboard version was created.
    #   @return [Time]
    #
    # @!attribute [rw] version_number
    #   Version number.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [String]
    #
    # @!attribute [rw] source_entity_arn
    #   Source entity ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardVersionSummary AWS API Documentation
    #
    class DashboardVersionSummary < Struct.new(
      :arn,
      :created_time,
      :version_number,
      :status,
      :source_entity_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the following elements:
    #
    # * The `DashboardId` of the dashboard that has the visual that you want
    #   to embed.
    #
    # * The `SheetId` of the sheet that has the visual that you want to
    #   embed.
    #
    # * The `VisualId` of the visual that you want to embed.
    #
    # The `DashboardId`, `SheetId`, and `VisualId` can be found in the `IDs
    # for developers` section of the `Embed visual` pane of the visual's
    # on-visual menu of the Amazon QuickSight console. You can also get the
    # `DashboardId` with a `ListDashboards` API operation.
    #
    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard that has the visual that you want to embed.
    #   The `DashboardId` can be found in the `IDs for developers` section
    #   of the `Embed visual` pane of the visual's on-visual menu of the
    #   Amazon QuickSight console. You can also get the `DashboardId` with a
    #   `ListDashboards` API operation.
    #   @return [String]
    #
    # @!attribute [rw] sheet_id
    #   The ID of the sheet that the has visual that you want to embed. The
    #   `SheetId` can be found in the `IDs for developers` section of the
    #   `Embed visual` pane of the visual's on-visual menu of the Amazon
    #   QuickSight console.
    #   @return [String]
    #
    # @!attribute [rw] visual_id
    #   The ID of the visual that you want to embed. The `VisualID` can be
    #   found in the `IDs for developers` section of the `Embed visual` pane
    #   of the visual's on-visual menu of the Amazon QuickSight console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardVisualId AWS API Documentation
    #
    class DashboardVisualId < Struct.new(
      :dashboard_id,
      :sheet_id,
      :visual_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The visual publish options of a visual in a dashboard
    #
    # @!attribute [rw] export_hidden_fields_option
    #   Determines if hidden fields are included in an exported dashboard.
    #   @return [Types::ExportHiddenFieldsOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DashboardVisualPublishOptions AWS API Documentation
    #
    class DashboardVisualPublishOptions < Struct.new(
      :export_hidden_fields_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a data aggregation.
    #
    # @!attribute [rw] dataset_row_date_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] default_date_column_name
    #   The column name for the default date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataAggregation AWS API Documentation
    #
    class DataAggregation < Struct.new(
      :dataset_row_date_granularity,
      :default_date_column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for data bars.
    #
    # @!attribute [rw] field_id
    #   The field ID for the data bars options.
    #   @return [String]
    #
    # @!attribute [rw] positive_color
    #   The color of the positive data bar.
    #   @return [String]
    #
    # @!attribute [rw] negative_color
    #   The color of the negative data bar.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataBarsOptions AWS API Documentation
    #
    class DataBarsOptions < Struct.new(
      :field_id,
      :positive_color,
      :negative_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the color that is applied to a particular data value.
    #
    # @!attribute [rw] color
    #   The color that is applied to the data value.
    #   @return [String]
    #
    # @!attribute [rw] data_value
    #   The data value that the color is applied to.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataColor AWS API Documentation
    #
    class DataColor < Struct.new(
      :color,
      :data_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme colors that are used for data colors in charts. The colors
    # description is a hexadecimal color code that consists of six
    # alphanumerical characters, prefixed with `#`, for example #37BFF5.
    #
    # @!attribute [rw] colors
    #   The hexadecimal codes for the colors.
    #   @return [Array<String>]
    #
    # @!attribute [rw] min_max_gradient
    #   The minimum and maximum hexadecimal codes that describe a color
    #   gradient.
    #   @return [Array<String>]
    #
    # @!attribute [rw] empty_fill_color
    #   The hexadecimal code of a color that applies to charts where a lack
    #   of data is highlighted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataColorPalette AWS API Documentation
    #
    class DataColorPalette < Struct.new(
      :colors,
      :min_max_gradient,
      :empty_fill_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data field series item configuration of a line chart.
    #
    # @!attribute [rw] field_id
    #   The field ID of the field that you are setting the axis binding to.
    #   @return [String]
    #
    # @!attribute [rw] field_value
    #   The field value of the field that you are setting the axis binding
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] axis_binding
    #   The axis that you are binding the field to.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The options that determine the presentation of line series
    #   associated to the field.
    #   @return [Types::LineChartSeriesSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataFieldSeriesItem AWS API Documentation
    #
    class DataFieldSeriesItem < Struct.new(
      :field_id,
      :field_value,
      :axis_binding,
      :settings)
      SENSITIVE = [:field_value]
      include Aws::Structure
    end

    # The options that determine the presentation of the data labels.
    #
    # @!attribute [rw] visibility
    #   Determines the visibility of the data labels.
    #   @return [String]
    #
    # @!attribute [rw] category_label_visibility
    #   Determines the visibility of the category field labels.
    #   @return [String]
    #
    # @!attribute [rw] measure_label_visibility
    #   Determines the visibility of the measure field labels.
    #   @return [String]
    #
    # @!attribute [rw] data_label_types
    #   The option that determines the data label type.
    #   @return [Array<Types::DataLabelType>]
    #
    # @!attribute [rw] position
    #   Determines the position of the data labels.
    #   @return [String]
    #
    # @!attribute [rw] label_content
    #   Determines the content of the data labels.
    #   @return [String]
    #
    # @!attribute [rw] label_font_configuration
    #   Determines the font configuration of the data labels.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] label_color
    #   Determines the color of the data labels.
    #   @return [String]
    #
    # @!attribute [rw] overlap
    #   Determines whether overlap is enabled or disabled for the data
    #   labels.
    #   @return [String]
    #
    # @!attribute [rw] totals_visibility
    #   Determines the visibility of the total.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataLabelOptions AWS API Documentation
    #
    class DataLabelOptions < Struct.new(
      :visibility,
      :category_label_visibility,
      :measure_label_visibility,
      :data_label_types,
      :position,
      :label_content,
      :label_font_configuration,
      :label_color,
      :overlap,
      :totals_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the data label type.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] field_label_type
    #   Determines the label configuration for the entire field.
    #   @return [Types::FieldLabelType]
    #
    # @!attribute [rw] data_path_label_type
    #   The option that specifies individual data values for labels.
    #   @return [Types::DataPathLabelType]
    #
    # @!attribute [rw] range_ends_label_type
    #   Determines the label configuration for range end value in a visual.
    #   @return [Types::RangeEndsLabelType]
    #
    # @!attribute [rw] minimum_label_type
    #   Determines the label configuration for the minimum value in a
    #   visual.
    #   @return [Types::MinimumLabelType]
    #
    # @!attribute [rw] maximum_label_type
    #   Determines the label configuration for the maximum value in a
    #   visual.
    #   @return [Types::MaximumLabelType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataLabelType AWS API Documentation
    #
    class DataLabelType < Struct.new(
      :field_label_type,
      :data_path_label_type,
      :range_ends_label_type,
      :minimum_label_type,
      :maximum_label_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The color map that determines the color options for a particular
    # element.
    #
    # @!attribute [rw] element
    #   The element that the color needs to be applied to.
    #   @return [Types::DataPathValue]
    #
    # @!attribute [rw] color
    #   The color that needs to be applied to the element.
    #   @return [String]
    #
    # @!attribute [rw] time_granularity
    #   The time granularity of the field that the color needs to be applied
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataPathColor AWS API Documentation
    #
    class DataPathColor < Struct.new(
      :element,
      :color,
      :time_granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that specifies individual data values for labels.
    #
    # @!attribute [rw] field_id
    #   The field ID of the field that the data label needs to be applied
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] field_value
    #   The actual value of the field that is labeled.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the data label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataPathLabelType AWS API Documentation
    #
    class DataPathLabelType < Struct.new(
      :field_id,
      :field_value,
      :visibility)
      SENSITIVE = [:field_value]
      include Aws::Structure
    end

    # Allows data paths to be sorted by a specific data value.
    #
    # @!attribute [rw] direction
    #   Determines the sort direction.
    #   @return [String]
    #
    # @!attribute [rw] sort_paths
    #   The list of data paths that need to be sorted.
    #   @return [Array<Types::DataPathValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataPathSort AWS API Documentation
    #
    class DataPathSort < Struct.new(
      :direction,
      :sort_paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data path that needs to be sorted.
    #
    # @!attribute [rw] field_id
    #   The field ID of the field that needs to be sorted.
    #   @return [String]
    #
    # @!attribute [rw] field_value
    #   The actual value of the field that needs to be sorted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataPathValue AWS API Documentation
    #
    class DataPathValue < Struct.new(
      :field_id,
      :field_value)
      SENSITIVE = [:field_value]
      include Aws::Structure
    end

    # The drill down options for data points in a dashbaord.
    #
    # @!attribute [rw] availability_status
    #   The status of the drill down options of data points.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataPointDrillUpDownOption AWS API Documentation
    #
    class DataPointDrillUpDownOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data point menu options of a dashboard.
    #
    # @!attribute [rw] availability_status
    #   The status of the data point menu options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataPointMenuLabelOption AWS API Documentation
    #
    class DataPointMenuLabelOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data point tooltip options.
    #
    # @!attribute [rw] availability_status
    #   The status of the data point tool tip options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataPointTooltipOption AWS API Documentation
    #
    class DataPointTooltipOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] physical_table_map
    #   Declares the physical tables that are available in the underlying
    #   data sources.
    #   @return [Hash<String,Types::PhysicalTable>]
    #
    # @!attribute [rw] logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #   @return [Hash<String,Types::LogicalTable>]
    #
    # @!attribute [rw] output_columns
    #   The list of columns after all transforms. These columns are
    #   available in templates, analyses, and dashboards.
    #   @return [Array<Types::OutputColumn>]
    #
    # @!attribute [rw] import_mode
    #   A value that indicates whether you want to import the data into
    #   SPICE.
    #   @return [String]
    #
    # @!attribute [rw] consumed_spice_capacity_in_bytes
    #   The amount of SPICE capacity used by this dataset. This is 0 if the
    #   dataset isn't imported into SPICE.
    #   @return [Integer]
    #
    # @!attribute [rw] column_groups
    #   Groupings of columns that work together in certain Amazon QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #   @return [Array<Types::ColumnGroup>]
    #
    # @!attribute [rw] field_folders
    #   The folder that contains fields and nested subfolders for your
    #   dataset.
    #   @return [Hash<String,Types::FieldFolder>]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the dataset.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @!attribute [rw] row_level_permission_tag_configuration
    #   The element you can use to define tags for row-level security.
    #   @return [Types::RowLevelPermissionTagConfiguration]
    #
    # @!attribute [rw] column_level_permission_rules
    #   A set of one or more definitions of a ` ColumnLevelPermissionRule `.
    #   @return [Array<Types::ColumnLevelPermissionRule>]
    #
    # @!attribute [rw] data_set_usage_configuration
    #   The usage configuration to apply to child datasets that reference
    #   this dataset as a source.
    #   @return [Types::DataSetUsageConfiguration]
    #
    # @!attribute [rw] dataset_parameters
    #   The parameters that are declared in a dataset.
    #   @return [Array<Types::DatasetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSet AWS API Documentation
    #
    class DataSet < Struct.new(
      :arn,
      :data_set_id,
      :name,
      :created_time,
      :last_updated_time,
      :physical_table_map,
      :logical_table_map,
      :output_columns,
      :import_mode,
      :consumed_spice_capacity_in_bytes,
      :column_groups,
      :field_folders,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration,
      :column_level_permission_rules,
      :data_set_usage_configuration,
      :dataset_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset configuration.
    #
    # @!attribute [rw] placeholder
    #   Placeholder.
    #   @return [String]
    #
    # @!attribute [rw] data_set_schema
    #   Dataset schema.
    #   @return [Types::DataSetSchema]
    #
    # @!attribute [rw] column_group_schema_list
    #   A structure containing the list of column group schemas.
    #   @return [Array<Types::ColumnGroupSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetConfiguration AWS API Documentation
    #
    class DataSetConfiguration < Struct.new(
      :placeholder,
      :data_set_schema,
      :column_group_schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data set.
    #
    # @!attribute [rw] identifier
    #   The identifier of the data set, typically the data set's name.
    #   @return [String]
    #
    # @!attribute [rw] data_set_arn
    #   The Amazon Resource Name (ARN) of the data set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetIdentifierDeclaration AWS API Documentation
    #
    class DataSetIdentifierDeclaration < Struct.new(
      :identifier,
      :data_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset reference.
    #
    # @!attribute [rw] data_set_placeholder
    #   Dataset placeholder.
    #   @return [String]
    #
    # @!attribute [rw] data_set_arn
    #   Dataset Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetReference AWS API Documentation
    #
    class DataSetReference < Struct.new(
      :data_set_placeholder,
      :data_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The refresh properties of a dataset.
    #
    # @!attribute [rw] refresh_configuration
    #   The refresh configuration for a dataset.
    #   @return [Types::RefreshConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetRefreshProperties AWS API Documentation
    #
    class DataSetRefreshProperties < Struct.new(
      :refresh_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset schema.
    #
    # @!attribute [rw] column_schema_list
    #   A structure containing the list of column schemas.
    #   @return [Array<Types::ColumnSchema>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetSchema AWS API Documentation
    #
    class DataSetSchema < Struct.new(
      :column_schema_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that you apply when searching for datasets.
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example `"Operator": "StringEquals"`. Valid values are
    #   `"StringEquals"` and `"StringLike"`.
    #
    #   If you set the operator value to `"StringEquals"`, you need to
    #   provide an ownership related filter in the `"NAME"` field and the
    #   arn of the user or group whose datasets you want to search in the
    #   `"Value"` field. For example, `"Name":"QUICKSIGHT_OWNER",
    #   "Operator": "StringEquals", "Value": "arn:aws:quicksight:us-east-
    #   1:1:user/default/UserName1"`.
    #
    #   If you set the value to `"StringLike"`, you need to provide the name
    #   of the datasets you are searching for. For example,
    #   `"Name":"DATASET_NAME", "Operator": "StringLike", "Value": "Test"`.
    #   The `"StringLike"` operator only supports the `NAME` value
    #   `DATASET_NAME`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the value that you want to use as a filter, for example,
    #   `"Name": "QUICKSIGHT_OWNER"`.
    #
    #   Valid values are defined as follows:
    #
    #   * `QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or group,
    #     and any datasets with that ARN listed as one of the dataset owners
    #     or viewers are returned. Implicit permissions from folders or
    #     groups are considered.
    #
    #   * `QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and any
    #     datasets with that ARN listed as one of the owners of the dataset
    #     are returned. Implicit permissions from folders or groups are
    #     considered.
    #
    #   * `DIRECT_QUICKSIGHT_SOLE_OWNER`: Provide an ARN of a user or group,
    #     and any datasets with that ARN listed as the only owner of the
    #     dataset are returned. Implicit permissions from folders or groups
    #     are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and
    #     any datasets with that ARN listed as one of the owners if the
    #     dataset are returned. Implicit permissions from folders or groups
    #     are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or
    #     group, and any datasets with that ARN listed as one of the owners
    #     or viewers of the dataset are returned. Implicit permissions from
    #     folders or groups are not considered.
    #
    #   * `DATASET_NAME`: Any datasets whose names have a substring match to
    #     this value will be returned.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item, in this case `QUICKSIGHT_OWNER`, that
    #   you want to use as a filter, for example, `"Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetSearchFilter AWS API Documentation
    #
    class DataSetSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataset summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this dataset was updated.
    #   @return [Time]
    #
    # @!attribute [rw] import_mode
    #   A value that indicates whether you want to import the data into
    #   SPICE.
    #   @return [String]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the dataset.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @!attribute [rw] row_level_permission_tag_configuration_applied
    #   Whether or not the row level permission tags are applied.
    #   @return [Boolean]
    #
    # @!attribute [rw] column_level_permission_rules_applied
    #   A value that indicates if the dataset has column level permission
    #   configured.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetSummary AWS API Documentation
    #
    class DataSetSummary < Struct.new(
      :arn,
      :data_set_id,
      :name,
      :created_time,
      :last_updated_time,
      :import_mode,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration_applied,
      :column_level_permission_rules_applied)
      SENSITIVE = []
      include Aws::Structure
    end

    # The usage configuration to apply to child datasets that reference this
    # dataset as a source.
    #
    # @!attribute [rw] disable_use_as_direct_query_source
    #   An option that controls whether a child dataset of a direct query
    #   can use this dataset as a source.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_use_as_imported_source
    #   An option that controls whether a child dataset that's stored in
    #   QuickSight can use this dataset as a source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSetUsageConfiguration AWS API Documentation
    #
    class DataSetUsageConfiguration < Struct.new(
      :disable_use_as_direct_query_source,
      :disable_use_as_imported_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of a data source.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source. This type indicates which database
    #   engine the data source connects to.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that this data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this data source was updated.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_parameters
    #   The parameters that Amazon QuickSight uses to connect to your
    #   underlying source. This is a variant type structure. For this
    #   structure to be valid, only one of the attributes can be non-null.
    #   @return [Types::DataSourceParameters]
    #
    # @!attribute [rw] alternate_data_source_parameters
    #   A set of alternate data source parameters that you want to share for
    #   the credentials stored with this data source. The credentials are
    #   applied in tandem with the data source parameters when you copy a
    #   data source by using a create or update request. The API operation
    #   compares the `DataSourceParameters` structure that's in the request
    #   with the structures in the `AlternateDataSourceParameters` allow
    #   list. If the structures are an exact match, the request is allowed
    #   to use the credentials from this existing data source. If the
    #   `AlternateDataSourceParameters` list is null, the `Credentials`
    #   originally used with this `DataSourceParameters` are automatically
    #   allowed.
    #   @return [Array<Types::DataSourceParameters>]
    #
    # @!attribute [rw] vpc_connection_properties
    #   The VPC connection information. You need to use this parameter only
    #   when you want Amazon QuickSight to use a VPC connection when
    #   connecting to your underlying source.
    #   @return [Types::VpcConnectionProperties]
    #
    # @!attribute [rw] ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when Amazon
    #   QuickSight connects to your underlying source.
    #   @return [Types::SslProperties]
    #
    # @!attribute [rw] error_info
    #   Error information from the last update or the creation of the data
    #   source.
    #   @return [Types::DataSourceErrorInfo]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the secret associated with the
    #   data source in Amazon Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :arn,
      :data_source_id,
      :name,
      :type,
      :status,
      :created_time,
      :last_updated_time,
      :data_source_parameters,
      :alternate_data_source_parameters,
      :vpc_connection_properties,
      :ssl_properties,
      :error_info,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data source credentials. This is a variant type structure. For this
    # structure to be valid, only one of the attributes can be non-null.
    #
    # @!attribute [rw] credential_pair
    #   Credential pair. For more information, see ` CredentialPair `.
    #   @return [Types::CredentialPair]
    #
    # @!attribute [rw] copy_source_arn
    #   The Amazon Resource Name (ARN) of a data source that has the
    #   credential pair that you want to use. When `CopySourceArn` is not
    #   null, the credential pair from the data source in the ARN is used as
    #   the credentials for the `DataSourceCredentials` structure.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the secret associated with the
    #   data source in Amazon Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceCredentials AWS API Documentation
    #
    class DataSourceCredentials < Struct.new(
      :credential_pair,
      :copy_source_arn,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information for the data source creation or update.
    #
    # @!attribute [rw] type
    #   Error type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceErrorInfo AWS API Documentation
    #
    class DataSourceErrorInfo < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters that Amazon QuickSight uses to connect to your
    # underlying data source. This is a variant type structure. For this
    # structure to be valid, only one of the attributes can be non-null.
    #
    # @!attribute [rw] amazon_elasticsearch_parameters
    #   The parameters for OpenSearch.
    #   @return [Types::AmazonElasticsearchParameters]
    #
    # @!attribute [rw] athena_parameters
    #   The parameters for Amazon Athena.
    #   @return [Types::AthenaParameters]
    #
    # @!attribute [rw] aurora_parameters
    #   The parameters for Amazon Aurora MySQL.
    #   @return [Types::AuroraParameters]
    #
    # @!attribute [rw] aurora_postgre_sql_parameters
    #   The parameters for Amazon Aurora.
    #   @return [Types::AuroraPostgreSqlParameters]
    #
    # @!attribute [rw] aws_iot_analytics_parameters
    #   The parameters for IoT Analytics.
    #   @return [Types::AwsIotAnalyticsParameters]
    #
    # @!attribute [rw] jira_parameters
    #   The parameters for Jira.
    #   @return [Types::JiraParameters]
    #
    # @!attribute [rw] maria_db_parameters
    #   The parameters for MariaDB.
    #   @return [Types::MariaDbParameters]
    #
    # @!attribute [rw] my_sql_parameters
    #   The parameters for MySQL.
    #   @return [Types::MySqlParameters]
    #
    # @!attribute [rw] oracle_parameters
    #   The parameters for Oracle.
    #   @return [Types::OracleParameters]
    #
    # @!attribute [rw] postgre_sql_parameters
    #   The parameters for PostgreSQL.
    #   @return [Types::PostgreSqlParameters]
    #
    # @!attribute [rw] presto_parameters
    #   The parameters for Presto.
    #   @return [Types::PrestoParameters]
    #
    # @!attribute [rw] rds_parameters
    #   The parameters for Amazon RDS.
    #   @return [Types::RdsParameters]
    #
    # @!attribute [rw] redshift_parameters
    #   The parameters for Amazon Redshift.
    #   @return [Types::RedshiftParameters]
    #
    # @!attribute [rw] s3_parameters
    #   The parameters for S3.
    #   @return [Types::S3Parameters]
    #
    # @!attribute [rw] service_now_parameters
    #   The parameters for ServiceNow.
    #   @return [Types::ServiceNowParameters]
    #
    # @!attribute [rw] snowflake_parameters
    #   The parameters for Snowflake.
    #   @return [Types::SnowflakeParameters]
    #
    # @!attribute [rw] spark_parameters
    #   The parameters for Spark.
    #   @return [Types::SparkParameters]
    #
    # @!attribute [rw] sql_server_parameters
    #   The parameters for SQL Server.
    #   @return [Types::SqlServerParameters]
    #
    # @!attribute [rw] teradata_parameters
    #   The parameters for Teradata.
    #   @return [Types::TeradataParameters]
    #
    # @!attribute [rw] twitter_parameters
    #   The parameters for Twitter.
    #   @return [Types::TwitterParameters]
    #
    # @!attribute [rw] amazon_open_search_parameters
    #   The parameters for OpenSearch.
    #   @return [Types::AmazonOpenSearchParameters]
    #
    # @!attribute [rw] exasol_parameters
    #   The parameters for Exasol.
    #   @return [Types::ExasolParameters]
    #
    # @!attribute [rw] databricks_parameters
    #   The required parameters that are needed to connect to a Databricks
    #   data source.
    #   @return [Types::DatabricksParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceParameters AWS API Documentation
    #
    class DataSourceParameters < Struct.new(
      :amazon_elasticsearch_parameters,
      :athena_parameters,
      :aurora_parameters,
      :aurora_postgre_sql_parameters,
      :aws_iot_analytics_parameters,
      :jira_parameters,
      :maria_db_parameters,
      :my_sql_parameters,
      :oracle_parameters,
      :postgre_sql_parameters,
      :presto_parameters,
      :rds_parameters,
      :redshift_parameters,
      :s3_parameters,
      :service_now_parameters,
      :snowflake_parameters,
      :spark_parameters,
      :sql_server_parameters,
      :teradata_parameters,
      :twitter_parameters,
      :amazon_open_search_parameters,
      :exasol_parameters,
      :databricks_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that you apply when searching for data sources.
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example `"Operator": "StringEquals"`. Valid values are
    #   `"StringEquals"` and `"StringLike"`.
    #
    #   If you set the operator value to `"StringEquals"`, you need to
    #   provide an ownership related filter in the `"NAME"` field and the
    #   arn of the user or group whose data sources you want to search in
    #   the `"Value"` field. For example, `"Name":"DIRECT_QUICKSIGHT_OWNER",
    #   "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #
    #   If you set the value to `"StringLike"`, you need to provide the name
    #   of the data sources you are searching for. For example,
    #   `"Name":"DATASOURCE_NAME", "Operator": "StringLike", "Value":
    #   "Test"`. The `"StringLike"` operator only supports the `NAME` value
    #   `DATASOURCE_NAME`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the value that you want to use as a filter, for example,
    #   `"Name": "DIRECT_QUICKSIGHT_OWNER"`.
    #
    #   Valid values are defined as follows:
    #
    #   * `DIRECT_QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or
    #     group, and any data sources with that ARN listed as one of the
    #     owners or viewers of the data sources are returned. Implicit
    #     permissions from folders or groups are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and
    #     any data sources with that ARN listed as one of the owners if the
    #     data source are returned. Implicit permissions from folders or
    #     groups are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_SOLE_OWNER`: Provide an ARN of a user or group,
    #     and any data sources with that ARN listed as the only owner of the
    #     data source are returned. Implicit permissions from folders or
    #     groups are not considered.
    #
    #   * `DATASOURCE_NAME`: Any data sources whose names have a substring
    #     match to the provided value are returned.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item, for example `DIRECT_QUICKSIGHT_OWNER`,
    #   that you want to use as a filter, for example, `"Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceSearchFilter AWS API Documentation
    #
    class DataSourceSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `DataSourceSummary` object that returns a summary of a data source.
    #
    # @!attribute [rw] arn
    #   The arn of the datasource.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The unique ID of the data source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the data source was created. This value is
    #   expressed in MM-DD-YYYY HH:MM:SS format.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time the data source was last updated. This value is
    #   expressed in MM-DD-YYYY HH:MM:SS format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DataSourceSummary AWS API Documentation
    #
    class DataSourceSummary < Struct.new(
      :arn,
      :data_source_id,
      :name,
      :type,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The required parameters that are needed to connect to a Databricks
    # data source.
    #
    # @!attribute [rw] host
    #   The host name of the Databricks data source.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port for the Databricks data source.
    #   @return [Integer]
    #
    # @!attribute [rw] sql_endpoint_path
    #   The HTTP path of the Databricks data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DatabricksParameters AWS API Documentation
    #
    class DatabricksParameters < Struct.new(
      :host,
      :port,
      :sql_endpoint_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a dataset.
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_description
    #   The description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_aggregation
    #   The definition of a data aggregation.
    #   @return [Types::DataAggregation]
    #
    # @!attribute [rw] filters
    #   The list of filter definitions.
    #   @return [Array<Types::TopicFilter>]
    #
    # @!attribute [rw] columns
    #   The list of column definitions.
    #   @return [Array<Types::TopicColumn>]
    #
    # @!attribute [rw] calculated_fields
    #   The list of calculated field definitions.
    #   @return [Array<Types::TopicCalculatedField>]
    #
    # @!attribute [rw] named_entities
    #   The list of named entities definitions.
    #   @return [Array<Types::TopicNamedEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DatasetMetadata AWS API Documentation
    #
    class DatasetMetadata < Struct.new(
      :dataset_arn,
      :dataset_name,
      :dataset_description,
      :data_aggregation,
      :filters,
      :columns,
      :calculated_fields,
      :named_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dataset parameter.
    #
    # @!attribute [rw] string_dataset_parameter
    #   A string parameter that is created in the dataset.
    #   @return [Types::StringDatasetParameter]
    #
    # @!attribute [rw] decimal_dataset_parameter
    #   A decimal parameter that is created in the dataset.
    #   @return [Types::DecimalDatasetParameter]
    #
    # @!attribute [rw] integer_dataset_parameter
    #   An integer parameter that is created in the dataset.
    #   @return [Types::IntegerDatasetParameter]
    #
    # @!attribute [rw] date_time_dataset_parameter
    #   A date time parameter that is created in the dataset.
    #   @return [Types::DateTimeDatasetParameter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DatasetParameter AWS API Documentation
    #
    class DatasetParameter < Struct.new(
      :string_dataset_parameter,
      :decimal_dataset_parameter,
      :integer_dataset_parameter,
      :date_time_dataset_parameter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine how a date axis is displayed.
    #
    # @!attribute [rw] missing_date_visibility
    #   Determines whether or not missing dates are displayed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateAxisOptions AWS API Documentation
    #
    class DateAxisOptions < Struct.new(
      :missing_date_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimension type field with date type columns.
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that is used in the `DateDimensionField`.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] date_granularity
    #   The date granularity of the `DateDimensionField`. Choose one of the
    #   following options:
    #
    #   * `YEAR`
    #
    #   * `QUARTER`
    #
    #   * `MONTH`
    #
    #   * `WEEK`
    #
    #   * `DAY`
    #
    #   * `HOUR`
    #
    #   * `MINUTE`
    #
    #   * `SECOND`
    #
    #   * `MILLISECOND`
    #   @return [String]
    #
    # @!attribute [rw] hierarchy_id
    #   The custom hierarchy ID.
    #   @return [String]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the field.
    #   @return [Types::DateTimeFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateDimensionField AWS API Documentation
    #
    class DateDimensionField < Struct.new(
      :field_id,
      :column,
      :date_granularity,
      :hierarchy_id,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The measure type field with date type columns.
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that is used in the `DateMeasureField`.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] aggregation_function
    #   The aggregation function of the measure field.
    #   @return [String]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the field.
    #   @return [Types::DateTimeFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateMeasureField AWS API Documentation
    #
    class DateMeasureField < Struct.new(
      :field_id,
      :column,
      :aggregation_function,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date time parameter for a dataset.
    #
    # @!attribute [rw] id
    #   An identifier for the parameter that is created in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the date time parameter that is created in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] value_type
    #   The value type of the dataset parameter. Valid values are `single
    #   value` or `multi value`.
    #   @return [String]
    #
    # @!attribute [rw] time_granularity
    #   The time granularity of the date time parameter.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   A list of default values for a given date time parameter. This
    #   structure only accepts static values.
    #   @return [Types::DateTimeDatasetParameterDefaultValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeDatasetParameter AWS API Documentation
    #
    class DateTimeDatasetParameter < Struct.new(
      :id,
      :name,
      :value_type,
      :time_granularity,
      :default_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of a date time parameter.
    #
    # @!attribute [rw] static_values
    #   A list of static default values for a given date time parameter.
    #   @return [Array<Time>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeDatasetParameterDefaultValues AWS API Documentation
    #
    class DateTimeDatasetParameterDefaultValues < Struct.new(
      :static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of the `DateTimeParameterDeclaration`.
    #
    # @!attribute [rw] dynamic_value
    #   The dynamic value of the `DataTimeDefaultValues`. Different defaults
    #   are displayed according to users, groups, and values mapping.
    #   @return [Types::DynamicDefaultValue]
    #
    # @!attribute [rw] static_values
    #   The static values of the `DataTimeDefaultValues`.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] rolling_date
    #   The rolling date of the `DataTimeDefaultValues`. The date is
    #   determined from the dataset based on input expression.
    #   @return [Types::RollingDateConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeDefaultValues AWS API Documentation
    #
    class DateTimeDefaultValues < Struct.new(
      :dynamic_value,
      :static_values,
      :rolling_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Formatting configuration for `DateTime` fields.
    #
    # @!attribute [rw] date_time_format
    #   Determines the `DateTime` format.
    #   @return [String]
    #
    # @!attribute [rw] null_value_format_configuration
    #   The options that determine the null value format configuration.
    #   @return [Types::NullValueFormatConfiguration]
    #
    # @!attribute [rw] numeric_format_configuration
    #   The formatting configuration for numeric `DateTime` fields.
    #   @return [Types::NumericFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeFormatConfiguration AWS API Documentation
    #
    class DateTimeFormatConfiguration < Struct.new(
      :date_time_format,
      :null_value_format_configuration,
      :numeric_format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the hierarchy of any `DateTime` fields.
    #
    # @!attribute [rw] hierarchy_id
    #   The hierarchy ID of the `DateTime` hierarchy.
    #   @return [String]
    #
    # @!attribute [rw] drill_down_filters
    #   The option that determines the drill down filters for the `DateTime`
    #   hierarchy.
    #   @return [Array<Types::DrillDownFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeHierarchy AWS API Documentation
    #
    class DateTimeHierarchy < Struct.new(
      :hierarchy_id,
      :drill_down_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date-time parameter.
    #
    # @!attribute [rw] name
    #   A display name for the date-time parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the date-time parameter.
    #   @return [Array<Time>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeParameter AWS API Documentation
    #
    class DateTimeParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter declaration for the `DateTime` data type.
    #
    # @!attribute [rw] name
    #   The name of the parameter that is being declared.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   The default values of a parameter. If the parameter is a
    #   single-value parameter, a maximum of one default value can be
    #   provided.
    #   @return [Types::DateTimeDefaultValues]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] value_when_unset
    #   The configuration that defines the default value of a `DateTime`
    #   parameter when a value has not been set.
    #   @return [Types::DateTimeValueWhenUnsetConfiguration]
    #
    # @!attribute [rw] mapped_data_set_parameters
    #   A list of dataset parameters that are mapped to an analysis
    #   parameter.
    #   @return [Array<Types::MappedDataSetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeParameterDeclaration AWS API Documentation
    #
    class DateTimeParameterDeclaration < Struct.new(
      :name,
      :default_values,
      :time_granularity,
      :value_when_unset,
      :mapped_data_set_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options of a control.
    #
    # @!attribute [rw] title_options
    #   The options to configure the title visibility, name, and font size.
    #   @return [Types::LabelOptions]
    #
    # @!attribute [rw] date_time_format
    #   Customize how dates are formatted in controls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimePickerControlDisplayOptions AWS API Documentation
    #
    class DateTimePickerControlDisplayOptions < Struct.new(
      :title_options,
      :date_time_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that defines the default value of a `DateTime`
    # parameter when a value has not been set.
    #
    # @!attribute [rw] value_when_unset_option
    #   The built-in options for default values. The value can be one of the
    #   following:
    #
    #   * `RECOMMENDED`: The recommended value.
    #
    #   * `NULL`: The `NULL` value.
    #   @return [String]
    #
    # @!attribute [rw] custom_value
    #   A custom value that's used when the value of a parameter isn't
    #   set.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DateTimeValueWhenUnsetConfiguration AWS API Documentation
    #
    class DateTimeValueWhenUnsetConfiguration < Struct.new(
      :value_when_unset_option,
      :custom_value)
      SENSITIVE = [:custom_value]
      include Aws::Structure
    end

    # A decimal parameter for a dataset.
    #
    # @!attribute [rw] id
    #   An identifier for the decimal parameter created in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the decimal parameter that is created in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] value_type
    #   The value type of the dataset parameter. Valid values are `single
    #   value` or `multi value`.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   A list of default values for a given decimal parameter. This
    #   structure only accepts static values.
    #   @return [Types::DecimalDatasetParameterDefaultValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalDatasetParameter AWS API Documentation
    #
    class DecimalDatasetParameter < Struct.new(
      :id,
      :name,
      :value_type,
      :default_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of a decimal parameter.
    #
    # @!attribute [rw] static_values
    #   A list of static default values for a given decimal parameter.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalDatasetParameterDefaultValues AWS API Documentation
    #
    class DecimalDatasetParameterDefaultValues < Struct.new(
      :static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of the `DecimalParameterDeclaration`.
    #
    # @!attribute [rw] dynamic_value
    #   The dynamic value of the `DecimalDefaultValues`. Different defaults
    #   are displayed according to users, groups, and values mapping.
    #   @return [Types::DynamicDefaultValue]
    #
    # @!attribute [rw] static_values
    #   The static values of the `DecimalDefaultValues`.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalDefaultValues AWS API Documentation
    #
    class DecimalDefaultValues < Struct.new(
      :dynamic_value,
      :static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A decimal parameter.
    #
    # @!attribute [rw] name
    #   A display name for the decimal parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the decimal parameter.
    #   @return [Array<Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalParameter AWS API Documentation
    #
    class DecimalParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter declaration for the `Decimal` data type.
    #
    # @!attribute [rw] parameter_value_type
    #   The value type determines whether the parameter is a single-value or
    #   multi-value parameter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the parameter that is being declared.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   The default values of a parameter. If the parameter is a
    #   single-value parameter, a maximum of one default value can be
    #   provided.
    #   @return [Types::DecimalDefaultValues]
    #
    # @!attribute [rw] value_when_unset
    #   The configuration that defines the default value of a `Decimal`
    #   parameter when a value has not been set.
    #   @return [Types::DecimalValueWhenUnsetConfiguration]
    #
    # @!attribute [rw] mapped_data_set_parameters
    #   A list of dataset parameters that are mapped to an analysis
    #   parameter.
    #   @return [Array<Types::MappedDataSetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalParameterDeclaration AWS API Documentation
    #
    class DecimalParameterDeclaration < Struct.new(
      :parameter_value_type,
      :name,
      :default_values,
      :value_when_unset,
      :mapped_data_set_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the decimal places configuration.
    #
    # @!attribute [rw] decimal_places
    #   The values of the decimal places.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalPlacesConfiguration AWS API Documentation
    #
    class DecimalPlacesConfiguration < Struct.new(
      :decimal_places)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that defines the default value of a `Decimal`
    # parameter when a value has not been set.
    #
    # @!attribute [rw] value_when_unset_option
    #   The built-in options for default values. The value can be one of the
    #   following:
    #
    #   * `RECOMMENDED`: The recommended value.
    #
    #   * `NULL`: The `NULL` value.
    #   @return [String]
    #
    # @!attribute [rw] custom_value
    #   A custom value that's used when the value of a parameter isn't
    #   set.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DecimalValueWhenUnsetConfiguration AWS API Documentation
    #
    class DecimalValueWhenUnsetConfiguration < Struct.new(
      :value_when_unset_option,
      :custom_value)
      SENSITIVE = [:custom_value]
      include Aws::Structure
    end

    # A structure that represents a default formatting definition.
    #
    # @!attribute [rw] display_format
    #   The display format. Valid values for this structure are `AUTO`,
    #   `PERCENT`, `CURRENCY`, `NUMBER`, `DATE`, and `STRING`.
    #   @return [String]
    #
    # @!attribute [rw] display_format_options
    #   The additional options for display formatting.
    #   @return [Types::DisplayFormatOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DefaultFormatting AWS API Documentation
    #
    class DefaultFormatting < Struct.new(
      :display_format,
      :display_format_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the default settings of a free-form layout
    # configuration.
    #
    # @!attribute [rw] canvas_size_options
    #   Determines the screen canvas size options for a free-form layout.
    #   @return [Types::FreeFormLayoutCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DefaultFreeFormLayoutConfiguration AWS API Documentation
    #
    class DefaultFreeFormLayoutConfiguration < Struct.new(
      :canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the default settings for a grid layout
    # configuration.
    #
    # @!attribute [rw] canvas_size_options
    #   Determines the screen canvas size options for a grid layout.
    #   @return [Types::GridLayoutCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DefaultGridLayoutConfiguration AWS API Documentation
    #
    class DefaultGridLayoutConfiguration < Struct.new(
      :canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the default settings for interactive layout
    # configuration.
    #
    # @!attribute [rw] grid
    #   The options that determine the default settings for a grid layout
    #   configuration.
    #   @return [Types::DefaultGridLayoutConfiguration]
    #
    # @!attribute [rw] free_form
    #   The options that determine the default settings of a free-form
    #   layout configuration.
    #   @return [Types::DefaultFreeFormLayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DefaultInteractiveLayoutConfiguration AWS API Documentation
    #
    class DefaultInteractiveLayoutConfiguration < Struct.new(
      :grid,
      :free_form)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for default new sheet settings.
    #
    # @!attribute [rw] interactive_layout_configuration
    #   The options that determine the default settings for interactive
    #   layout configuration.
    #   @return [Types::DefaultInteractiveLayoutConfiguration]
    #
    # @!attribute [rw] paginated_layout_configuration
    #   The options that determine the default settings for a paginated
    #   layout configuration.
    #   @return [Types::DefaultPaginatedLayoutConfiguration]
    #
    # @!attribute [rw] sheet_content_type
    #   The option that determines the sheet content type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DefaultNewSheetConfiguration AWS API Documentation
    #
    class DefaultNewSheetConfiguration < Struct.new(
      :interactive_layout_configuration,
      :paginated_layout_configuration,
      :sheet_content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the default settings for a paginated layout
    # configuration.
    #
    # @!attribute [rw] section_based
    #   The options that determine the default settings for a section-based
    #   layout configuration.
    #   @return [Types::DefaultSectionBasedLayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DefaultPaginatedLayoutConfiguration AWS API Documentation
    #
    class DefaultPaginatedLayoutConfiguration < Struct.new(
      :section_based)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the default settings for a section-based
    # layout configuration.
    #
    # @!attribute [rw] canvas_size_options
    #   Determines the screen canvas size options for a section-based
    #   layout.
    #   @return [Types::SectionBasedLayoutCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DefaultSectionBasedLayoutConfiguration AWS API Documentation
    #
    class DefaultSectionBasedLayoutConfiguration < Struct.new(
      :canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to delete
    #   Amazon QuickSight customizations from in this Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The Amazon QuickSight namespace that you're deleting the
    #   customizations from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountCustomizationRequest AWS API Documentation
    #
    class DeleteAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountCustomizationResponse AWS API Documentation
    #
    class DeleteAccountCustomizationResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID of the account that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountSubscriptionRequest AWS API Documentation
    #
    class DeleteAccountSubscriptionRequest < Struct.new(
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAccountSubscriptionResponse AWS API Documentation
    #
    class DeleteAccountSubscriptionResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account where you want to delete
    #   an analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're deleting.
    #   @return [String]
    #
    # @!attribute [rw] recovery_window_in_days
    #   A value that specifies the number of days that Amazon QuickSight
    #   waits before it deletes the analysis. You can't use this parameter
    #   with the `ForceDeleteWithoutRecovery` option in the same API call.
    #   The default value is 30.
    #   @return [Integer]
    #
    # @!attribute [rw] force_delete_without_recovery
    #   This option defaults to the value `NoForceDeleteWithoutRecovery`. To
    #   immediately delete the analysis, add the
    #   `ForceDeleteWithoutRecovery` option. You can't restore an analysis
    #   after it's deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAnalysisRequest AWS API Documentation
    #
    class DeleteAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :recovery_window_in_days,
      :force_delete_without_recovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the deleted analysis.
    #   @return [String]
    #
    # @!attribute [rw] deletion_time
    #   The date and time that the analysis is scheduled to be deleted.
    #   @return [Time]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteAnalysisResponse AWS API Documentation
    #
    class DeleteAnalysisResponse < Struct.new(
      :status,
      :arn,
      :analysis_id,
      :deletion_time,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard that you're deleting.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the dashboard. If the version number property
    #   is provided, only the specified version of the dashboard is deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDashboardRequest AWS API Documentation
    #
    class DeleteDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Secure Socket Layer (SSL) properties that apply for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDashboardResponse AWS API Documentation
    #
    class DeleteDashboardResponse < Struct.new(
      :status,
      :arn,
      :dashboard_id,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetRefreshPropertiesRequest AWS API Documentation
    #
    class DeleteDataSetRefreshPropertiesRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetRefreshPropertiesResponse AWS API Documentation
    #
    class DeleteDataSetRefreshPropertiesResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetRequest AWS API Documentation
    #
    class DeleteDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSetResponse AWS API Documentation
    #
    class DeleteDataSetResponse < Struct.new(
      :arn,
      :data_set_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source that you deleted.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Struct.new(
      :arn,
      :data_source_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The Folder ID.
    #   @return [String]
    #
    # @!attribute [rw] member_id
    #   The ID of the asset (the dashboard, analysis, or dataset) that you
    #   want to delete.
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   The type of the member, including `DASHBOARD`, `ANALYSIS`, and
    #   `DATASET`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolderMembershipRequest AWS API Documentation
    #
    class DeleteFolderMembershipRequest < Struct.new(
      :aws_account_id,
      :folder_id,
      :member_id,
      :member_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolderMembershipResponse AWS API Documentation
    #
    class DeleteFolderMembershipResponse < Struct.new(
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolderRequest AWS API Documentation
    #
    class DeleteFolderRequest < Struct.new(
      :aws_account_id,
      :folder_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name of the deleted folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteFolderResponse AWS API Documentation
    #
    class DeleteFolderResponse < Struct.new(
      :status,
      :arn,
      :folder_id,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_name
    #   The name of the user that you want to delete from the group
    #   membership.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to delete the user from.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the group that you want to remove a user from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembershipRequest AWS API Documentation
    #
    class DeleteGroupMembershipRequest < Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupMembershipResponse AWS API Documentation
    #
    class DeleteGroupMembershipResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the group that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID where you want to delete the IAM
    #   policy assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that contains the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIAMPolicyAssignmentRequest AWS API Documentation
    #
    class DeleteIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_name
    #   The name of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteIAMPolicyAssignmentResponse AWS API Documentation
    #
    class DeleteIAMPolicyAssignmentResponse < Struct.new(
      :assignment_name,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to delete
    #   the Amazon QuickSight namespace from.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteNamespaceRequest AWS API Documentation
    #
    class DeleteNamespaceRequest < Struct.new(
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteNamespaceResponse AWS API Documentation
    #
    class DeleteNamespaceResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] schedule_id
    #   The ID of the refresh schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteRefreshScheduleRequest AWS API Documentation
    #
    class DeleteRefreshScheduleRequest < Struct.new(
      :data_set_id,
      :aws_account_id,
      :schedule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] schedule_id
    #   The ID of the refresh schedule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the refresh schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteRefreshScheduleResponse AWS API Documentation
    #
    class DeleteRefreshScheduleResponse < Struct.new(
      :status,
      :request_id,
      :schedule_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the item to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template that the specified alias is for.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name for the template alias. To delete a specific alias, you
    #   delete the version that the alias points to. You can specify the
    #   alias name, or specify the latest version of the template by
    #   providing the keyword `$LATEST` in the `AliasName` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateAliasRequest AWS API Documentation
    #
    class DeleteTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] template_id
    #   An ID for the template associated with the deletion.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name for the template alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateAliasResponse AWS API Documentation
    #
    class DeleteTemplateAliasResponse < Struct.new(
      :status,
      :template_id,
      :alias_name,
      :arn,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're deleting.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   Specifies the version of the template that you want to delete. If
    #   you don't provide a version number, `DeleteTemplate` deletes all
    #   versions of the template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateRequest AWS API Documentation
    #
    class DeleteTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   An ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTemplateResponse AWS API Documentation
    #
    class DeleteTemplateResponse < Struct.new(
      :request_id,
      :arn,
      :template_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias to delete.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme that the specified alias is for.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The unique name for the theme alias to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeAliasRequest AWS API Documentation
    #
    class DeleteThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alias_name
    #   The name for the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme resource using the
    #   deleted alias.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme associated with the deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeAliasResponse AWS API Documentation
    #
    class DeleteThemeAliasResponse < Struct.new(
      :alias_name,
      :arn,
      :request_id,
      :status,
      :theme_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   that you're deleting.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version of the theme that you want to delete.
    #
    #   **Note:** If you don't provide a version number, you're using this
    #   call to `DeleteTheme` to delete all versions of the theme.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeRequest AWS API Documentation
    #
    class DeleteThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] theme_id
    #   An ID for the theme.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteThemeResponse AWS API Documentation
    #
    class DeleteThemeResponse < Struct.new(
      :arn,
      :request_id,
      :status,
      :theme_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopicRefreshScheduleRequest AWS API Documentation
    #
    class DeleteTopicRefreshScheduleRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopicRefreshScheduleResponse AWS API Documentation
    #
    class DeleteTopicRefreshScheduleResponse < Struct.new(
      :topic_id,
      :topic_arn,
      :dataset_arn,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to delete. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopicRequest AWS API Documentation
    #
    class DeleteTopicRequest < Struct.new(
      :aws_account_id,
      :topic_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to delete. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteTopicResponse AWS API Documentation
    #
    class DeleteTopicResponse < Struct.new(
      :arn,
      :topic_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] principal_id
    #   The principal ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalIdRequest AWS API Documentation
    #
    class DeleteUserByPrincipalIdRequest < Struct.new(
      :principal_id,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserByPrincipalIdResponse AWS API Documentation
    #
    class DeleteUserByPrincipalIdResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID of the account where you want to
    #   delete a VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteVPCConnectionRequest AWS API Documentation
    #
    class DeleteVPCConnectionRequest < Struct.new(
      :aws_account_id,
      :vpc_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deleted VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] deletion_status
    #   The deletion status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] availability_status
    #   The availability status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DeleteVPCConnectionResponse AWS API Documentation
    #
    class DeleteVPCConnectionResponse < Struct.new(
      :arn,
      :vpc_connection_id,
      :deletion_status,
      :availability_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to describe
    #   Amazon QuickSight customizations for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The Amazon QuickSight namespace that you want to describe Amazon
    #   QuickSight customizations for.
    #   @return [String]
    #
    # @!attribute [rw] resolved
    #   The `Resolved` flag works with the other parameters to determine
    #   which view of Amazon QuickSight customizations is returned. You can
    #   add this flag to your command to use the same view that Amazon
    #   QuickSight uses to identify which customizations to apply to the
    #   console. Omit this flag, or set it to `no-resolved`, to reveal
    #   customizations that are configured at different levels.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountCustomizationRequest AWS API Documentation
    #
    class DescribeAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :resolved)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the customization that's
    #   associated with this Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The Amazon QuickSight namespace that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The Amazon QuickSight customizations that exist in the current
    #   Amazon Web Services Region.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountCustomizationResponse AWS API Documentation
    #
    class DescribeAccountCustomizationResponse < Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the
    #   settings that you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSettingsRequest AWS API Documentation
    #
    class DescribeAccountSettingsRequest < Struct.new(
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_settings
    #   The Amazon QuickSight settings for this Amazon Web Services account.
    #   This information includes the edition of Amazon Amazon QuickSight
    #   that you subscribed to (Standard or Enterprise) and the notification
    #   email for the Amazon QuickSight subscription.
    #
    #   In the QuickSight console, the Amazon QuickSight subscription is
    #   sometimes referred to as a QuickSight "account" even though it's
    #   technically not an account by itself. Instead, it's a subscription
    #   to the Amazon QuickSight service for your Amazon Web Services
    #   account. The edition that you subscribe to applies to Amazon
    #   QuickSight in every Amazon Web Services Region where you use it.
    #   @return [Types::AccountSettings]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSettingsResponse AWS API Documentation
    #
    class DescribeAccountSettingsResponse < Struct.new(
      :account_settings,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID associated with your Amazon
    #   QuickSight account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSubscriptionRequest AWS API Documentation
    #
    class DescribeAccountSubscriptionRequest < Struct.new(
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_info
    #   A structure that contains the following elements:
    #
    #   * Your Amazon QuickSight account name.
    #
    #   * The edition of Amazon QuickSight that your account is using.
    #
    #   * The notification email address that is associated with the Amazon
    #     QuickSight account.
    #
    #   * The authentication type of the Amazon QuickSight account.
    #
    #   * The status of the Amazon QuickSight account's subscription.
    #   @return [Types::AccountInfo]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAccountSubscriptionResponse AWS API Documentation
    #
    class DescribeAccountSubscriptionResponse < Struct.new(
      :account_info,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   analysis. You must be using the Amazon Web Services account that the
    #   analysis is in.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're describing. The ID is part of
    #   the URL of the analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisDefinitionRequest AWS API Documentation
    #
    class DescribeAnalysisDefinitionRequest < Struct.new(
      :aws_account_id,
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_id
    #   The ID of the analysis described.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The descriptive name of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   Errors associated with the analysis.
    #   @return [Array<Types::AnalysisError>]
    #
    # @!attribute [rw] resource_status
    #   Status associated with the analysis.
    #
    #   * `CREATION_IN_PROGRESS`
    #
    #   * `CREATION_SUCCESSFUL`
    #
    #   * `CREATION_FAILED`
    #
    #   * `UPDATE_IN_PROGRESS`
    #
    #   * `UPDATE_SUCCESSFUL`
    #
    #   * `UPDATE_FAILED`
    #
    #   * `DELETED`
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of an analysis.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #   @return [Types::AnalysisDefinition]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisDefinitionResponse AWS API Documentation
    #
    class DescribeAnalysisDefinitionResponse < Struct.new(
      :analysis_id,
      :name,
      :errors,
      :resource_status,
      :theme_arn,
      :definition,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis
    #   whose permissions you're describing. You must be using the Amazon
    #   Web Services account that the analysis is in.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis whose permissions you're describing. The ID
    #   is part of the analysis URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisPermissionsRequest AWS API Documentation
    #
    class DescribeAnalysisPermissionsRequest < Struct.new(
      :aws_account_id,
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_id
    #   The ID of the analysis whose permissions you're describing.
    #   @return [String]
    #
    # @!attribute [rw] analysis_arn
    #   The Amazon Resource Name (ARN) of the analysis whose permissions
    #   you're describing.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisPermissionsResponse AWS API Documentation
    #
    class DescribeAnalysisPermissionsResponse < Struct.new(
      :analysis_id,
      :analysis_arn,
      :permissions,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   analysis. You must be using the Amazon Web Services account that the
    #   analysis is in.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're describing. The ID is part of
    #   the URL of the analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisRequest AWS API Documentation
    #
    class DescribeAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis
    #   A metadata structure that contains summary information for the
    #   analysis that you're describing.
    #   @return [Types::Analysis]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeAnalysisResponse AWS API Documentation
    #
    class DescribeAnalysisResponse < Struct.new(
      :analysis,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number for the dashboard. If a version number isn't
    #   passed, the latest published dashboard version is described.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardDefinitionRequest AWS API Documentation
    #
    class DescribeDashboardDefinitionRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_id
    #   The ID of the dashboard described.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   Errors associated with this dashboard version.
    #   @return [Array<Types::DashboardError>]
    #
    # @!attribute [rw] name
    #   The display name of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] resource_status
    #   Status associated with the dashboard version.
    #
    #   * `CREATION_IN_PROGRESS`
    #
    #   * `CREATION_SUCCESSFUL`
    #
    #   * `CREATION_FAILED`
    #
    #   * `UPDATE_IN_PROGRESS`
    #
    #   * `UPDATE_SUCCESSFUL`
    #
    #   * `UPDATE_FAILED`
    #
    #   * `DELETED`
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of a dashboard.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #   @return [Types::DashboardVersionDefinition]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_publish_options
    #   Options for publishing the dashboard:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can
    #     be either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     Amazon QuickSight disables the left filter pane on the published
    #     dashboard, which can be used for ad hoc (one-time) filtering. This
    #     option is `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data
    #     to .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility
    #     state can be either `COLLAPSED` or `EXPANDED`. This option is
    #     `COLLAPSED` by default.
    #   @return [Types::DashboardPublishOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardDefinitionResponse AWS API Documentation
    #
    class DescribeDashboardDefinitionResponse < Struct.new(
      :dashboard_id,
      :errors,
      :name,
      :resource_status,
      :theme_arn,
      :definition,
      :status,
      :request_id,
      :dashboard_publish_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard that you're describing permissions for.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard, also added to the IAM policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissionsRequest AWS API Documentation
    #
    class DescribeDashboardPermissionsRequest < Struct.new(
      :aws_account_id,
      :dashboard_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A structure that contains the permissions for the dashboard.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] link_sharing_configuration
    #   A structure that contains the configuration of a shareable link that
    #   grants access to the dashboard. Your users can use the link to view
    #   and interact with the dashboard, if the dashboard has been shared
    #   with them. For more information about sharing dashboards, see
    #   [Sharing Dashboards][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sharing-a-dashboard.html
    #   @return [Types::LinkSharingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardPermissionsResponse AWS API Documentation
    #
    class DescribeDashboardPermissionsResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :permissions,
      :status,
      :request_id,
      :link_sharing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number for the dashboard. If a version number isn't
    #   passed, the latest published dashboard version is described.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardRequest AWS API Documentation
    #
    class DescribeDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard
    #   Information about the dashboard.
    #   @return [Types::Dashboard]
    #
    # @!attribute [rw] status
    #   The HTTP status of this request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDashboardResponse AWS API Documentation
    #
    class DescribeDashboardResponse < Struct.new(
      :dashboard,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetPermissionsRequest AWS API Documentation
    #
    class DescribeDataSetPermissionsRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetPermissionsResponse AWS API Documentation
    #
    class DescribeDataSetPermissionsResponse < Struct.new(
      :data_set_arn,
      :data_set_id,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetRefreshPropertiesRequest AWS API Documentation
    #
    class DescribeDataSetRefreshPropertiesRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] data_set_refresh_properties
    #   The dataset refresh properties.
    #   @return [Types::DataSetRefreshProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetRefreshPropertiesResponse AWS API Documentation
    #
    class DescribeDataSetRefreshPropertiesResponse < Struct.new(
      :request_id,
      :status,
      :data_set_refresh_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetRequest AWS API Documentation
    #
    class DescribeDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set
    #   Information on the dataset.
    #   @return [Types::DataSet]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSetResponse AWS API Documentation
    #
    class DescribeDataSetResponse < Struct.new(
      :data_set,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourcePermissionsRequest AWS API Documentation
    #
    class DescribeDataSourcePermissionsRequest < Struct.new(
      :aws_account_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the data source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourcePermissionsResponse AWS API Documentation
    #
    class DescribeDataSourcePermissionsResponse < Struct.new(
      :data_source_arn,
      :data_source_id,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourceRequest AWS API Documentation
    #
    class DescribeDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The information on the data source.
    #   @return [Types::DataSource]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeDataSourceResponse AWS API Documentation
    #
    class DescribeDataSourceResponse < Struct.new(
      :data_source,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderPermissionsRequest AWS API Documentation
    #
    class DescribeFolderPermissionsRequest < Struct.new(
      :aws_account_id,
      :folder_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the folder.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Information about the permissions on the folder.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderPermissionsResponse AWS API Documentation
    #
    class DescribeFolderPermissionsResponse < Struct.new(
      :status,
      :folder_id,
      :arn,
      :permissions,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderRequest AWS API Documentation
    #
    class DescribeFolderRequest < Struct.new(
      :aws_account_id,
      :folder_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderResolvedPermissionsRequest AWS API Documentation
    #
    class DescribeFolderResolvedPermissionsRequest < Struct.new(
      :aws_account_id,
      :folder_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the folder.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Information about the permissions for the folder.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderResolvedPermissionsResponse AWS API Documentation
    #
    class DescribeFolderResolvedPermissionsResponse < Struct.new(
      :status,
      :folder_id,
      :arn,
      :permissions,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] folder
    #   Information about the folder.
    #   @return [Types::Folder]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeFolderResponse AWS API Documentation
    #
    class DescribeFolderResponse < Struct.new(
      :status,
      :folder,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_name
    #   The user name of the user that you want to search for.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group that you want to search.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that includes the group you are searching within.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupMembershipRequest AWS API Documentation
    #
    class DescribeGroupMembershipRequest < Struct.new(
      :member_name,
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_member
    #   A member of an Amazon QuickSight group. Currently, group members
    #   must be users. Groups can't be members of another group. .
    #   @return [Types::GroupMember]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupMembershipResponse AWS API Documentation
    #
    class DescribeGroupMembershipResponse < Struct.new(
      :group_member,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the group that you want described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupRequest AWS API Documentation
    #
    class DescribeGroupRequest < Struct.new(
      :group_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeGroupResponse AWS API Documentation
    #
    class DescribeGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   assignment that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment, also called a rule.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that contains the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIAMPolicyAssignmentRequest AWS API Documentation
    #
    class DescribeIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_policy_assignment
    #   Information describing the IAM policy assignment.
    #   @return [Types::IAMPolicyAssignment]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIAMPolicyAssignmentResponse AWS API Documentation
    #
    class DescribeIAMPolicyAssignmentResponse < Struct.new(
      :iam_policy_assignment,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   An ID for the ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIngestionRequest AWS API Documentation
    #
    class DescribeIngestionRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :ingestion_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestion
    #   Information about the ingestion.
    #   @return [Types::Ingestion]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIngestionResponse AWS API Documentation
    #
    class DescribeIngestionResponse < Struct.new(
      :ingestion,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP
    #   rules.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIpRestrictionRequest AWS API Documentation
    #
    class DescribeIpRestrictionRequest < Struct.new(
      :aws_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP
    #   rules.
    #   @return [String]
    #
    # @!attribute [rw] ip_restriction_rule_map
    #   A map that describes the IP rules with CIDR range and description.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enabled
    #   A value that specifies whether IP rules are turned on.
    #   @return [Boolean]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeIpRestrictionResponse AWS API Documentation
    #
    class DescribeIpRestrictionResponse < Struct.new(
      :aws_account_id,
      :ip_restriction_rule_map,
      :enabled,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the Amazon
    #   QuickSight namespace that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeNamespaceRequest AWS API Documentation
    #
    class DescribeNamespaceRequest < Struct.new(
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The information about the namespace that you're describing. The
    #   response includes the namespace ARN, name, Amazon Web Services
    #   Region, creation status, and identity store. `DescribeNamespace`
    #   also works for namespaces that are in the process of being created.
    #   For incomplete namespaces, this API operation lists the namespace
    #   error types and messages associated with the creation process.
    #   @return [Types::NamespaceInfoV2]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeNamespaceResponse AWS API Documentation
    #
    class DescribeNamespaceResponse < Struct.new(
      :namespace,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] schedule_id
    #   The ID of the refresh schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeRefreshScheduleRequest AWS API Documentation
    #
    class DescribeRefreshScheduleRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :schedule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] refresh_schedule
    #   The refresh schedule.
    #   @return [Types::RefreshSchedule]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the refresh schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeRefreshScheduleResponse AWS API Documentation
    #
    class DescribeRefreshScheduleResponse < Struct.new(
      :refresh_schedule,
      :status,
      :request_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   alias that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name of the template alias that you want to describe. If you
    #   name a specific alias, you describe the version that the alias
    #   points to. You can specify the latest version of the template by
    #   providing the keyword `$LATEST` in the `AliasName` parameter. The
    #   keyword `$PUBLISHED` doesn't apply to templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateAliasRequest AWS API Documentation
    #
    class DescribeTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias
    #   Information about the template alias.
    #   @return [Types::TemplateAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateAliasResponse AWS API Documentation
    #
    class DescribeTemplateAliasResponse < Struct.new(
      :template_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   template. You must be using the Amazon Web Services account that the
    #   template is in.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the template.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias of the template that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to.
    #   You can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateDefinitionRequest AWS API Documentation
    #
    class DescribeTemplateDefinitionRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The descriptive name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template described.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   Errors associated with the template version.
    #   @return [Array<Types::TemplateError>]
    #
    # @!attribute [rw] resource_status
    #   Status associated with the template.
    #
    #   * `CREATION_IN_PROGRESS`
    #
    #   * `CREATION_SUCCESSFUL`
    #
    #   * `CREATION_FAILED`
    #
    #   * `UPDATE_IN_PROGRESS`
    #
    #   * `UPDATE_SUCCESSFUL`
    #
    #   * `UPDATE_FAILED`
    #
    #   * `DELETED`
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme of the template.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of the template.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #   @return [Types::TemplateVersionDefinition]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateDefinitionResponse AWS API Documentation
    #
    class DescribeTemplateDefinitionResponse < Struct.new(
      :name,
      :template_id,
      :errors,
      :resource_status,
      :theme_arn,
      :definition,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplatePermissionsRequest AWS API Documentation
    #
    class DescribeTemplatePermissionsRequest < Struct.new(
      :aws_account_id,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions to be set on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplatePermissionsResponse AWS API Documentation
    #
    class DescribeTemplatePermissionsResponse < Struct.new(
      :template_id,
      :template_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   (Optional) The number for the version to describe. If a
    #   `VersionNumber` parameter value isn't provided, the latest version
    #   of the template is described.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias of the template that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to.
    #   You can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateRequest AWS API Documentation
    #
    class DescribeTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template
    #   The template structure for the object you want to describe.
    #   @return [Types::Template]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTemplateResponse AWS API Documentation
    #
    class DescribeTemplateResponse < Struct.new(
      :template,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name of the theme alias that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeAliasRequest AWS API Documentation
    #
    class DescribeThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias
    #   Information about the theme alias.
    #   @return [Types::ThemeAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeAliasResponse AWS API Documentation
    #
    class DescribeThemeAliasResponse < Struct.new(
      :theme_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme that you want to describe permissions for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemePermissionsRequest AWS API Documentation
    #
    class DescribeThemePermissionsRequest < Struct.new(
      :aws_account_id,
      :theme_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions set on the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemePermissionsResponse AWS API Documentation
    #
    class DescribeThemePermissionsResponse < Struct.new(
      :theme_id,
      :theme_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   that you're describing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number for the version to describe. If a `VersionNumber`
    #   parameter value isn't provided, the latest version of the theme is
    #   described.
    #   @return [Integer]
    #
    # @!attribute [rw] alias_name
    #   The alias of the theme that you want to describe. If you name a
    #   specific alias, you describe the version that the alias points to.
    #   You can specify the latest version of the theme by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to themes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeRequest AWS API Documentation
    #
    class DescribeThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :version_number,
      :alias_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme
    #   The information about the theme that you are describing.
    #   @return [Types::Theme]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeThemeResponse AWS API Documentation
    #
    class DescribeThemeResponse < Struct.new(
      :theme,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   that you want described.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicPermissionsRequest AWS API Documentation
    #
    class DescribeTopicPermissionsRequest < Struct.new(
      :aws_account_id,
      :topic_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions that are configured to the topic.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicPermissionsResponse AWS API Documentation
    #
    class DescribeTopicPermissionsResponse < Struct.new(
      :topic_id,
      :topic_arn,
      :permissions,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] refresh_id
    #   The ID of the refresh, which is performed when the topic is created
    #   or updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefreshRequest AWS API Documentation
    #
    class DescribeTopicRefreshRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :refresh_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] refresh_details
    #   Details of the refresh, which is performed when the topic is created
    #   or updated.
    #   @return [Types::TopicRefreshDetails]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefreshResponse AWS API Documentation
    #
    class DescribeTopicRefreshResponse < Struct.new(
      :refresh_details,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that contains the refresh schedule that you want
    #   to describe. This ID is unique per Amazon Web Services Region for
    #   each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefreshScheduleRequest AWS API Documentation
    #
    class DescribeTopicRefreshScheduleRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :dataset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID of the topic that contains the refresh schedule that you want
    #   to describe. This ID is unique per Amazon Web Services Region for
    #   each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] refresh_schedule
    #   The definition of a refresh schedule.
    #   @return [Types::TopicRefreshSchedule]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRefreshScheduleResponse AWS API Documentation
    #
    class DescribeTopicRefreshScheduleResponse < Struct.new(
      :topic_id,
      :topic_arn,
      :dataset_arn,
      :refresh_schedule,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicRequest AWS API Documentation
    #
    class DescribeTopicRequest < Struct.new(
      :aws_account_id,
      :topic_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to describe. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic
    #   The definition of a topic.
    #   @return [Types::TopicDetails]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeTopicResponse AWS API Documentation
    #
    class DescribeTopicResponse < Struct.new(
      :arn,
      :topic_id,
      :topic,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user that you want to describe.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUserRequest AWS API Documentation
    #
    class DescribeUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user name.
    #   @return [Types::User]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeUserResponse AWS API Documentation
    #
    class DescribeUserResponse < Struct.new(
      :user,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connection that you want described.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeVPCConnectionRequest AWS API Documentation
    #
    class DescribeVPCConnectionRequest < Struct.new(
      :aws_account_id,
      :vpc_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connection
    #   A response object that provides information for the specified VPC
    #   connection.
    #   @return [Types::VPCConnection]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DescribeVPCConnectionResponse AWS API Documentation
    #
    class DescribeVPCConnectionResponse < Struct.new(
      :vpc_connection,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of destination parameter values.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] custom_values_configuration
    #   The configuration of custom values for destination parameter in
    #   `DestinationParameterValueConfiguration`.
    #   @return [Types::CustomValuesConfiguration]
    #
    # @!attribute [rw] select_all_value_options
    #   The configuration that selects all options.
    #   @return [String]
    #
    # @!attribute [rw] source_parameter_name
    #   The source parameter name of the destination parameter.
    #   @return [String]
    #
    # @!attribute [rw] source_field
    #   The source field ID of the destination parameter.
    #   @return [String]
    #
    # @!attribute [rw] source_column
    #   A column of a data set.
    #   @return [Types::ColumnIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DestinationParameterValueConfiguration AWS API Documentation
    #
    class DestinationParameterValueConfiguration < Struct.new(
      :custom_values_configuration,
      :select_all_value_options,
      :source_parameter_name,
      :source_field,
      :source_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimension type field.
    #
    # @!attribute [rw] numerical_dimension_field
    #   The dimension type field with numerical type columns.
    #   @return [Types::NumericalDimensionField]
    #
    # @!attribute [rw] categorical_dimension_field
    #   The dimension type field with categorical type columns.
    #   @return [Types::CategoricalDimensionField]
    #
    # @!attribute [rw] date_dimension_field
    #   The dimension type field with date type columns.
    #   @return [Types::DateDimensionField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DimensionField AWS API Documentation
    #
    class DimensionField < Struct.new(
      :numerical_dimension_field,
      :categorical_dimension_field,
      :date_dimension_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents additional options for display formatting.
    #
    # @!attribute [rw] use_blank_cell_format
    #   A Boolean value that indicates whether to use blank cell format.
    #   @return [Boolean]
    #
    # @!attribute [rw] blank_cell_format
    #   Determines the blank cell format.
    #   @return [String]
    #
    # @!attribute [rw] date_format
    #   Determines the `DateTime` format.
    #   @return [String]
    #
    # @!attribute [rw] decimal_separator
    #   Determines the decimal separator.
    #   @return [String]
    #
    # @!attribute [rw] grouping_separator
    #   Determines the grouping separator.
    #   @return [String]
    #
    # @!attribute [rw] use_grouping
    #   A Boolean value that indicates whether to use grouping.
    #   @return [Boolean]
    #
    # @!attribute [rw] fraction_digits
    #   Determines the number of fraction digits.
    #   @return [Integer]
    #
    # @!attribute [rw] prefix
    #   The prefix value for a display format.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   The suffix value for a display format.
    #   @return [String]
    #
    # @!attribute [rw] unit_scaler
    #   The unit scaler. Valid values for this structure are: `NONE`,
    #   `AUTO`, `THOUSANDS`, `MILLIONS`, `BILLIONS`, and `TRILLIONS`.
    #   @return [String]
    #
    # @!attribute [rw] negative_format
    #   The negative format.
    #   @return [Types::NegativeFormat]
    #
    # @!attribute [rw] currency_symbol
    #   The currency symbol, such as `USD`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DisplayFormatOptions AWS API Documentation
    #
    class DisplayFormatOptions < Struct.new(
      :use_blank_cell_format,
      :blank_cell_format,
      :date_format,
      :decimal_separator,
      :grouping_separator,
      :use_grouping,
      :fraction_digits,
      :prefix,
      :suffix,
      :unit_scaler,
      :negative_format,
      :currency_symbol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The domain specified isn't on the allow list. All domains for
    # embedded dashboards must be added to the approved list by an Amazon
    # QuickSight admin.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DomainNotWhitelistedException AWS API Documentation
    #
    class DomainNotWhitelistedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label options of the label that is displayed in the center of a
    # donut chart. This option isn't available for pie charts.
    #
    # @!attribute [rw] label_visibility
    #   Determines the visibility of the label in a donut chart. In the
    #   Amazon QuickSight console, this option is called `'Show total'`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DonutCenterOptions AWS API Documentation
    #
    class DonutCenterOptions < Struct.new(
      :label_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for configuring a donut chart or pie chart.
    #
    # @!attribute [rw] arc_options
    #   The option for define the arc of the chart shape. Valid values are
    #   as follows:
    #
    #   * `WHOLE` - A pie chart
    #
    #   * `SMALL`- A small-sized donut chart
    #
    #   * `MEDIUM`- A medium-sized donut chart
    #
    #   * `LARGE`- A large-sized donut chart
    #   @return [Types::ArcOptions]
    #
    # @!attribute [rw] donut_center_options
    #   The label options of the label that is displayed in the center of a
    #   donut chart. This option isn't available for pie charts.
    #   @return [Types::DonutCenterOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DonutOptions AWS API Documentation
    #
    class DonutOptions < Struct.new(
      :arc_options,
      :donut_center_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The drill down filter for the column hierarchies.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] numeric_equality_filter
    #   The numeric equality type drill down filter. This filter is used for
    #   number type columns.
    #   @return [Types::NumericEqualityDrillDownFilter]
    #
    # @!attribute [rw] category_filter
    #   The category type drill down filter. This filter is used for string
    #   type columns.
    #   @return [Types::CategoryDrillDownFilter]
    #
    # @!attribute [rw] time_range_filter
    #   The time range drill down filter. This filter is used for date time
    #   columns.
    #   @return [Types::TimeRangeDrillDownFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DrillDownFilter AWS API Documentation
    #
    class DrillDownFilter < Struct.new(
      :numeric_equality_filter,
      :category_filter,
      :time_range_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options of a control.
    #
    # @!attribute [rw] select_all_options
    #   The configuration of the `Select all` options in a dropdown control.
    #   @return [Types::ListControlSelectAllOptions]
    #
    # @!attribute [rw] title_options
    #   The options to configure the title visibility, name, and font size.
    #   @return [Types::LabelOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DropDownControlDisplayOptions AWS API Documentation
    #
    class DropDownControlDisplayOptions < Struct.new(
      :select_all_options,
      :title_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines different defaults to the users or groups based on mapping.
    #
    # @!attribute [rw] user_name_column
    #   The column that contains the username.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] group_name_column
    #   The column that contains the group name.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] default_value_column
    #   The column that contains the default value of each user or group.
    #   @return [Types::ColumnIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/DynamicDefaultValue AWS API Documentation
    #
    class DynamicDefaultValue < Struct.new(
      :user_name_column,
      :group_name_column,
      :default_value_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # An empty visual.
    #
    # Empty visuals are used in layouts but have not been configured to show
    # any data. A new visual created in the Amazon QuickSight console is
    # considered an `EmptyVisual` until a visual type is selected.
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] data_set_identifier
    #   The data set that is used in the empty visual. Every visual requires
    #   a dataset to render.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/EmptyVisual AWS API Documentation
    #
    class EmptyVisual < Struct.new(
      :visual_id,
      :data_set_identifier,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object, structure, or sub-structure of an analysis, template, or
    # dashboard.
    #
    # @!attribute [rw] path
    #   The hierarchical path of the entity within the analysis, template,
    #   or dashboard definition tree.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information for the SPICE ingestion of a dataset.
    #
    # @!attribute [rw] type
    #   Error type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The required parameters for connecting to an Exasol data source.
    #
    # @!attribute [rw] host
    #   The hostname or IP address of the Exasol data source.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port for the Exasol data source.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ExasolParameters AWS API Documentation
    #
    class ExasolParameters < Struct.new(
      :host,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The exclude period of `TimeRangeFilter` or `RelativeDatesFilter`.
    #
    # @!attribute [rw] amount
    #   The amount or number of the exclude period.
    #   @return [Integer]
    #
    # @!attribute [rw] granularity
    #   The granularity or unit (day, month, year) of the exclude period.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the exclude period. Choose from the following options:
    #
    #   * `ENABLED`
    #
    #   * `DISABLED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ExcludePeriodConfiguration AWS API Documentation
    #
    class ExcludePeriodConfiguration < Struct.new(
      :amount,
      :granularity,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the hierarchy of the fields that are built
    # within a visual's field wells. These fields can't be duplicated to
    # other visuals.
    #
    # @!attribute [rw] hierarchy_id
    #   The hierarchy ID of the explicit hierarchy.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   The list of columns that define the explicit hierarchy.
    #   @return [Array<Types::ColumnIdentifier>]
    #
    # @!attribute [rw] drill_down_filters
    #   The option that determines the drill down filters for the explicit
    #   hierarchy.
    #   @return [Array<Types::DrillDownFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ExplicitHierarchy AWS API Documentation
    #
    class ExplicitHierarchy < Struct.new(
      :hierarchy_id,
      :columns,
      :drill_down_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines if hidden fields are included in an exported dashboard.
    #
    # @!attribute [rw] availability_status
    #   The status of the export hidden fields options of a dashbaord.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ExportHiddenFieldsOption AWS API Documentation
    #
    class ExportHiddenFieldsOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Export to .csv option.
    #
    # @!attribute [rw] availability_status
    #   Availability status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ExportToCSVOption AWS API Documentation
    #
    class ExportToCSVOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether or not hidden fields are visible on exported
    # dashbaords.
    #
    # @!attribute [rw] availability_status
    #   The status of the export with hidden fields options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ExportWithHiddenFieldsOption AWS API Documentation
    #
    class ExportWithHiddenFieldsOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The setup for the detailed tooltip.
    #
    # @!attribute [rw] aggregation_visibility
    #   The visibility of `Show aggregations`.
    #   @return [String]
    #
    # @!attribute [rw] tooltip_title_type
    #   The type for the &gt;tooltip title. Choose one of the following
    #   options:
    #
    #   * `NONE`: Doesn't use the primary value as the title.
    #
    #   * `PRIMARY_VALUE`: Uses primary value as the title.
    #   @return [String]
    #
    # @!attribute [rw] tooltip_fields
    #   The fields configuration in the tooltip.
    #   @return [Array<Types::TooltipItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FieldBasedTooltip AWS API Documentation
    #
    class FieldBasedTooltip < Struct.new(
      :aggregation_visibility,
      :tooltip_title_type,
      :tooltip_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # A FieldFolder element is a folder that contains fields and nested
    # subfolders.
    #
    # @!attribute [rw] description
    #   The description for a field folder.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   A folder has a list of columns. A column can only be in one folder.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FieldFolder AWS API Documentation
    #
    class FieldFolder < Struct.new(
      :description,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field label type.
    #
    # @!attribute [rw] field_id
    #   Indicates the field that is targeted by the field label.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the field label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FieldLabelType AWS API Documentation
    #
    class FieldLabelType < Struct.new(
      :field_id,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field series item configuration of a line chart.
    #
    # @!attribute [rw] field_id
    #   The field ID of the field for which you are setting the axis
    #   binding.
    #   @return [String]
    #
    # @!attribute [rw] axis_binding
    #   The axis that you are binding the field to.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The options that determine the presentation of line series
    #   associated to the field.
    #   @return [Types::LineChartSeriesSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FieldSeriesItem AWS API Documentation
    #
    class FieldSeriesItem < Struct.new(
      :field_id,
      :axis_binding,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration for a field in a field well.
    #
    # @!attribute [rw] field_id
    #   The sort configuration target field.
    #   @return [String]
    #
    # @!attribute [rw] direction
    #   The sort direction. Choose one of the following options:
    #
    #   * `ASC`: Ascending
    #
    #   * `DESC`: Descending
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FieldSort AWS API Documentation
    #
    class FieldSort < Struct.new(
      :field_id,
      :direction)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field sort options in a chart configuration.
    #
    # @!attribute [rw] field_sort
    #   The sort configuration for a field in a field well.
    #   @return [Types::FieldSort]
    #
    # @!attribute [rw] column_sort
    #   The sort configuration for a column that is not used in a field
    #   well.
    #   @return [Types::ColumnSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FieldSortOptions AWS API Documentation
    #
    class FieldSortOptions < Struct.new(
      :field_sort,
      :column_sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tooltip item for the fields.
    #
    # @!attribute [rw] field_id
    #   The unique ID of the field that is targeted by the tooltip.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label of the tooltip item.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the tooltip item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FieldTooltipItem AWS API Documentation
    #
    class FieldTooltipItem < Struct.new(
      :field_id,
      :label,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field well of the filled map.
    #
    # @!attribute [rw] geospatial
    #   The aggregated location field well of the filled map. Values are
    #   grouped by location fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The aggregated color field well of a filled map. Values are
    #   aggregated based on location fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapAggregatedFieldWells AWS API Documentation
    #
    class FilledMapAggregatedFieldWells < Struct.new(
      :geospatial,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting of a `FilledMapVisual`.
    #
    # @!attribute [rw] conditional_formatting_options
    #   Conditional formatting options of a `FilledMapVisual`.
    #   @return [Array<Types::FilledMapConditionalFormattingOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapConditionalFormatting AWS API Documentation
    #
    class FilledMapConditionalFormatting < Struct.new(
      :conditional_formatting_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conditional formatting options of a `FilledMapVisual`.
    #
    # @!attribute [rw] shape
    #   The conditional formatting that determines the shape of the filled
    #   map.
    #   @return [Types::FilledMapShapeConditionalFormatting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapConditionalFormattingOption AWS API Documentation
    #
    class FilledMapConditionalFormattingOption < Struct.new(
      :shape)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a `FilledMapVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::FilledMapFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a `FilledMapVisual`.
    #   @return [Types::FilledMapSortConfiguration]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] window_options
    #   The window options of the filled map visual.
    #   @return [Types::GeospatialWindowOptions]
    #
    # @!attribute [rw] map_style_options
    #   The map style options of the filled map visual.
    #   @return [Types::GeospatialMapStyleOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapConfiguration AWS API Documentation
    #
    class FilledMapConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :legend,
      :tooltip,
      :window_options,
      :map_style_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of a `FilledMapVisual`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] filled_map_aggregated_field_wells
    #   The aggregated field well of the filled map.
    #   @return [Types::FilledMapAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapFieldWells AWS API Documentation
    #
    class FilledMapFieldWells < Struct.new(
      :filled_map_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting that determines the shape of the filled
    # map.
    #
    # @!attribute [rw] field_id
    #   The field ID of the filled map shape.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The conditional formatting that determines the background color of a
    #   filled map's shape.
    #   @return [Types::ShapeConditionalFormat]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapShapeConditionalFormatting AWS API Documentation
    #
    class FilledMapShapeConditionalFormatting < Struct.new(
      :field_id,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a `FilledMapVisual`.
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of the location fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapSortConfiguration AWS API Documentation
    #
    class FilledMapSortConfiguration < Struct.new(
      :category_sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filled map.
    #
    # For more information, see [Creating filled maps][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/filled-maps.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::FilledMapConfiguration]
    #
    # @!attribute [rw] conditional_formatting
    #   The conditional formatting of a `FilledMapVisual`.
    #   @return [Types::FilledMapConditionalFormatting]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilledMapVisual AWS API Documentation
    #
    class FilledMapVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :conditional_formatting,
      :column_hierarchies,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # With a `Filter`, you can remove portions of data from a particular
    # visual or view.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] category_filter
    #   A `CategoryFilter` filters text values.
    #
    #   For more information, see [Adding text filters][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/add-a-text-filter-data-prep.html
    #   @return [Types::CategoryFilter]
    #
    # @!attribute [rw] numeric_range_filter
    #   A `NumericRangeFilter` filters numeric values that are either inside
    #   or outside a given numeric range.
    #   @return [Types::NumericRangeFilter]
    #
    # @!attribute [rw] numeric_equality_filter
    #   A `NumericEqualityFilter` filters numeric values that equal or do
    #   not equal a given numeric value.
    #   @return [Types::NumericEqualityFilter]
    #
    # @!attribute [rw] time_equality_filter
    #   A `TimeEqualityFilter` filters date-time values that equal or do not
    #   equal a given date/time value.
    #   @return [Types::TimeEqualityFilter]
    #
    # @!attribute [rw] time_range_filter
    #   A `TimeRangeFilter` filters date-time values that are either inside
    #   or outside a given date/time range.
    #   @return [Types::TimeRangeFilter]
    #
    # @!attribute [rw] relative_dates_filter
    #   A `RelativeDatesFilter` filters date values that are relative to a
    #   given date.
    #   @return [Types::RelativeDatesFilter]
    #
    # @!attribute [rw] top_bottom_filter
    #   A `TopBottomFilter` filters data to the top or bottom values for a
    #   given column.
    #   @return [Types::TopBottomFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :category_filter,
      :numeric_range_filter,
      :numeric_equality_filter,
      :time_equality_filter,
      :time_range_filter,
      :relative_dates_filter,
      :top_bottom_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The control of a filter that is used to interact with a dashboard or
    # an analysis.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] date_time_picker
    #   A control from a date filter that is used to specify date and time.
    #   @return [Types::FilterDateTimePickerControl]
    #
    # @!attribute [rw] list
    #   A control to display a list of buttons or boxes. This is used to
    #   select either a single value or multiple values.
    #   @return [Types::FilterListControl]
    #
    # @!attribute [rw] dropdown
    #   A control to display a dropdown list with buttons that are used to
    #   select a single value.
    #   @return [Types::FilterDropDownControl]
    #
    # @!attribute [rw] text_field
    #   A control to display a text box that is used to enter a single
    #   entry.
    #   @return [Types::FilterTextFieldControl]
    #
    # @!attribute [rw] text_area
    #   A control to display a text box that is used to enter multiple
    #   entries.
    #   @return [Types::FilterTextAreaControl]
    #
    # @!attribute [rw] slider
    #   A control to display a horizontal toggle bar. This is used to change
    #   a value by sliding the toggle.
    #   @return [Types::FilterSliderControl]
    #
    # @!attribute [rw] relative_date_time
    #   A control from a date filter that is used to specify the relative
    #   date.
    #   @return [Types::FilterRelativeDateTimeControl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterControl AWS API Documentation
    #
    class FilterControl < Struct.new(
      :date_time_picker,
      :list,
      :dropdown,
      :text_field,
      :text_area,
      :slider,
      :relative_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control from a date filter that is used to specify date and time.
    #
    # @!attribute [rw] filter_control_id
    #   The ID of the `FilterDateTimePickerControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `FilterDateTimePickerControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_filter_id
    #   The source filter ID of the `FilterDateTimePickerControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::DateTimePickerControlDisplayOptions]
    #
    # @!attribute [rw] type
    #   The date time picker type of a `FilterDateTimePickerControl`. Choose
    #   one of the following options:
    #
    #   * `SINGLE_VALUED`: The filter condition is a fixed date.
    #
    #   * `DATE_RANGE`: The filter condition is a date time range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterDateTimePickerControl AWS API Documentation
    #
    class FilterDateTimePickerControl < Struct.new(
      :filter_control_id,
      :title,
      :source_filter_id,
      :display_options,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a dropdown list with buttons that are used to
    # select a single value.
    #
    # @!attribute [rw] filter_control_id
    #   The ID of the `FilterDropDownControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `FilterDropDownControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_filter_id
    #   The source filter ID of the `FilterDropDownControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of the `FilterDropDownControl`.
    #   @return [Types::DropDownControlDisplayOptions]
    #
    # @!attribute [rw] type
    #   The type of the `FilterDropDownControl`. Choose one of the following
    #   options:
    #
    #   * `MULTI_SELECT`: The user can select multiple entries from a
    #     dropdown menu.
    #
    #   * `SINGLE_SELECT`: The user can select a single entry from a
    #     dropdown menu.
    #   @return [String]
    #
    # @!attribute [rw] selectable_values
    #   A list of selectable values that are used in a control.
    #   @return [Types::FilterSelectableValues]
    #
    # @!attribute [rw] cascading_control_configuration
    #   The values that are displayed in a control can be configured to only
    #   show values that are valid based on what's selected in other
    #   controls.
    #   @return [Types::CascadingControlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterDropDownControl AWS API Documentation
    #
    class FilterDropDownControl < Struct.new(
      :filter_control_id,
      :title,
      :source_filter_id,
      :display_options,
      :type,
      :selectable_values,
      :cascading_control_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A grouping of individual filters. Filter groups are applied to the
    # same group of visuals.
    #
    # For more information, see [Adding filter conditions (group filters)
    # with AND and OR operators][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/add-a-compound-filter.html
    #
    # @!attribute [rw] filter_group_id
    #   The value that uniquely identifies a `FilterGroup` within a
    #   dashboard, template, or analysis.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The list of filters that are present in a `FilterGroup`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] scope_configuration
    #   The configuration that specifies what scope to apply to a
    #   `FilterGroup`.
    #
    #   This is a union type structure. For this structure to be valid, only
    #   one of the attributes can be defined.
    #   @return [Types::FilterScopeConfiguration]
    #
    # @!attribute [rw] status
    #   The status of the `FilterGroup`.
    #   @return [String]
    #
    # @!attribute [rw] cross_dataset
    #   The filter new feature which can apply filter group to all data
    #   sets. Choose one of the following options:
    #
    #   * `ALL_DATASETS`
    #
    #   * `SINGLE_DATASET`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterGroup AWS API Documentation
    #
    class FilterGroup < Struct.new(
      :filter_group_id,
      :filters,
      :scope_configuration,
      :status,
      :cross_dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of filter configurations.
    #
    # @!attribute [rw] match_operator
    #   The match operator that is used to determine if a filter should be
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] category_values
    #   The list of category values for the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] select_all_options
    #   Select all of the values. Null is not the assigned value of select
    #   all.
    #
    #   * `FILTER_ALL_VALUES`
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterListConfiguration AWS API Documentation
    #
    class FilterListConfiguration < Struct.new(
      :match_operator,
      :category_values,
      :select_all_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a list of buttons or boxes. This is used to
    # select either a single value or multiple values.
    #
    # @!attribute [rw] filter_control_id
    #   The ID of the `FilterListControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `FilterListControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_filter_id
    #   The source filter ID of the `FilterListControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::ListControlDisplayOptions]
    #
    # @!attribute [rw] type
    #   The type of `FilterListControl`. Choose one of the following
    #   options:
    #
    #   * `MULTI_SELECT`: The user can select multiple entries from the
    #     list.
    #
    #   * `SINGLE_SELECT`: The user can select a single entry from the list.
    #   @return [String]
    #
    # @!attribute [rw] selectable_values
    #   A list of selectable values that are used in a control.
    #   @return [Types::FilterSelectableValues]
    #
    # @!attribute [rw] cascading_control_configuration
    #   The values that are displayed in a control can be configured to only
    #   show values that are valid based on what's selected in other
    #   controls.
    #   @return [Types::CascadingControlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterListControl AWS API Documentation
    #
    class FilterListControl < Struct.new(
      :filter_control_id,
      :title,
      :source_filter_id,
      :display_options,
      :type,
      :selectable_values,
      :cascading_control_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that filters rows based on a condition.
    #
    # @!attribute [rw] condition_expression
    #   An expression that must evaluate to a Boolean value. Rows for which
    #   the expression evaluates to true are kept in the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterOperation AWS API Documentation
    #
    class FilterOperation < Struct.new(
      :condition_expression)
      SENSITIVE = [:condition_expression]
      include Aws::Structure
    end

    # The configuration of selected fields in
    # the`CustomActionFilterOperation`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] selected_fields
    #   Chooses the fields that are filtered in
    #   `CustomActionFilterOperation`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selected_field_options
    #   A structure that contains the options that choose which fields are
    #   filtered in the `CustomActionFilterOperation`.
    #
    #   Valid values are defined as follows:
    #
    #   * `ALL_FIELDS`: Applies the filter operation to all fields.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] selected_columns
    #   The selected columns of a dataset.
    #   @return [Array<Types::ColumnIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterOperationSelectedFieldsConfiguration AWS API Documentation
    #
    class FilterOperationSelectedFieldsConfiguration < Struct.new(
      :selected_fields,
      :selected_field_options,
      :selected_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of target visuals that you want to be filtered.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] same_sheet_target_visual_configuration
    #   The configuration of the same-sheet target visuals that you want to
    #   be filtered.
    #   @return [Types::SameSheetTargetVisualConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterOperationTargetVisualsConfiguration AWS API Documentation
    #
    class FilterOperationTargetVisualsConfiguration < Struct.new(
      :same_sheet_target_visual_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control from a date filter that is used to specify the relative
    # date.
    #
    # @!attribute [rw] filter_control_id
    #   The ID of the `FilterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `FilterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_filter_id
    #   The source filter ID of the `FilterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::RelativeDateTimeControlDisplayOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterRelativeDateTimeControl AWS API Documentation
    #
    class FilterRelativeDateTimeControl < Struct.new(
      :filter_control_id,
      :title,
      :source_filter_id,
      :display_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scope configuration for a `FilterGroup`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] selected_sheets
    #   The configuration for applying a filter to specific sheets.
    #   @return [Types::SelectedSheetsFilterScopeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterScopeConfiguration AWS API Documentation
    #
    class FilterScopeConfiguration < Struct.new(
      :selected_sheets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of selectable values that are used in a control.
    #
    # @!attribute [rw] values
    #   The values that are used in the `FilterSelectableValues`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterSelectableValues AWS API Documentation
    #
    class FilterSelectableValues < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a horizontal toggle bar. This is used to change a
    # value by sliding the toggle.
    #
    # @!attribute [rw] filter_control_id
    #   The ID of the `FilterSliderControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `FilterSliderControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_filter_id
    #   The source filter ID of the `FilterSliderControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::SliderControlDisplayOptions]
    #
    # @!attribute [rw] type
    #   The type of `FilterSliderControl`. Choose one of the following
    #   options:
    #
    #   * `SINGLE_POINT`: Filter against(equals) a single data point.
    #
    #   * `RANGE`: Filter data that is in a specified range.
    #   @return [String]
    #
    # @!attribute [rw] maximum_value
    #   The smaller value that is displayed at the left of the slider.
    #   @return [Float]
    #
    # @!attribute [rw] minimum_value
    #   The larger value that is displayed at the right of the slider.
    #   @return [Float]
    #
    # @!attribute [rw] step_size
    #   The number of increments that the slider bar is divided into.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterSliderControl AWS API Documentation
    #
    class FilterSliderControl < Struct.new(
      :filter_control_id,
      :title,
      :source_filter_id,
      :display_options,
      :type,
      :maximum_value,
      :minimum_value,
      :step_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a text box that is used to enter multiple
    # entries.
    #
    # @!attribute [rw] filter_control_id
    #   The ID of the `FilterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `FilterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_filter_id
    #   The source filter ID of the `FilterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   The delimiter that is used to separate the lines in text.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::TextAreaControlDisplayOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterTextAreaControl AWS API Documentation
    #
    class FilterTextAreaControl < Struct.new(
      :filter_control_id,
      :title,
      :source_filter_id,
      :delimiter,
      :display_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a text box that is used to enter a single entry.
    #
    # @!attribute [rw] filter_control_id
    #   The ID of the `FilterTextFieldControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `FilterTextFieldControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_filter_id
    #   The source filter ID of the `FilterTextFieldControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::TextFieldControlDisplayOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FilterTextFieldControl AWS API Documentation
    #
    class FilterTextFieldControl < Struct.new(
      :filter_control_id,
      :title,
      :source_filter_id,
      :display_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A folder in Amazon QuickSight.
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the folder.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_type
    #   The type of folder it is.
    #   @return [String]
    #
    # @!attribute [rw] folder_path
    #   An array of ancestor ARN strings for the folder.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_time
    #   The time that the folder was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the folder was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Folder AWS API Documentation
    #
    class Folder < Struct.new(
      :folder_id,
      :arn,
      :name,
      :folder_type,
      :folder_path,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An asset in a Amazon QuickSight folder, such as a dashboard, analysis,
    # or dataset.
    #
    # @!attribute [rw] member_id
    #   The ID of an asset in the folder.
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   The type of asset that it is.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FolderMember AWS API Documentation
    #
    class FolderMember < Struct.new(
      :member_id,
      :member_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to use to search an Amazon QuickSight folder.
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example `"Operator": "StringEquals"`. Valid values are
    #   `"StringEquals"` and `"StringLike"`.
    #
    #   If you set the operator value to `"StringEquals"`, you need to
    #   provide an ownership related filter in the `"NAME"` field and the
    #   arn of the user or group whose folders you want to search in the
    #   `"Value"` field. For example, `"Name":"DIRECT_QUICKSIGHT_OWNER",
    #   "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1"`.
    #
    #   If you set the value to `"StringLike"`, you need to provide the name
    #   of the folders you are searching for. For example,
    #   `"Name":"FOLDER_NAME", "Operator": "StringLike", "Value": "Test"`.
    #   The `"StringLike"` operator only supports the `NAME` value
    #   `FOLDER_NAME`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a value that you want to use in the filter. For example,
    #   `"Name": "QUICKSIGHT_OWNER"`.
    #
    #   Valid values are defined as follows:
    #
    #   * `QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or group,
    #     and any folders with that ARN listed as one of the folder's
    #     owners or viewers are returned. Implicit permissions from folders
    #     or groups are considered.
    #
    #   * `QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and any
    #     folders with that ARN listed as one of the owners of the folders
    #     are returned. Implicit permissions from folders or groups are
    #     considered.
    #
    #   * `DIRECT_QUICKSIGHT_SOLE_OWNER`: Provide an ARN of a user or group,
    #     and any folders with that ARN listed as the only owner of the
    #     folder are returned. Implicit permissions from folders or groups
    #     are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_OWNER`: Provide an ARN of a user or group, and
    #     any folders with that ARN listed as one of the owners of the
    #     folders are returned. Implicit permissions from folders or groups
    #     are not considered.
    #
    #   * `DIRECT_QUICKSIGHT_VIEWER_OR_OWNER`: Provide an ARN of a user or
    #     group, and any folders with that ARN listed as one of the owners
    #     or viewers of the folders are returned. Implicit permissions from
    #     folders or groups are not considered.
    #
    #   * `FOLDER_NAME`: Any folders whose names have a substring match to
    #     this value will be returned.
    #
    #   * `PARENT_FOLDER_ARN`: Provide an ARN of a folder, and any folders
    #     that are directly under that parent folder are returned. If you
    #     choose to use this option and leave the value blank, all
    #     root-level folders in the account are returned.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item (in this example, `PARENT_FOLDER_ARN`),
    #   that you want to use as a filter. For example, `"Value":
    #   "arn:aws:quicksight:us-east-1:1:folder/folderId"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FolderSearchFilter AWS API Documentation
    #
    class FolderSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about an existing Amazon QuickSight folder.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_type
    #   The type of folder.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the folder was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the folder was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FolderSummary AWS API Documentation
    #
    class FolderSummary < Struct.new(
      :arn,
      :folder_id,
      :name,
      :folder_type,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the font settings.
    #
    # @!attribute [rw] font_family
    #   Determines the font family settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Font AWS API Documentation
    #
    class Font < Struct.new(
      :font_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the display properties of the given text.
    #
    # @!attribute [rw] font_size
    #   The option that determines the text display size.
    #   @return [Types::FontSize]
    #
    # @!attribute [rw] font_decoration
    #   Determines the appearance of decorative lines on the text.
    #   @return [String]
    #
    # @!attribute [rw] font_color
    #   Determines the color of the text.
    #   @return [String]
    #
    # @!attribute [rw] font_weight
    #   The option that determines the text display weight, or boldness.
    #   @return [Types::FontWeight]
    #
    # @!attribute [rw] font_style
    #   Determines the text display face that is inherited by the given font
    #   family.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FontConfiguration AWS API Documentation
    #
    class FontConfiguration < Struct.new(
      :font_size,
      :font_decoration,
      :font_color,
      :font_weight,
      :font_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the text display size.
    #
    # @!attribute [rw] relative
    #   The lexical name for the text size, proportional to its surrounding
    #   context.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FontSize AWS API Documentation
    #
    class FontSize < Struct.new(
      :relative)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the text display weight, or boldness.
    #
    # @!attribute [rw] name
    #   The lexical name for the level of boldness of the text display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FontWeight AWS API Documentation
    #
    class FontWeight < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The forecast computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @!attribute [rw] periods_forward
    #   The periods forward setup of a forecast computation.
    #   @return [Integer]
    #
    # @!attribute [rw] periods_backward
    #   The periods backward setup of a forecast computation.
    #   @return [Integer]
    #
    # @!attribute [rw] upper_boundary
    #   The upper boundary setup of a forecast computation.
    #   @return [Float]
    #
    # @!attribute [rw] lower_boundary
    #   The lower boundary setup of a forecast computation.
    #   @return [Float]
    #
    # @!attribute [rw] prediction_interval
    #   The prediction interval setup of a forecast computation.
    #   @return [Integer]
    #
    # @!attribute [rw] seasonality
    #   The seasonality setup of a forecast computation. Choose one of the
    #   following options:
    #
    #   * `AUTOMATIC`
    #
    #   * `CUSTOM`: Checks the custom seasonality value.
    #   @return [String]
    #
    # @!attribute [rw] custom_seasonality_value
    #   The custom seasonality value setup of a forecast computation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ForecastComputation AWS API Documentation
    #
    class ForecastComputation < Struct.new(
      :computation_id,
      :name,
      :time,
      :value,
      :periods_forward,
      :periods_backward,
      :upper_boundary,
      :lower_boundary,
      :prediction_interval,
      :seasonality,
      :custom_seasonality_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The forecast configuration that is used in a line chart's display
    # properties.
    #
    # @!attribute [rw] forecast_properties
    #   The forecast properties setup of a forecast in the line chart.
    #   @return [Types::TimeBasedForecastProperties]
    #
    # @!attribute [rw] scenario
    #   The forecast scenario of a forecast in the line chart.
    #   @return [Types::ForecastScenario]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ForecastConfiguration AWS API Documentation
    #
    class ForecastConfiguration < Struct.new(
      :forecast_properties,
      :scenario)
      SENSITIVE = []
      include Aws::Structure
    end

    # The forecast scenario of a forecast in the line chart.
    #
    # @!attribute [rw] what_if_point_scenario
    #   The what-if analysis forecast setup with the target date.
    #   @return [Types::WhatIfPointScenario]
    #
    # @!attribute [rw] what_if_range_scenario
    #   The what-if analysis forecast setup with the date range.
    #   @return [Types::WhatIfRangeScenario]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ForecastScenario AWS API Documentation
    #
    class ForecastScenario < Struct.new(
      :what_if_point_scenario,
      :what_if_range_scenario)
      SENSITIVE = []
      include Aws::Structure
    end

    # The formatting configuration for all types of field.
    #
    # @!attribute [rw] string_format_configuration
    #   Formatting configuration for string fields.
    #   @return [Types::StringFormatConfiguration]
    #
    # @!attribute [rw] number_format_configuration
    #   Formatting configuration for number fields.
    #   @return [Types::NumberFormatConfiguration]
    #
    # @!attribute [rw] date_time_format_configuration
    #   Formatting configuration for `DateTime` fields.
    #   @return [Types::DateTimeFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FormatConfiguration AWS API Documentation
    #
    class FormatConfiguration < Struct.new(
      :string_format_configuration,
      :number_format_configuration,
      :date_time_format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration options for the canvas of a free-form layout.
    #
    # @!attribute [rw] screen_canvas_size_options
    #   The options that determine the sizing of the canvas used in a
    #   free-form layout.
    #   @return [Types::FreeFormLayoutScreenCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FreeFormLayoutCanvasSizeOptions AWS API Documentation
    #
    class FreeFormLayoutCanvasSizeOptions < Struct.new(
      :screen_canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a free-form layout.
    #
    # @!attribute [rw] elements
    #   The elements that are included in a free-form layout.
    #   @return [Array<Types::FreeFormLayoutElement>]
    #
    # @!attribute [rw] canvas_size_options
    #   Configuration options for the canvas of a free-form layout.
    #   @return [Types::FreeFormLayoutCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FreeFormLayoutConfiguration AWS API Documentation
    #
    class FreeFormLayoutConfiguration < Struct.new(
      :elements,
      :canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # An element within a free-form layout.
    #
    # @!attribute [rw] element_id
    #   A unique identifier for an element within a free-form layout.
    #   @return [String]
    #
    # @!attribute [rw] element_type
    #   The type of element.
    #   @return [String]
    #
    # @!attribute [rw] x_axis_location
    #   The x-axis coordinate of the element.
    #   @return [String]
    #
    # @!attribute [rw] y_axis_location
    #   The y-axis coordinate of the element.
    #   @return [String]
    #
    # @!attribute [rw] width
    #   The width of an element within a free-form layout.
    #   @return [String]
    #
    # @!attribute [rw] height
    #   The height of an element within a free-form layout.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of an element within a free-form layout.
    #   @return [String]
    #
    # @!attribute [rw] rendering_rules
    #   The rendering rules that determine when an element should be
    #   displayed within a free-form layout.
    #   @return [Array<Types::SheetElementRenderingRule>]
    #
    # @!attribute [rw] border_style
    #   The border style configuration of a free-form layout element.
    #   @return [Types::FreeFormLayoutElementBorderStyle]
    #
    # @!attribute [rw] selected_border_style
    #   The border style configuration of a free-form layout element. This
    #   border style is used when the element is selected.
    #   @return [Types::FreeFormLayoutElementBorderStyle]
    #
    # @!attribute [rw] background_style
    #   The background style configuration of a free-form layout element.
    #   @return [Types::FreeFormLayoutElementBackgroundStyle]
    #
    # @!attribute [rw] loading_animation
    #   The loading animation configuration of a free-form layout element.
    #   @return [Types::LoadingAnimation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FreeFormLayoutElement AWS API Documentation
    #
    class FreeFormLayoutElement < Struct.new(
      :element_id,
      :element_type,
      :x_axis_location,
      :y_axis_location,
      :width,
      :height,
      :visibility,
      :rendering_rules,
      :border_style,
      :selected_border_style,
      :background_style,
      :loading_animation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The background style configuration of a free-form layout element.
    #
    # @!attribute [rw] visibility
    #   The background visibility of a free-form layout element.
    #   @return [String]
    #
    # @!attribute [rw] color
    #   The background color of a free-form layout element.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FreeFormLayoutElementBackgroundStyle AWS API Documentation
    #
    class FreeFormLayoutElementBackgroundStyle < Struct.new(
      :visibility,
      :color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The background style configuration of a free-form layout element.
    #
    # @!attribute [rw] visibility
    #   The border visibility of a free-form layout element.
    #   @return [String]
    #
    # @!attribute [rw] color
    #   The border color of a free-form layout element.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FreeFormLayoutElementBorderStyle AWS API Documentation
    #
    class FreeFormLayoutElementBorderStyle < Struct.new(
      :visibility,
      :color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the sizing of the canvas used in a
    # free-form layout.
    #
    # @!attribute [rw] optimized_view_port_width
    #   The width that the view port will be optimized for when the layout
    #   renders.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FreeFormLayoutScreenCanvasSizeOptions AWS API Documentation
    #
    class FreeFormLayoutScreenCanvasSizeOptions < Struct.new(
      :optimized_view_port_width)
      SENSITIVE = []
      include Aws::Structure
    end

    # The free-form layout configuration of a section.
    #
    # @!attribute [rw] elements
    #   The elements that are included in the free-form layout.
    #   @return [Array<Types::FreeFormLayoutElement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FreeFormSectionLayoutConfiguration AWS API Documentation
    #
    class FreeFormSectionLayoutConfiguration < Struct.new(
      :elements)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a `FunnelChartVisual`.
    #
    # @!attribute [rw] category
    #   The category field wells of a funnel chart. Values are grouped by
    #   category fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The value field wells of a funnel chart. Values are aggregated based
    #   on categories.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FunnelChartAggregatedFieldWells AWS API Documentation
    #
    class FunnelChartAggregatedFieldWells < Struct.new(
      :category,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `FunnelChartVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a `FunnelChartVisual`.
    #   @return [Types::FunnelChartFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a `FunnelChartVisual`.
    #   @return [Types::FunnelChartSortConfiguration]
    #
    # @!attribute [rw] category_label_options
    #   The label options of the categories that are displayed in a
    #   `FunnelChartVisual`.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] value_label_options
    #   The label options for the values that are displayed in a
    #   `FunnelChartVisual`.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip configuration of a `FunnelChartVisual`.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] data_label_options
    #   The options that determine the presentation of the data labels.
    #   @return [Types::FunnelChartDataLabelOptions]
    #
    # @!attribute [rw] visual_palette
    #   The visual palette configuration of a `FunnelChartVisual`.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FunnelChartConfiguration AWS API Documentation
    #
    class FunnelChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :category_label_options,
      :value_label_options,
      :tooltip,
      :data_label_options,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of the data labels.
    #
    # @!attribute [rw] visibility
    #   The visibility option that determines if data labels are displayed.
    #   @return [String]
    #
    # @!attribute [rw] category_label_visibility
    #   The visibility of the category labels within the data labels.
    #   @return [String]
    #
    # @!attribute [rw] measure_label_visibility
    #   The visibility of the measure labels within the data labels.
    #   @return [String]
    #
    # @!attribute [rw] position
    #   Determines the positioning of the data label relative to a section
    #   of the funnel.
    #   @return [String]
    #
    # @!attribute [rw] label_font_configuration
    #   The font configuration for the data labels.
    #
    #   Only the `FontSize` attribute of the font configuration is used for
    #   data labels.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] label_color
    #   The color of the data label text.
    #   @return [String]
    #
    # @!attribute [rw] measure_data_label_style
    #   Determines the style of the metric labels.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FunnelChartDataLabelOptions AWS API Documentation
    #
    class FunnelChartDataLabelOptions < Struct.new(
      :visibility,
      :category_label_visibility,
      :measure_label_visibility,
      :position,
      :label_font_configuration,
      :label_color,
      :measure_data_label_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a `FunnelChartVisual`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] funnel_chart_aggregated_field_wells
    #   The field well configuration of a `FunnelChartVisual`.
    #   @return [Types::FunnelChartAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FunnelChartFieldWells AWS API Documentation
    #
    class FunnelChartFieldWells < Struct.new(
      :funnel_chart_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a `FunnelChartVisual`.
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of the category fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] category_items_limit
    #   The limit on the number of categories displayed.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FunnelChartSortConfiguration AWS API Documentation
    #
    class FunnelChartSortConfiguration < Struct.new(
      :category_sort,
      :category_items_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A funnel chart.
    #
    # For more information, see [Using funnel charts][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/funnel-visual-content.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a `FunnelChartVisual`.
    #   @return [Types::FunnelChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/FunnelChartVisual AWS API Documentation
    #
    class FunnelChartVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of the arc of a
    # `GaugeChartVisual`.
    #
    # @!attribute [rw] foreground_color
    #   The conditional formatting of the arc foreground color.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartArcConditionalFormatting AWS API Documentation
    #
    class GaugeChartArcConditionalFormatting < Struct.new(
      :foreground_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting of a `GaugeChartVisual`.
    #
    # @!attribute [rw] conditional_formatting_options
    #   Conditional formatting options of a `GaugeChartVisual`.
    #   @return [Array<Types::GaugeChartConditionalFormattingOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartConditionalFormatting AWS API Documentation
    #
    class GaugeChartConditionalFormatting < Struct.new(
      :conditional_formatting_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conditional formatting options of a `GaugeChartVisual`.
    #
    # @!attribute [rw] primary_value
    #   The conditional formatting for the primary value of a
    #   `GaugeChartVisual`.
    #   @return [Types::GaugeChartPrimaryValueConditionalFormatting]
    #
    # @!attribute [rw] arc
    #   The options that determine the presentation of the arc of a
    #   `GaugeChartVisual`.
    #   @return [Types::GaugeChartArcConditionalFormatting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartConditionalFormattingOption AWS API Documentation
    #
    class GaugeChartConditionalFormattingOption < Struct.new(
      :primary_value,
      :arc)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `GaugeChartVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a `GaugeChartVisual`.
    #   @return [Types::GaugeChartFieldWells]
    #
    # @!attribute [rw] gauge_chart_options
    #   The options that determine the presentation of the
    #   `GaugeChartVisual`.
    #   @return [Types::GaugeChartOptions]
    #
    # @!attribute [rw] data_labels
    #   The data label configuration of a `GaugeChartVisual`.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip_options
    #   The tooltip configuration of a `GaugeChartVisual`.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] visual_palette
    #   The visual palette configuration of a `GaugeChartVisual`.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartConfiguration AWS API Documentation
    #
    class GaugeChartConfiguration < Struct.new(
      :field_wells,
      :gauge_chart_options,
      :data_labels,
      :tooltip_options,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a `GaugeChartVisual`.
    #
    # @!attribute [rw] values
    #   The value field wells of a `GaugeChartVisual`.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] target_values
    #   The target value field wells of a `GaugeChartVisual`.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartFieldWells AWS API Documentation
    #
    class GaugeChartFieldWells < Struct.new(
      :values,
      :target_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of the `GaugeChartVisual`.
    #
    # @!attribute [rw] primary_value_display_type
    #   The options that determine the primary value display type.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The comparison configuration of a `GaugeChartVisual`.
    #   @return [Types::ComparisonConfiguration]
    #
    # @!attribute [rw] arc_axis
    #   The arc axis configuration of a `GaugeChartVisual`.
    #   @return [Types::ArcAxisConfiguration]
    #
    # @!attribute [rw] arc
    #   The arc configuration of a `GaugeChartVisual`.
    #   @return [Types::ArcConfiguration]
    #
    # @!attribute [rw] primary_value_font_configuration
    #   The options that determine the primary value font configuration.
    #   @return [Types::FontConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartOptions AWS API Documentation
    #
    class GaugeChartOptions < Struct.new(
      :primary_value_display_type,
      :comparison,
      :arc_axis,
      :arc,
      :primary_value_font_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting for the primary value of a
    # `GaugeChartVisual`.
    #
    # @!attribute [rw] text_color
    #   The conditional formatting of the primary value text color.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @!attribute [rw] icon
    #   The conditional formatting of the primary value icon.
    #   @return [Types::ConditionalFormattingIcon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartPrimaryValueConditionalFormatting AWS API Documentation
    #
    class GaugeChartPrimaryValueConditionalFormatting < Struct.new(
      :text_color,
      :icon)
      SENSITIVE = []
      include Aws::Structure
    end

    # A gauge chart.
    #
    # For more information, see [Using gauge charts][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/gauge-chart.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a `GaugeChartVisual`.
    #   @return [Types::GaugeChartConfiguration]
    #
    # @!attribute [rw] conditional_formatting
    #   The conditional formatting of a `GaugeChartVisual`.
    #   @return [Types::GaugeChartConditionalFormatting]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GaugeChartVisual AWS API Documentation
    #
    class GaugeChartVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :conditional_formatting,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the
    #   dashboard that you're embedding.
    #   @return [String]
    #
    # @!attribute [rw] session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   in \[15-600\] minutes range.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The Amazon QuickSight namespace that the anonymous user virtually
    #   belongs to. If you are not using an Amazon QuickSight custom
    #   namespace, set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] session_tags
    #   The session tags used for row-level security. Before you use this
    #   parameter, make sure that you have configured the relevant datasets
    #   using the `DataSet$RowLevelPermissionTagConfiguration` parameter so
    #   that session tags can be used to provide row-level security.
    #
    #   These are not the tags used for the Amazon Web Services resource
    #   tagging feature. For more information, see [Using Row-Level Security
    #   (RLS) with Tags][1]in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-rls-tags.html
    #   @return [Array<Types::SessionTag>]
    #
    # @!attribute [rw] authorized_resource_arns
    #   The Amazon Resource Names (ARNs) for the Amazon QuickSight resources
    #   that the user is authorized to access during the lifetime of the
    #   session. If you choose `Dashboard` embedding experience, pass the
    #   list of dashboard ARNs in the account that you want the user to be
    #   able to view. Currently, you can pass up to 25 dashboard ARNs in
    #   each API call.
    #   @return [Array<String>]
    #
    # @!attribute [rw] experience_configuration
    #   The configuration of the experience that you are embedding.
    #   @return [Types::AnonymousUserEmbeddingExperienceConfiguration]
    #
    # @!attribute [rw] allowed_domains
    #   The domains that you want to add to the allow list for access to the
    #   generated URL that is then embedded. This optional parameter
    #   overrides the static domains that are configured in the Manage
    #   QuickSight menu in the Amazon QuickSight console. Instead, it allows
    #   only the domains that you include in this parameter. You can list up
    #   to three domains or subdomains in each API call.
    #
    #   To include all subdomains under a specific domain to the allow list,
    #   use `*`. For example, `https://*.sapp.amazon.com` includes all
    #   subdomains under `https://sapp.amazon.com`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForAnonymousUserRequest AWS API Documentation
    #
    class GenerateEmbedUrlForAnonymousUserRequest < Struct.new(
      :aws_account_id,
      :session_lifetime_in_minutes,
      :namespace,
      :session_tags,
      :authorized_resource_arns,
      :experience_configuration,
      :allowed_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] embed_url
    #   The embed URL for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] anonymous_user_arn
    #   The Amazon Resource Name (ARN) to use for the anonymous Amazon
    #   QuickSight user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForAnonymousUserResponse AWS API Documentation
    #
    class GenerateEmbedUrlForAnonymousUserResponse < Struct.new(
      :embed_url,
      :status,
      :request_id,
      :anonymous_user_arn)
      SENSITIVE = [:embed_url]
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the
    #   dashboard that you're embedding.
    #   @return [String]
    #
    # @!attribute [rw] session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   in \[15-600\] minutes range.
    #   @return [Integer]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name for the registered user.
    #   @return [String]
    #
    # @!attribute [rw] experience_configuration
    #   The experience you are embedding. For registered users, you can
    #   embed Amazon QuickSight dashboards, Amazon QuickSight visuals, the
    #   Amazon QuickSight Q search bar, or the entire Amazon QuickSight
    #   console.
    #   @return [Types::RegisteredUserEmbeddingExperienceConfiguration]
    #
    # @!attribute [rw] allowed_domains
    #   The domains that you want to add to the allow list for access to the
    #   generated URL that is then embedded. This optional parameter
    #   overrides the static domains that are configured in the Manage
    #   QuickSight menu in the Amazon QuickSight console. Instead, it allows
    #   only the domains that you include in this parameter. You can list up
    #   to three domains or subdomains in each API call.
    #
    #   To include all subdomains under a specific domain to the allow list,
    #   use `*`. For example, `https://*.sapp.amazon.com` includes all
    #   subdomains under `https://sapp.amazon.com`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForRegisteredUserRequest AWS API Documentation
    #
    class GenerateEmbedUrlForRegisteredUserRequest < Struct.new(
      :aws_account_id,
      :session_lifetime_in_minutes,
      :user_arn,
      :experience_configuration,
      :allowed_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] embed_url
    #   The embed URL for the Amazon QuickSight dashboard, visual, Q search
    #   bar, or console.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GenerateEmbedUrlForRegisteredUserResponse AWS API Documentation
    #
    class GenerateEmbedUrlForRegisteredUserResponse < Struct.new(
      :embed_url,
      :status,
      :request_id)
      SENSITIVE = [:embed_url]
      include Aws::Structure
    end

    # Geospatial column group that denotes a hierarchy.
    #
    # @!attribute [rw] name
    #   A display name for the hierarchy.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Country code.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   Columns in this hierarchy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeoSpatialColumnGroup AWS API Documentation
    #
    class GeoSpatialColumnGroup < Struct.new(
      :name,
      :country_code,
      :columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bound options (north, south, west, east) of the geospatial window
    # options.
    #
    # @!attribute [rw] north
    #   The latitude of the north bound of the geospatial coordinate bounds.
    #   @return [Float]
    #
    # @!attribute [rw] south
    #   The latitude of the south bound of the geospatial coordinate bounds.
    #   @return [Float]
    #
    # @!attribute [rw] west
    #   The longitude of the west bound of the geospatial coordinate bounds.
    #   @return [Float]
    #
    # @!attribute [rw] east
    #   The longitude of the east bound of the geospatial coordinate bounds.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialCoordinateBounds AWS API Documentation
    #
    class GeospatialCoordinateBounds < Struct.new(
      :north,
      :south,
      :west,
      :east)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field wells for a geospatial map.
    #
    # @!attribute [rw] geospatial
    #   The geospatial field wells of a geospatial map. Values are grouped
    #   by geospatial fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The size field wells of a geospatial map. Values are aggregated
    #   based on geospatial fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] colors
    #   The color field wells of a geospatial map.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialMapAggregatedFieldWells AWS API Documentation
    #
    class GeospatialMapAggregatedFieldWells < Struct.new(
      :geospatial,
      :values,
      :colors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `GeospatialMapVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::GeospatialMapFieldWells]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] window_options
    #   The window options of the geospatial map.
    #   @return [Types::GeospatialWindowOptions]
    #
    # @!attribute [rw] map_style_options
    #   The map style options of the geospatial map.
    #   @return [Types::GeospatialMapStyleOptions]
    #
    # @!attribute [rw] point_style_options
    #   The point style options of the geospatial map.
    #   @return [Types::GeospatialPointStyleOptions]
    #
    # @!attribute [rw] visual_palette
    #   The visual display options for the visual palette.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialMapConfiguration AWS API Documentation
    #
    class GeospatialMapConfiguration < Struct.new(
      :field_wells,
      :legend,
      :tooltip,
      :window_options,
      :map_style_options,
      :point_style_options,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of a `GeospatialMapVisual`.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] geospatial_map_aggregated_field_wells
    #   The aggregated field well for a geospatial map.
    #   @return [Types::GeospatialMapAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialMapFieldWells AWS API Documentation
    #
    class GeospatialMapFieldWells < Struct.new(
      :geospatial_map_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The map style options of the geospatial map.
    #
    # @!attribute [rw] base_map_style
    #   The base map style of the geospatial map.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialMapStyleOptions AWS API Documentation
    #
    class GeospatialMapStyleOptions < Struct.new(
      :base_map_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # A geospatial map or a points on map visual.
    #
    # For more information, see [Creating point maps][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/point-maps.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::GeospatialMapConfiguration]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialMapVisual AWS API Documentation
    #
    class GeospatialMapVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :column_hierarchies,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The point style of the geospatial map.
    #
    # @!attribute [rw] selected_point_style
    #   The selected point styles (point, cluster) of the geospatial map.
    #   @return [String]
    #
    # @!attribute [rw] cluster_marker_configuration
    #   The cluster marker configuration of the geospatial point style.
    #   @return [Types::ClusterMarkerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialPointStyleOptions AWS API Documentation
    #
    class GeospatialPointStyleOptions < Struct.new(
      :selected_point_style,
      :cluster_marker_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The window options of the geospatial map visual.
    #
    # @!attribute [rw] bounds
    #   The bounds options (north, south, west, east) of the geospatial
    #   window options.
    #   @return [Types::GeospatialCoordinateBounds]
    #
    # @!attribute [rw] map_zoom_mode
    #   The map zoom modes (manual, auto) of the geospatial window options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GeospatialWindowOptions AWS API Documentation
    #
    class GeospatialWindowOptions < Struct.new(
      :bounds,
      :map_zoom_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the
    #   dashboard that you're embedding.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard, also added to the Identity and Access
    #   Management (IAM) policy.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The authentication method that the user uses to sign in.
    #   @return [String]
    #
    # @!attribute [rw] session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] undo_redo_disabled
    #   Remove the undo/redo button on the embedded dashboard. The default
    #   is FALSE, which enables the undo/redo button.
    #   @return [Boolean]
    #
    # @!attribute [rw] reset_disabled
    #   Remove the reset button on the embedded dashboard. The default is
    #   FALSE, which enables the reset button.
    #   @return [Boolean]
    #
    # @!attribute [rw] state_persistence_enabled
    #   Adds persistence of state for the user session in an embedded
    #   dashboard. Persistence applies to the sheet and the parameter
    #   settings. These are control settings that the dashboard subscriber
    #   (Amazon QuickSight reader) chooses while viewing the dashboard. If
    #   this is set to `TRUE`, the settings are the same when the subscriber
    #   reopens the same dashboard URL. The state is stored in Amazon
    #   QuickSight, not in a browser cookie. If this is set to FALSE, the
    #   state of the user session is not persisted. The default is `FALSE`.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use
    #   with `QUICKSIGHT` identity type. You can use this for any Amazon
    #   QuickSight users in your account (readers, authors, or admins)
    #   authenticated as one of the following:
    #
    #   * Active Directory (AD) users or group members
    #
    #   * Invited nonfederated users
    #
    #   * IAM users and IAM role-based sessions authenticated through
    #     Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #     federation.
    #
    #   Omit this parameter for users in the third group – IAM users and IAM
    #   role-based sessions.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The Amazon QuickSight namespace that contains the dashboard IDs in
    #   this request. If you're not using a custom namespace, set
    #   `Namespace = default`.
    #   @return [String]
    #
    # @!attribute [rw] additional_dashboard_ids
    #   A list of one or more dashboard IDs that you want anonymous users to
    #   have tempporary access to. Currently, the `IdentityType` parameter
    #   must be set to `ANONYMOUS` because other identity types authenticate
    #   as Amazon QuickSight or IAM users. For example, if you set
    #   "`--dashboard-id dash_id1 --dashboard-id dash_id2 dash_id3
    #   identity-type ANONYMOUS`", the session can access all three
    #   dashboards.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrlRequest AWS API Documentation
    #
    class GetDashboardEmbedUrlRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :identity_type,
      :session_lifetime_in_minutes,
      :undo_redo_disabled,
      :reset_disabled,
      :state_persistence_enabled,
      :user_arn,
      :namespace,
      :additional_dashboard_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output returned from the `GetDashboardEmbedUrl` operation.
    #
    # @!attribute [rw] embed_url
    #   A single-use URL that you can put into your server-side webpage to
    #   embed your dashboard. This URL is valid for 5 minutes. The API
    #   operation provides the URL with an `auth_code` value that enables
    #   one (and only one) sign-on to a user session that is valid for 10
    #   hours.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetDashboardEmbedUrlResponse AWS API Documentation
    #
    class GetDashboardEmbedUrlResponse < Struct.new(
      :embed_url,
      :status,
      :request_id)
      SENSITIVE = [:embed_url]
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account associated with your
    #   Amazon QuickSight subscription.
    #   @return [String]
    #
    # @!attribute [rw] entry_point
    #   The URL you use to access the embedded session. The entry point URL
    #   is constrained to the following paths:
    #
    #   * `/start`
    #
    #   * `/start/analyses`
    #
    #   * `/start/dashboards`
    #
    #   * `/start/favorites`
    #
    #   * `/dashboards/DashboardId ` - where `DashboardId` is the actual ID
    #     key from the Amazon QuickSight console URL of the dashboard
    #
    #   * `/analyses/AnalysisId ` - where `AnalysisId` is the actual ID key
    #     from the Amazon QuickSight console URL of the analysis
    #   @return [String]
    #
    # @!attribute [rw] session_lifetime_in_minutes
    #   How many minutes the session is valid. The session lifetime must be
    #   15-600 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] user_arn
    #   The Amazon QuickSight user's Amazon Resource Name (ARN), for use
    #   with `QUICKSIGHT` identity type. You can use this for any type of
    #   Amazon QuickSight users in your account (readers, authors, or
    #   admins). They need to be authenticated as one of the following:
    #
    #   1.  Active Directory (AD) users or group members
    #
    #   2.  Invited nonfederated users
    #
    #   3.  IAM users and IAM role-based sessions authenticated through
    #       Federated Single Sign-On using SAML, OpenID Connect, or IAM
    #       federation
    #
    #   Omit this parameter for users in the third group, IAM users and IAM
    #   role-based sessions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetSessionEmbedUrlRequest AWS API Documentation
    #
    class GetSessionEmbedUrlRequest < Struct.new(
      :aws_account_id,
      :entry_point,
      :session_lifetime_in_minutes,
      :user_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] embed_url
    #   A single-use URL that you can put into your server-side web page to
    #   embed your Amazon QuickSight session. This URL is valid for 5
    #   minutes. The API operation provides the URL with an `auth_code`
    #   value that enables one (and only one) sign-on to a user session that
    #   is valid for 10 hours.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GetSessionEmbedUrlResponse AWS API Documentation
    #
    class GetSessionEmbedUrlResponse < Struct.new(
      :embed_url,
      :status,
      :request_id)
      SENSITIVE = [:embed_url]
      include Aws::Structure
    end

    # Determines the border options for a table visual.
    #
    # @!attribute [rw] uniform_border
    #   Determines the options for uniform border.
    #   @return [Types::TableBorderOptions]
    #
    # @!attribute [rw] side_specific_border
    #   Determines the options for side specific border.
    #   @return [Types::TableSideBorderOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GlobalTableBorderOptions AWS API Documentation
    #
    class GlobalTableBorderOptions < Struct.new(
      :uniform_border,
      :side_specific_border)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the gradient color settings.
    #
    # @!attribute [rw] stops
    #   The list of gradient color stops.
    #   @return [Array<Types::GradientStop>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GradientColor AWS API Documentation
    #
    class GradientColor < Struct.new(
      :stops)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the gradient stop configuration.
    #
    # @!attribute [rw] gradient_offset
    #   Determines gradient offset value.
    #   @return [Float]
    #
    # @!attribute [rw] data_value
    #   Determines the data value.
    #   @return [Float]
    #
    # @!attribute [rw] color
    #   Determines the color.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GradientStop AWS API Documentation
    #
    class GradientStop < Struct.new(
      :gradient_offset,
      :data_value,
      :color)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration options for the canvas of a grid layout.
    #
    # @!attribute [rw] screen_canvas_size_options
    #   The options that determine the sizing of the canvas used in a grid
    #   layout.
    #   @return [Types::GridLayoutScreenCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GridLayoutCanvasSizeOptions AWS API Documentation
    #
    class GridLayoutCanvasSizeOptions < Struct.new(
      :screen_canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a grid layout. Also called a tiled layout.
    #
    # Visuals snap to a grid with standard spacing and alignment. Dashboards
    # are displayed as designed, with options to fit to screen or view at
    # actual size.
    #
    # @!attribute [rw] elements
    #   The elements that are included in a grid layout.
    #   @return [Array<Types::GridLayoutElement>]
    #
    # @!attribute [rw] canvas_size_options
    #   Configuration options for the canvas of a grid layout.
    #   @return [Types::GridLayoutCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GridLayoutConfiguration AWS API Documentation
    #
    class GridLayoutConfiguration < Struct.new(
      :elements,
      :canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # An element within a grid layout.
    #
    # @!attribute [rw] element_id
    #   A unique identifier for an element within a grid layout.
    #   @return [String]
    #
    # @!attribute [rw] element_type
    #   The type of element.
    #   @return [String]
    #
    # @!attribute [rw] column_index
    #   The column index for the upper left corner of an element.
    #   @return [Integer]
    #
    # @!attribute [rw] column_span
    #   The width of a grid element expressed as a number of grid columns.
    #   @return [Integer]
    #
    # @!attribute [rw] row_index
    #   The row index for the upper left corner of an element.
    #   @return [Integer]
    #
    # @!attribute [rw] row_span
    #   The height of a grid element expressed as a number of grid rows.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GridLayoutElement AWS API Documentation
    #
    class GridLayoutElement < Struct.new(
      :element_id,
      :element_type,
      :column_index,
      :column_span,
      :row_index,
      :row_span)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the sizing of the canvas used in a grid
    # layout.
    #
    # @!attribute [rw] resize_option
    #   This value determines the layout behavior when the viewport is
    #   resized.
    #
    #   * `FIXED`: A fixed width will be used when optimizing the layout. In
    #     the Amazon QuickSight console, this option is called `Classic`.
    #
    #   * `RESPONSIVE`: The width of the canvas will be responsive and
    #     optimized to the view port. In the Amazon QuickSight console, this
    #     option is called `Tiled`.
    #   @return [String]
    #
    # @!attribute [rw] optimized_view_port_width
    #   The width that the view port will be optimized for when the layout
    #   renders.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GridLayoutScreenCanvasSizeOptions AWS API Documentation
    #
    class GridLayoutScreenCanvasSizeOptions < Struct.new(
      :resize_option,
      :optimized_view_port_width)
      SENSITIVE = []
      include Aws::Structure
    end

    # A *group* in Amazon QuickSight consists of a set of users. You can use
    # groups to make it easier to manage access and security.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The group description.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Group AWS API Documentation
    #
    class Group < Struct.new(
      :arn,
      :group_name,
      :description,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A member of an Amazon QuickSight group. Currently, group members must
    # be users. Groups can't be members of another group. .
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the group member (user).
    #   @return [String]
    #
    # @!attribute [rw] member_name
    #   The name of the group member (user).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GroupMember AWS API Documentation
    #
    class GroupMember < Struct.new(
      :arn,
      :member_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `GroupSearchFilter` object that you want to apply to your search.
    #
    # @!attribute [rw] operator
    #   The comparison operator that you want to use as a filter, for
    #   example `"Operator": "StartsWith"`. Currently, the only supported
    #   operator is `StartsWith`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the value that you want to use as a filter, for example
    #   `"Name": "GROUP_NAME"`. Currently, the only supported name is
    #   `GROUP_NAME`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the named item, in this case `GROUP_NAME`, that you
    #   want to use as a filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GroupSearchFilter AWS API Documentation
    #
    class GroupSearchFilter < Struct.new(
      :operator,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The growth rate computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @!attribute [rw] period_size
    #   The period size setup of a growth rate computation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GrowthRateComputation AWS API Documentation
    #
    class GrowthRateComputation < Struct.new(
      :computation_id,
      :name,
      :time,
      :value,
      :period_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for gutter spacing between tiles on a sheet.
    #
    # @!attribute [rw] show
    #   This Boolean value controls whether to display a gutter space
    #   between sheet tiles.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/GutterStyle AWS API Documentation
    #
    class GutterStyle < Struct.new(
      :show)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a header or footer section.
    #
    # @!attribute [rw] section_id
    #   The unique identifier of the header or footer section.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   The layout configuration of the header or footer section.
    #   @return [Types::SectionLayoutConfiguration]
    #
    # @!attribute [rw] style
    #   The style options of a header or footer section.
    #   @return [Types::SectionStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HeaderFooterSectionConfiguration AWS API Documentation
    #
    class HeaderFooterSectionConfiguration < Struct.new(
      :section_id,
      :layout,
      :style)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field wells of a heat map.
    #
    # @!attribute [rw] rows
    #   The rows field well of a heat map.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] columns
    #   The columns field well of a heat map.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The values field well of a heat map.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HeatMapAggregatedFieldWells AWS API Documentation
    #
    class HeatMapAggregatedFieldWells < Struct.new(
      :rows,
      :columns,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a heat map.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::HeatMapFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a heat map.
    #   @return [Types::HeatMapSortConfiguration]
    #
    # @!attribute [rw] row_label_options
    #   The label options of the row that is displayed in a `heat map`.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] column_label_options
    #   The label options of the column that is displayed in a heat map.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] color_scale
    #   The color options (gradient color, point of divergence) in a heat
    #   map.
    #   @return [Types::ColorScale]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] data_labels
    #   The options that determine if visual data labels are displayed.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HeatMapConfiguration AWS API Documentation
    #
    class HeatMapConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :row_label_options,
      :column_label_options,
      :color_scale,
      :legend,
      :data_labels,
      :tooltip)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a heat map.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] heat_map_aggregated_field_wells
    #   The aggregated field wells of a heat map.
    #   @return [Types::HeatMapAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HeatMapFieldWells AWS API Documentation
    #
    class HeatMapFieldWells < Struct.new(
      :heat_map_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a heat map.
    #
    # @!attribute [rw] heat_map_row_sort
    #   The field sort configuration of the rows fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] heat_map_column_sort
    #   The column sort configuration for heat map for columns that aren't
    #   a part of a field well.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] heat_map_row_items_limit_configuration
    #   The limit on the number of rows that are displayed in a heat map.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] heat_map_column_items_limit_configuration
    #   The limit on the number of columns that are displayed in a heat map.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HeatMapSortConfiguration AWS API Documentation
    #
    class HeatMapSortConfiguration < Struct.new(
      :heat_map_row_sort,
      :heat_map_column_sort,
      :heat_map_row_items_limit_configuration,
      :heat_map_column_items_limit_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A heat map.
    #
    # For more information, see [Using heat maps][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/heat-map.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a heat map.
    #   @return [Types::HeatMapConfiguration]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HeatMapVisual AWS API Documentation
    #
    class HeatMapVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :column_hierarchies,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a histogram.
    #
    # @!attribute [rw] values
    #   The value field wells of a histogram. Values are aggregated by
    #   `COUNT` or `DISTINCT_COUNT`.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HistogramAggregatedFieldWells AWS API Documentation
    #
    class HistogramAggregatedFieldWells < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of histogram bins.
    #
    # @!attribute [rw] selected_bin_type
    #   The options that determine the selected bin type.
    #   @return [String]
    #
    # @!attribute [rw] bin_count
    #   The options that determine the bin count of a histogram.
    #   @return [Types::BinCountOptions]
    #
    # @!attribute [rw] bin_width
    #   The options that determine the bin width of a histogram.
    #   @return [Types::BinWidthOptions]
    #
    # @!attribute [rw] start_value
    #   The options that determine the bin start value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HistogramBinOptions AWS API Documentation
    #
    class HistogramBinOptions < Struct.new(
      :selected_bin_type,
      :bin_count,
      :bin_width,
      :start_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a `HistogramVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a histogram.
    #   @return [Types::HistogramFieldWells]
    #
    # @!attribute [rw] x_axis_display_options
    #   The options that determine the presentation of the x-axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] x_axis_label_options
    #   The options that determine the presentation of the x-axis label.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] y_axis_display_options
    #   The options that determine the presentation of the y-axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] bin_options
    #   The options that determine the presentation of histogram bins.
    #   @return [Types::HistogramBinOptions]
    #
    # @!attribute [rw] data_labels
    #   The data label configuration of a histogram.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip configuration of a histogram.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] visual_palette
    #   The visual palette configuration of a histogram.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HistogramConfiguration AWS API Documentation
    #
    class HistogramConfiguration < Struct.new(
      :field_wells,
      :x_axis_display_options,
      :x_axis_label_options,
      :y_axis_display_options,
      :bin_options,
      :data_labels,
      :tooltip,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a histogram.
    #
    # @!attribute [rw] histogram_aggregated_field_wells
    #   The field well configuration of a histogram.
    #   @return [Types::HistogramAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HistogramFieldWells AWS API Documentation
    #
    class HistogramFieldWells < Struct.new(
      :histogram_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # A histogram.
    #
    # For more information, see [Using histograms][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/histogram-charts.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration for a `HistogramVisual`.
    #   @return [Types::HistogramConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/HistogramVisual AWS API Documentation
    #
    class HistogramVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Identity and Access Management (IAM) policy assignment.
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   Assignment ID.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   Assignment name.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) for the IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   Identities.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] assignment_status
    #   Assignment status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IAMPolicyAssignment AWS API Documentation
    #
    class IAMPolicyAssignment < Struct.new(
      :aws_account_id,
      :assignment_id,
      :assignment_name,
      :policy_arn,
      :identities,
      :assignment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # IAM policy assignment summary.
    #
    # @!attribute [rw] assignment_name
    #   Assignment name.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   Assignment status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IAMPolicyAssignmentSummary AWS API Documentation
    #
    class IAMPolicyAssignmentSummary < Struct.new(
      :assignment_name,
      :assignment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identity type specified isn't supported. Supported identity types
    # include `IAM` and `QUICKSIGHT`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IdentityTypeNotSupportedException AWS API Documentation
    #
    class IdentityTypeNotSupportedException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The incremental refresh configuration for a dataset.
    #
    # @!attribute [rw] lookback_window
    #   The lookback window setup for an incremental refresh configuration.
    #   @return [Types::LookbackWindow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IncrementalRefresh AWS API Documentation
    #
    class IncrementalRefresh < Struct.new(
      :lookback_window)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the SPICE ingestion for a dataset.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   Ingestion ID.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_status
    #   Ingestion status.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   Error information for this ingestion.
    #   @return [Types::ErrorInfo]
    #
    # @!attribute [rw] row_info
    #   Information about rows for a data set SPICE ingestion.
    #   @return [Types::RowInfo]
    #
    # @!attribute [rw] queue_info
    #   Information about a queued dataset SPICE ingestion.
    #   @return [Types::QueueInfo]
    #
    # @!attribute [rw] created_time
    #   The time that this ingestion started.
    #   @return [Time]
    #
    # @!attribute [rw] ingestion_time_in_seconds
    #   The time that this ingestion took, measured in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] ingestion_size_in_bytes
    #   The size of the data ingested, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] request_source
    #   Event source for this ingestion.
    #   @return [String]
    #
    # @!attribute [rw] request_type
    #   Type of this ingestion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Ingestion AWS API Documentation
    #
    class Ingestion < Struct.new(
      :arn,
      :ingestion_id,
      :ingestion_status,
      :error_info,
      :row_info,
      :queue_info,
      :created_time,
      :ingestion_time_in_seconds,
      :ingestion_size_in_bytes,
      :request_source,
      :request_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a column that is used as the input of a transform
    # operation.
    #
    # @!attribute [rw] name
    #   The name of this column in the underlying data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InputColumn AWS API Documentation
    #
    class InputColumn < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of an insight visual.
    #
    # @!attribute [rw] computations
    #   The computations configurations of the insight visual
    #   @return [Array<Types::Computation>]
    #
    # @!attribute [rw] custom_narrative
    #   The custom narrative of the insight visual.
    #   @return [Types::CustomNarrativeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InsightConfiguration AWS API Documentation
    #
    class InsightConfiguration < Struct.new(
      :computations,
      :custom_narrative)
      SENSITIVE = []
      include Aws::Structure
    end

    # An insight visual.
    #
    # For more information, see [Working with insights][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/computational-insights.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] insight_configuration
    #   The configuration of an insight visual.
    #   @return [Types::InsightConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] data_set_identifier
    #   The dataset that is used in the insight visual.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InsightVisual AWS API Documentation
    #
    class InsightVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :insight_configuration,
      :actions,
      :data_set_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # An integer parameter for a dataset.
    #
    # @!attribute [rw] id
    #   An identifier for the integer parameter created in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the integer parameter that is created in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] value_type
    #   The value type of the dataset parameter. Valid values are `single
    #   value` or `multi value`.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   A list of default values for a given integer parameter. This
    #   structure only accepts static values.
    #   @return [Types::IntegerDatasetParameterDefaultValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IntegerDatasetParameter AWS API Documentation
    #
    class IntegerDatasetParameter < Struct.new(
      :id,
      :name,
      :value_type,
      :default_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of an integer parameter.
    #
    # @!attribute [rw] static_values
    #   A list of static default values for a given integer parameter.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IntegerDatasetParameterDefaultValues AWS API Documentation
    #
    class IntegerDatasetParameterDefaultValues < Struct.new(
      :static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of the `IntegerParameterDeclaration`.
    #
    # @!attribute [rw] dynamic_value
    #   The dynamic value of the `IntegerDefaultValues`. Different defaults
    #   are displayed according to users, groups, and values mapping.
    #   @return [Types::DynamicDefaultValue]
    #
    # @!attribute [rw] static_values
    #   The static values of the `IntegerDefaultValues`.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IntegerDefaultValues AWS API Documentation
    #
    class IntegerDefaultValues < Struct.new(
      :dynamic_value,
      :static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # An integer parameter.
    #
    # @!attribute [rw] name
    #   The name of the integer parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values for the integer parameter.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IntegerParameter AWS API Documentation
    #
    class IntegerParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter declaration for the `Integer` data type.
    #
    # @!attribute [rw] parameter_value_type
    #   The value type determines whether the parameter is a single-value or
    #   multi-value parameter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the parameter that is being declared.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   The default values of a parameter. If the parameter is a
    #   single-value parameter, a maximum of one default value can be
    #   provided.
    #   @return [Types::IntegerDefaultValues]
    #
    # @!attribute [rw] value_when_unset
    #   A parameter declaration for the `Integer` data type.
    #   @return [Types::IntegerValueWhenUnsetConfiguration]
    #
    # @!attribute [rw] mapped_data_set_parameters
    #   A list of dataset parameters that are mapped to an analysis
    #   parameter.
    #   @return [Array<Types::MappedDataSetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IntegerParameterDeclaration AWS API Documentation
    #
    class IntegerParameterDeclaration < Struct.new(
      :parameter_value_type,
      :name,
      :default_values,
      :value_when_unset,
      :mapped_data_set_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter declaration for the `Integer` data type.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] value_when_unset_option
    #   The built-in options for default values. The value can be one of the
    #   following:
    #
    #   * `RECOMMENDED`: The recommended value.
    #
    #   * `NULL`: The `NULL` value.
    #   @return [String]
    #
    # @!attribute [rw] custom_value
    #   A custom value that's used when the value of a parameter isn't
    #   set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/IntegerValueWhenUnsetConfiguration AWS API Documentation
    #
    class IntegerValueWhenUnsetConfiguration < Struct.new(
      :value_when_unset_option,
      :custom_value)
      SENSITIVE = [:custom_value]
      include Aws::Structure
    end

    # An internal failure occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `NextToken` value isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters has a value that isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have this feature activated for your account. To fix this
    # issue, contact Amazon Web Services support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit configuration of the visual display for an axis.
    #
    # @!attribute [rw] items_limit
    #   The limit on how many items of a field are showed in the chart. For
    #   example, the number of slices that are displayed in a pie chart.
    #   @return [Integer]
    #
    # @!attribute [rw] other_categories
    #   The `Show other` of an axis in the chart. Choose one of the
    #   following options:
    #
    #   * `INCLUDE`
    #
    #   * `EXCLUDE`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ItemsLimitConfiguration AWS API Documentation
    #
    class ItemsLimitConfiguration < Struct.new(
      :items_limit,
      :other_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Jira.
    #
    # @!attribute [rw] site_base_url
    #   The base URL of the Jira site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/JiraParameters AWS API Documentation
    #
    class JiraParameters < Struct.new(
      :site_base_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instructions associated with a join.
    #
    # @!attribute [rw] left_operand
    #   The operand on the left side of a join.
    #   @return [String]
    #
    # @!attribute [rw] right_operand
    #   The operand on the right side of a join.
    #   @return [String]
    #
    # @!attribute [rw] left_join_key_properties
    #   Join key properties of the left operand.
    #   @return [Types::JoinKeyProperties]
    #
    # @!attribute [rw] right_join_key_properties
    #   Join key properties of the right operand.
    #   @return [Types::JoinKeyProperties]
    #
    # @!attribute [rw] type
    #   The type of join that it is.
    #   @return [String]
    #
    # @!attribute [rw] on_clause
    #   The join instructions provided in the `ON` clause of a join.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/JoinInstruction AWS API Documentation
    #
    class JoinInstruction < Struct.new(
      :left_operand,
      :right_operand,
      :left_join_key_properties,
      :right_join_key_properties,
      :type,
      :on_clause)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties associated with the columns participating in a join.
    #
    # @!attribute [rw] unique_key
    #   A value that indicates that a row in a table is uniquely identified
    #   by the columns in a join key. This is used by Amazon QuickSight to
    #   optimize query performance.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/JoinKeyProperties AWS API Documentation
    #
    class JoinKeyProperties < Struct.new(
      :unique_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting of a KPI visual.
    #
    # @!attribute [rw] conditional_formatting_options
    #   The conditional formatting options of a KPI visual.
    #   @return [Array<Types::KPIConditionalFormattingOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIConditionalFormatting AWS API Documentation
    #
    class KPIConditionalFormatting < Struct.new(
      :conditional_formatting_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting options of a KPI visual.
    #
    # @!attribute [rw] primary_value
    #   The conditional formatting for the primary value of a KPI visual.
    #   @return [Types::KPIPrimaryValueConditionalFormatting]
    #
    # @!attribute [rw] progress_bar
    #   The conditional formatting for the progress bar of a KPI visual.
    #   @return [Types::KPIProgressBarConditionalFormatting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIConditionalFormattingOption AWS API Documentation
    #
    class KPIConditionalFormattingOption < Struct.new(
      :primary_value,
      :progress_bar)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a KPI visual.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a KPI visual.
    #   @return [Types::KPIFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a KPI visual.
    #   @return [Types::KPISortConfiguration]
    #
    # @!attribute [rw] kpi_options
    #   The options that determine the presentation of a KPI visual.
    #   @return [Types::KPIOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIConfiguration AWS API Documentation
    #
    class KPIConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :kpi_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a KPI visual.
    #
    # @!attribute [rw] values
    #   The value field wells of a KPI visual.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] target_values
    #   The target value field wells of a KPI visual.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] trend_groups
    #   The trend group field wells of a KPI visual.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIFieldWells AWS API Documentation
    #
    class KPIFieldWells < Struct.new(
      :values,
      :target_values,
      :trend_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of a KPI visual.
    #
    # @!attribute [rw] progress_bar
    #   The options that determine the presentation of the progress bar of a
    #   KPI visual.
    #   @return [Types::ProgressBarOptions]
    #
    # @!attribute [rw] trend_arrows
    #   The options that determine the presentation of trend arrows in a KPI
    #   visual.
    #   @return [Types::TrendArrowOptions]
    #
    # @!attribute [rw] secondary_value
    #   The options that determine the presentation of the secondary value
    #   of a KPI visual.
    #   @return [Types::SecondaryValueOptions]
    #
    # @!attribute [rw] comparison
    #   The comparison configuration of a KPI visual.
    #   @return [Types::ComparisonConfiguration]
    #
    # @!attribute [rw] primary_value_display_type
    #   The options that determine the primary value display type.
    #   @return [String]
    #
    # @!attribute [rw] primary_value_font_configuration
    #   The options that determine the primary value font configuration.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] secondary_value_font_configuration
    #   The options that determine the secondary value font configuration.
    #   @return [Types::FontConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIOptions AWS API Documentation
    #
    class KPIOptions < Struct.new(
      :progress_bar,
      :trend_arrows,
      :secondary_value,
      :comparison,
      :primary_value_display_type,
      :primary_value_font_configuration,
      :secondary_value_font_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting for the primary value of a KPI visual.
    #
    # @!attribute [rw] text_color
    #   The conditional formatting of the primary value's text color.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @!attribute [rw] icon
    #   The conditional formatting of the primary value's icon.
    #   @return [Types::ConditionalFormattingIcon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIPrimaryValueConditionalFormatting AWS API Documentation
    #
    class KPIPrimaryValueConditionalFormatting < Struct.new(
      :text_color,
      :icon)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting for the progress bar of a KPI visual.
    #
    # @!attribute [rw] foreground_color
    #   The conditional formatting of the progress bar's foreground color.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIProgressBarConditionalFormatting AWS API Documentation
    #
    class KPIProgressBarConditionalFormatting < Struct.new(
      :foreground_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a KPI visual.
    #
    # @!attribute [rw] trend_group_sort
    #   The sort configuration of the trend group fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPISortConfiguration AWS API Documentation
    #
    class KPISortConfiguration < Struct.new(
      :trend_group_sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key performance indicator (KPI).
    #
    # For more information, see [Using KPIs][1] in the *Amazon QuickSight
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/kpi.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a KPI visual.
    #   @return [Types::KPIConfiguration]
    #
    # @!attribute [rw] conditional_formatting
    #   The conditional formatting of a KPI visual.
    #   @return [Types::KPIConditionalFormatting]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/KPIVisual AWS API Documentation
    #
    class KPIVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :conditional_formatting,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The share label options for the labels.
    #
    # @!attribute [rw] visibility
    #   Determines whether or not the label is visible.
    #   @return [String]
    #
    # @!attribute [rw] font_configuration
    #   The font configuration of the label.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] custom_label
    #   The text for the label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LabelOptions AWS API Documentation
    #
    class LabelOptions < Struct.new(
      :visibility,
      :font_configuration,
      :custom_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `Layout` defines the placement of elements within a sheet.
    #
    # For more information, see [Types of layout][1] in the *Amazon
    # QuickSight User Guide*.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/types-of-layout.html
    #
    # @!attribute [rw] configuration
    #   The configuration that determines what the type of layout for a
    #   sheet.
    #   @return [Types::LayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Layout AWS API Documentation
    #
    class Layout < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that determines what the type of layout will be used
    # on a sheet.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] grid_layout
    #   A type of layout that can be used on a sheet. In a grid layout,
    #   visuals snap to a grid with standard spacing and alignment.
    #   Dashboards are displayed as designed, with options to fit to screen
    #   or view at actual size. A grid layout can be configured to behave in
    #   one of two ways when the viewport is resized: `FIXED` or
    #   `RESPONSIVE`.
    #   @return [Types::GridLayoutConfiguration]
    #
    # @!attribute [rw] free_form_layout
    #   A free-form is optimized for a fixed width and has more control over
    #   the exact placement of layout elements.
    #   @return [Types::FreeFormLayoutConfiguration]
    #
    # @!attribute [rw] section_based_layout
    #   A section based layout organizes visuals into multiple sections and
    #   has customized header, footer and page break.
    #   @return [Types::SectionBasedLayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LayoutConfiguration AWS API Documentation
    #
    class LayoutConfiguration < Struct.new(
      :grid_layout,
      :free_form_layout,
      :section_based_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for the legend setup of a visual.
    #
    # @!attribute [rw] visibility
    #   Determines whether or not the legend is visible.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The custom title for the legend.
    #   @return [Types::LabelOptions]
    #
    # @!attribute [rw] position
    #   The positions for the legend. Choose one of the following options:
    #
    #   * `AUTO`
    #
    #   * `RIGHT`
    #
    #   * `BOTTOM`
    #
    #   * `LEFT`
    #   @return [String]
    #
    # @!attribute [rw] width
    #   The width of the legend. If this value is omitted, a default width
    #   is used when rendering.
    #   @return [String]
    #
    # @!attribute [rw] height
    #   The height of the legend. If this value is omitted, a default height
    #   is used when rendering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LegendOptions AWS API Documentation
    #
    class LegendOptions < Struct.new(
      :visibility,
      :title,
      :position,
      :width,
      :height)
      SENSITIVE = []
      include Aws::Structure
    end

    # A limit is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Limit exceeded.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a line chart.
    #
    # @!attribute [rw] category
    #   The category field wells of a line chart. Values are grouped by
    #   category fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The value field wells of a line chart. Values are aggregated based
    #   on categories.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] colors
    #   The color field wells of a line chart. Values are grouped by
    #   category fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] small_multiples
    #   The small multiples field well of a line chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartAggregatedFieldWells AWS API Documentation
    #
    class LineChartAggregatedFieldWells < Struct.new(
      :category,
      :values,
      :colors,
      :small_multiples)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a line chart.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a line chart.
    #   @return [Types::LineChartFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a line chart.
    #   @return [Types::LineChartSortConfiguration]
    #
    # @!attribute [rw] forecast_configurations
    #   The forecast configuration of a line chart.
    #   @return [Array<Types::ForecastConfiguration>]
    #
    # @!attribute [rw] type
    #   Determines the type of the line chart.
    #   @return [String]
    #
    # @!attribute [rw] small_multiples_options
    #   The small multiples setup for the visual.
    #   @return [Types::SmallMultiplesOptions]
    #
    # @!attribute [rw] x_axis_display_options
    #   The options that determine the presentation of the x-axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] x_axis_label_options
    #   The options that determine the presentation of the x-axis label.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] primary_y_axis_display_options
    #   The series axis configuration of a line chart.
    #   @return [Types::LineSeriesAxisDisplayOptions]
    #
    # @!attribute [rw] primary_y_axis_label_options
    #   The options that determine the presentation of the y-axis label.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] secondary_y_axis_display_options
    #   The series axis configuration of a line chart.
    #   @return [Types::LineSeriesAxisDisplayOptions]
    #
    # @!attribute [rw] secondary_y_axis_label_options
    #   The options that determine the presentation of the secondary y-axis
    #   label.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] default_series_settings
    #   The options that determine the default presentation of all line
    #   series in `LineChartVisual`.
    #   @return [Types::LineChartDefaultSeriesSettings]
    #
    # @!attribute [rw] series
    #   The series item configuration of a line chart.
    #   @return [Array<Types::SeriesItem>]
    #
    # @!attribute [rw] legend
    #   The legend configuration of a line chart.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] data_labels
    #   The data label configuration of a line chart.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] reference_lines
    #   The reference lines configuration of a line chart.
    #   @return [Array<Types::ReferenceLine>]
    #
    # @!attribute [rw] tooltip
    #   The tooltip configuration of a line chart.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] contribution_analysis_defaults
    #   The default configuration of a line chart's contribution analysis.
    #   @return [Array<Types::ContributionAnalysisDefault>]
    #
    # @!attribute [rw] visual_palette
    #   The visual palette configuration of a line chart.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartConfiguration AWS API Documentation
    #
    class LineChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :forecast_configurations,
      :type,
      :small_multiples_options,
      :x_axis_display_options,
      :x_axis_label_options,
      :primary_y_axis_display_options,
      :primary_y_axis_label_options,
      :secondary_y_axis_display_options,
      :secondary_y_axis_label_options,
      :default_series_settings,
      :series,
      :legend,
      :data_labels,
      :reference_lines,
      :tooltip,
      :contribution_analysis_defaults,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the default presentation of all line series
    # in `LineChartVisual`.
    #
    # @!attribute [rw] axis_binding
    #   The axis to which you are binding all line series to.
    #   @return [String]
    #
    # @!attribute [rw] line_style_settings
    #   Line styles options for all line series in the visual.
    #   @return [Types::LineChartLineStyleSettings]
    #
    # @!attribute [rw] marker_style_settings
    #   Marker styles options for all line series in the visual.
    #   @return [Types::LineChartMarkerStyleSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartDefaultSeriesSettings AWS API Documentation
    #
    class LineChartDefaultSeriesSettings < Struct.new(
      :axis_binding,
      :line_style_settings,
      :marker_style_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a line chart.
    #
    # @!attribute [rw] line_chart_aggregated_field_wells
    #   The field well configuration of a line chart.
    #   @return [Types::LineChartAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartFieldWells AWS API Documentation
    #
    class LineChartFieldWells < Struct.new(
      :line_chart_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # Line styles options for a line series in `LineChartVisual`.
    #
    # @!attribute [rw] line_visibility
    #   Configuration option that determines whether to show the line for
    #   the series.
    #   @return [String]
    #
    # @!attribute [rw] line_interpolation
    #   Interpolation style for line series.
    #
    #   * `LINEAR`: Show as default, linear style.
    #
    #   * `SMOOTH`: Show as a smooth curve.
    #
    #   * `STEPPED`: Show steps in line.
    #   @return [String]
    #
    # @!attribute [rw] line_style
    #   Line style for line series.
    #
    #   * `SOLID`: Show as a solid line.
    #
    #   * `DOTTED`: Show as a dotted line.
    #
    #   * `DASHED`: Show as a dashed line.
    #   @return [String]
    #
    # @!attribute [rw] line_width
    #   Width that determines the line thickness.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartLineStyleSettings AWS API Documentation
    #
    class LineChartLineStyleSettings < Struct.new(
      :line_visibility,
      :line_interpolation,
      :line_style,
      :line_width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Marker styles options for a line series in `LineChartVisual`.
    #
    # @!attribute [rw] marker_visibility
    #   Configuration option that determines whether to show the markers in
    #   the series.
    #   @return [String]
    #
    # @!attribute [rw] marker_shape
    #   Shape option for markers in the series.
    #
    #   * `CIRCLE`: Show marker as a circle.
    #
    #   * `TRIANGLE`: Show marker as a triangle.
    #
    #   * `SQUARE`: Show marker as a square.
    #
    #   * `DIAMOND`: Show marker as a diamond.
    #
    #   * `ROUNDED_SQUARE`: Show marker as a rounded square.
    #   @return [String]
    #
    # @!attribute [rw] marker_size
    #   Size of marker in the series.
    #   @return [String]
    #
    # @!attribute [rw] marker_color
    #   Color of marker in the series.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartMarkerStyleSettings AWS API Documentation
    #
    class LineChartMarkerStyleSettings < Struct.new(
      :marker_visibility,
      :marker_shape,
      :marker_size,
      :marker_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of a line series in the
    # visual
    #
    # @!attribute [rw] line_style_settings
    #   Line styles options for a line series in `LineChartVisual`.
    #   @return [Types::LineChartLineStyleSettings]
    #
    # @!attribute [rw] marker_style_settings
    #   Marker styles options for a line series in `LineChartVisual`.
    #   @return [Types::LineChartMarkerStyleSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartSeriesSettings AWS API Documentation
    #
    class LineChartSeriesSettings < Struct.new(
      :line_style_settings,
      :marker_style_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a line chart.
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of the category fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] category_items_limit_configuration
    #   The limit on the number of categories that are displayed in a line
    #   chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] color_items_limit_configuration
    #   The limit on the number of lines that are displayed in a line chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] small_multiples_sort
    #   The sort configuration of the small multiples field.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] small_multiples_limit_configuration
    #   The limit on the number of small multiples panels that are
    #   displayed.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartSortConfiguration AWS API Documentation
    #
    class LineChartSortConfiguration < Struct.new(
      :category_sort,
      :category_items_limit_configuration,
      :color_items_limit_configuration,
      :small_multiples_sort,
      :small_multiples_limit_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A line chart.
    #
    # For more information, see [Using line charts][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/line-charts.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a line chart.
    #   @return [Types::LineChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineChartVisual AWS API Documentation
    #
    class LineChartVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The series axis configuration of a line chart.
    #
    # @!attribute [rw] axis_options
    #   The options that determine the presentation of the line series axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] missing_data_configurations
    #   The configuration options that determine how missing data is treated
    #   during the rendering of a line chart.
    #   @return [Array<Types::MissingDataConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LineSeriesAxisDisplayOptions AWS API Documentation
    #
    class LineSeriesAxisDisplayOptions < Struct.new(
      :axis_options,
      :missing_data_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains the configuration of a shareable link to the
    # dashboard.
    #
    # @!attribute [rw] permissions
    #   A structure that contains the permissions of a shareable link.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LinkSharingConfiguration AWS API Documentation
    #
    class LinkSharingConfiguration < Struct.new(
      :permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   analyses.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAnalysesRequest AWS API Documentation
    #
    class ListAnalysesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_summary_list
    #   Metadata describing each of the analyses that are listed.
    #   @return [Array<Types::AnalysisSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListAnalysesResponse AWS API Documentation
    #
    class ListAnalysesResponse < Struct.new(
      :analysis_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options of a control.
    #
    # @!attribute [rw] search_options
    #   The configuration of the search options in a list control.
    #   @return [Types::ListControlSearchOptions]
    #
    # @!attribute [rw] select_all_options
    #   The configuration of the `Select all` options in a list control.
    #   @return [Types::ListControlSelectAllOptions]
    #
    # @!attribute [rw] title_options
    #   The options to configure the title visibility, name, and font size.
    #   @return [Types::LabelOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListControlDisplayOptions AWS API Documentation
    #
    class ListControlDisplayOptions < Struct.new(
      :search_options,
      :select_all_options,
      :title_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the search options in a list control.
    #
    # @!attribute [rw] visibility
    #   The visibility configuration of the search options in a list
    #   control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListControlSearchOptions AWS API Documentation
    #
    class ListControlSearchOptions < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the `Select all` options in a list control.
    #
    # @!attribute [rw] visibility
    #   The visibility configuration of the `Select all` options in a list
    #   control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListControlSelectAllOptions AWS API Documentation
    #
    class ListControlSelectAllOptions < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard that you're listing versions for.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardVersionsRequest AWS API Documentation
    #
    class ListDashboardVersionsRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_version_summary_list
    #   A structure that contains information about each version of the
    #   dashboard.
    #   @return [Array<Types::DashboardVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardVersionsResponse AWS API Documentation
    #
    class ListDashboardVersionsResponse < Struct.new(
      :dashboard_version_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboards that you're listing.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardsRequest AWS API Documentation
    #
    class ListDashboardsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_summary_list
    #   A structure that contains all of the dashboards in your Amazon Web
    #   Services account. This structure provides basic information about
    #   the dashboards.
    #   @return [Array<Types::DashboardSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDashboardsResponse AWS API Documentation
    #
    class ListDashboardsResponse < Struct.new(
      :dashboard_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSetsRequest AWS API Documentation
    #
    class ListDataSetsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_summaries
    #   The list of dataset summaries.
    #   @return [Array<Types::DataSetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSetsResponse AWS API Documentation
    #
    class ListDataSetsResponse < Struct.new(
      :data_set_summaries,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_sources
    #   A list of data sources.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListDataSourcesResponse AWS API Documentation
    #
    class ListDataSourcesResponse < Struct.new(
      :data_sources,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFolderMembersRequest AWS API Documentation
    #
    class ListFolderMembersRequest < Struct.new(
      :aws_account_id,
      :folder_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] folder_member_list
    #   A structure that contains all of the folder members (dashboards,
    #   analyses, and datasets) in the folder.
    #   @return [Array<Types::MemberIdArnPair>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFolderMembersResponse AWS API Documentation
    #
    class ListFolderMembersResponse < Struct.new(
      :status,
      :folder_member_list,
      :next_token,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFoldersRequest AWS API Documentation
    #
    class ListFoldersRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] folder_summary_list
    #   A structure that contains all of the folders in the Amazon Web
    #   Services account. This structure provides basic information about
    #   the folders.
    #   @return [Array<Types::FolderSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListFoldersResponse AWS API Documentation
    #
    class ListFoldersResponse < Struct.new(
      :status,
      :folder_summary_list,
      :next_token,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group that you want to see a membership list of.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the group that you want a list of users from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMembershipsRequest AWS API Documentation
    #
    class ListGroupMembershipsRequest < Struct.new(
      :group_name,
      :next_token,
      :max_results,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_member_list
    #   The list of the members of the group.
    #   @return [Array<Types::GroupMember>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupMembershipsResponse AWS API Documentation
    #
    class ListGroupMembershipsResponse < Struct.new(
      :group_member_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want a list of groups from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_list
    #   The list of the groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   assignments.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace of the assignment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsForUserRequest AWS API Documentation
    #
    class ListIAMPolicyAssignmentsForUserRequest < Struct.new(
      :aws_account_id,
      :user_name,
      :next_token,
      :max_results,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] active_assignments
    #   The active assignments for this user.
    #   @return [Array<Types::ActiveIAMPolicyAssignment>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsForUserResponse AWS API Documentation
    #
    class ListIAMPolicyAssignmentsForUserResponse < Struct.new(
      :active_assignments,
      :request_id,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains these IAM
    #   policy assignments.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignments.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace for the assignments.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsRequest AWS API Documentation
    #
    class ListIAMPolicyAssignmentsRequest < Struct.new(
      :aws_account_id,
      :assignment_status,
      :namespace,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] iam_policy_assignments
    #   Information describing the IAM policy assignments.
    #   @return [Array<Types::IAMPolicyAssignmentSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIAMPolicyAssignmentsResponse AWS API Documentation
    #
    class ListIAMPolicyAssignmentsResponse < Struct.new(
      :iam_policy_assignments,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The ID of the dataset used in the ingestion.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIngestionsRequest AWS API Documentation
    #
    class ListIngestionsRequest < Struct.new(
      :data_set_id,
      :next_token,
      :aws_account_id,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingestions
    #   A list of the ingestions.
    #   @return [Array<Types::Ingestion>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListIngestionsResponse AWS API Documentation
    #
    class ListIngestionsResponse < Struct.new(
      :ingestions,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the Amazon
    #   QuickSight namespaces that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A unique pagination token that can be used in a subsequent request.
    #   You will receive a pagination token in the response body of a
    #   previous `ListNameSpaces` API call if there is more data that can be
    #   returned. To receive the data, make another `ListNamespaces` API
    #   call with the returned token to retrieve the next page of data. Each
    #   token is valid for 24 hours. If you try to make a `ListNamespaces`
    #   API call with an expired token, you will receive a `HTTP 400
    #   InvalidNextTokenException` error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListNamespacesRequest AWS API Documentation
    #
    class ListNamespacesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespaces
    #   The information about the namespaces in this Amazon Web Services
    #   account. The response includes the namespace ARN, name, Amazon Web
    #   Services Region, notification email address, creation status, and
    #   identity store.
    #   @return [Array<Types::NamespaceInfoV2>]
    #
    # @!attribute [rw] next_token
    #   A unique pagination token that can be used in a subsequent request.
    #   Receiving `NextToken` in your response inticates that there is more
    #   data that can be returned. To receive the data, make another
    #   `ListNamespaces` API call with the returned token to retrieve the
    #   next page of data. Each token is valid for 24 hours. If you try to
    #   make a `ListNamespaces` API call with an expired token, you will
    #   receive a `HTTP 400 InvalidNextTokenException` error.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListNamespacesResponse AWS API Documentation
    #
    class ListNamespacesResponse < Struct.new(
      :namespaces,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListRefreshSchedulesRequest AWS API Documentation
    #
    class ListRefreshSchedulesRequest < Struct.new(
      :aws_account_id,
      :data_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] refresh_schedules
    #   The list of refresh schedules for the dataset.
    #   @return [Array<Types::RefreshSchedule>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListRefreshSchedulesResponse AWS API Documentation
    #
    class ListRefreshSchedulesResponse < Struct.new(
      :refresh_schedules,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want a list
    #   of tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   aliases that you're listing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateAliasesRequest AWS API Documentation
    #
    class ListTemplateAliasesRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias_list
    #   A structure containing the list of the template's aliases.
    #   @return [Array<Types::TemplateAlias>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateAliasesResponse AWS API Documentation
    #
    class ListTemplateAliasesResponse < Struct.new(
      :template_alias_list,
      :status,
      :request_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   templates that you're listing.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateVersionsRequest AWS API Documentation
    #
    class ListTemplateVersionsRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_version_summary_list
    #   A structure containing a list of all the versions of the specified
    #   template.
    #   @return [Array<Types::TemplateVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplateVersionsResponse AWS API Documentation
    #
    class ListTemplateVersionsResponse < Struct.new(
      :template_version_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   templates that you're listing.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplatesRequest AWS API Documentation
    #
    class ListTemplatesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_summary_list
    #   A structure containing information about the templates in the list.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTemplatesResponse AWS API Documentation
    #
    class ListTemplatesResponse < Struct.new(
      :template_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   aliases that you're listing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeAliasesRequest AWS API Documentation
    #
    class ListThemeAliasesRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias_list
    #   A structure containing the list of the theme's aliases.
    #   @return [Array<Types::ThemeAlias>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeAliasesResponse AWS API Documentation
    #
    class ListThemeAliasesResponse < Struct.new(
      :theme_alias_list,
      :status,
      :request_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the themes
    #   that you're listing.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeVersionsRequest AWS API Documentation
    #
    class ListThemeVersionsRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_version_summary_list
    #   A structure containing a list of all the versions of the specified
    #   theme.
    #   @return [Array<Types::ThemeVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemeVersionsResponse AWS API Documentation
    #
    class ListThemeVersionsResponse < Struct.new(
      :theme_version_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the themes
    #   that you're listing.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of themes that you want to list. Valid options include the
    #   following:
    #
    #   * `ALL (default)`- Display all existing themes.
    #
    #   * `CUSTOM` - Display only the themes created by people using Amazon
    #     QuickSight.
    #
    #   * `QUICKSIGHT` - Display only the starting themes defined by Amazon
    #     QuickSight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemesRequest AWS API Documentation
    #
    class ListThemesRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_summary_list
    #   Information about the themes in the list.
    #   @return [Array<Types::ThemeSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListThemesResponse AWS API Documentation
    #
    class ListThemesResponse < Struct.new(
      :theme_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh schedule you want described.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID for the topic that you want to describe. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopicRefreshSchedulesRequest AWS API Documentation
    #
    class ListTopicRefreshSchedulesRequest < Struct.new(
      :aws_account_id,
      :topic_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID for the topic that you want to describe. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] refresh_schedules
    #   The list of topic refresh schedules.
    #   @return [Array<Types::TopicRefreshScheduleSummary>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopicRefreshSchedulesResponse AWS API Documentation
    #
    class ListTopicRefreshSchedulesResponse < Struct.new(
      :topic_id,
      :topic_arn,
      :refresh_schedules,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topics
    #   that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopicsRequest AWS API Documentation
    #
    class ListTopicsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topics_summaries
    #   A list of topic summaries.
    #   @return [Array<Types::TopicSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListTopicsResponse AWS API Documentation
    #
    class ListTopicsResponse < Struct.new(
      :topics_summaries,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to list group
    #   memberships for.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID that the user is in. Currently,
    #   you use the ID for the Amazon Web Services account that contains
    #   your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroupsRequest AWS API Documentation
    #
    class ListUserGroupsRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_list
    #   The list of groups the user is a member of.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUserGroupsResponse AWS API Documentation
    #
    class ListUserGroupsResponse < Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_list
    #   The list of users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :user_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connections that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListVPCConnectionsRequest AWS API Documentation
    #
    class ListVPCConnectionsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_connection_summaries
    #   A `VPCConnectionSummaries` object that returns a summary of VPC
    #   connection objects.
    #   @return [Array<Types::VPCConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ListVPCConnectionsResponse AWS API Documentation
    #
    class ListVPCConnectionsResponse < Struct.new(
      :vpc_connection_summaries,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of loading animation in free-form layout.
    #
    # @!attribute [rw] visibility
    #   The visibility configuration of `LoadingAnimation`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LoadingAnimation AWS API Documentation
    #
    class LoadingAnimation < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The navigation configuration for `CustomActionNavigationOperation`.
    #
    # @!attribute [rw] target_sheet_id
    #   The sheet that is targeted for navigation in the same analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LocalNavigationConfiguration AWS API Documentation
    #
    class LocalNavigationConfiguration < Struct.new(
      :target_sheet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A *logical table* is a unit that joins and that data transformations
    # operate on. A logical table has a source, which can be either a
    # physical table or result of a join. When a logical table points to a
    # physical table, the logical table acts as a mutable copy of that
    # physical table through transform operations.
    #
    # @!attribute [rw] alias
    #   A display name for the logical table.
    #   @return [String]
    #
    # @!attribute [rw] data_transforms
    #   Transform operations that act on this logical table. For this
    #   structure to be valid, only one of the attributes can be non-null.
    #   @return [Array<Types::TransformOperation>]
    #
    # @!attribute [rw] source
    #   Source of this logical table.
    #   @return [Types::LogicalTableSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LogicalTable AWS API Documentation
    #
    class LogicalTable < Struct.new(
      :alias,
      :data_transforms,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the source of a logical table. This is a variant
    # type structure. For this structure to be valid, only one of the
    # attributes can be non-null.
    #
    # @!attribute [rw] join_instruction
    #   Specifies the result of a join of two logical tables.
    #   @return [Types::JoinInstruction]
    #
    # @!attribute [rw] physical_table_id
    #   Physical table ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_arn
    #   The Amazon Resource Number (ARN) of the parent dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LogicalTableSource AWS API Documentation
    #
    class LogicalTableSource < Struct.new(
      :join_instruction,
      :physical_table_id,
      :data_set_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text format for a subtitle.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] plain_text
    #   Plain text format.
    #   @return [String]
    #
    # @!attribute [rw] rich_text
    #   Rich text. Examples of rich text include bold, underline, and
    #   italics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LongFormatText AWS API Documentation
    #
    class LongFormatText < Struct.new(
      :plain_text,
      :rich_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The lookback window setup of an incremental refresh configuration.
    #
    # @!attribute [rw] column_name
    #   The name of the lookback window column.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The lookback window column size.
    #   @return [Integer]
    #
    # @!attribute [rw] size_unit
    #   The size unit that is used for the lookback window column. Valid
    #   values for this structure are `HOUR`, `DAY`, and `WEEK`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/LookbackWindow AWS API Documentation
    #
    class LookbackWindow < Struct.new(
      :column_name,
      :size,
      :size_unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 manifest file location.
    #
    # @!attribute [rw] bucket
    #   Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Amazon S3 key that identifies an object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ManifestFileLocation AWS API Documentation
    #
    class ManifestFileLocation < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dataset parameter that is mapped to an analysis parameter.
    #
    # @!attribute [rw] data_set_identifier
    #   A unique name that identifies a dataset within the analysis or
    #   dashboard.
    #   @return [String]
    #
    # @!attribute [rw] data_set_parameter_name
    #   The name of the dataset parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MappedDataSetParameter AWS API Documentation
    #
    class MappedDataSetParameter < Struct.new(
      :data_set_identifier,
      :data_set_parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for margins around the outside edge of sheets.
    #
    # @!attribute [rw] show
    #   This Boolean value controls whether to display sheet margins.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MarginStyle AWS API Documentation
    #
    class MarginStyle < Struct.new(
      :show)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for MariaDB.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MariaDbParameters AWS API Documentation
    #
    class MariaDbParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum label of a data path label.
    #
    # @!attribute [rw] visibility
    #   The visibility of the maximum label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MaximumLabelType AWS API Documentation
    #
    class MaximumLabelType < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum and minimum computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @!attribute [rw] type
    #   The type of computation. Choose one of the following options:
    #
    #   * MAXIMUM: A maximum computation.
    #
    #   * MINIMUM: A minimum computation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MaximumMinimumComputation AWS API Documentation
    #
    class MaximumMinimumComputation < Struct.new(
      :computation_id,
      :name,
      :time,
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The measure (metric) type field.
    #
    # @!attribute [rw] numerical_measure_field
    #   The measure type field with numerical type columns.
    #   @return [Types::NumericalMeasureField]
    #
    # @!attribute [rw] categorical_measure_field
    #   The measure type field with categorical type columns.
    #   @return [Types::CategoricalMeasureField]
    #
    # @!attribute [rw] date_measure_field
    #   The measure type field with date type columns.
    #   @return [Types::DateMeasureField]
    #
    # @!attribute [rw] calculated_measure_field
    #   The calculated measure field only used in pivot tables.
    #   @return [Types::CalculatedMeasureField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MeasureField AWS API Documentation
    #
    class MeasureField < Struct.new(
      :numerical_measure_field,
      :categorical_measure_field,
      :date_measure_field,
      :calculated_measure_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that consists of a member Amazon Resource Name (ARN) and a
    # member ID.
    #
    # @!attribute [rw] member_id
    #   The ID of the member.
    #   @return [String]
    #
    # @!attribute [rw] member_arn
    #   The Amazon Resource Name (ARN) of the member.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MemberIdArnPair AWS API Documentation
    #
    class MemberIdArnPair < Struct.new(
      :member_id,
      :member_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metric comparison computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] from_value
    #   The field that is used in a metric comparison from value setup.
    #   @return [Types::MeasureField]
    #
    # @!attribute [rw] target_value
    #   The field that is used in a metric comparison to value setup.
    #   @return [Types::MeasureField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MetricComparisonComputation AWS API Documentation
    #
    class MetricComparisonComputation < Struct.new(
      :computation_id,
      :name,
      :time,
      :from_value,
      :target_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum label of a data path label.
    #
    # @!attribute [rw] visibility
    #   The visibility of the minimum label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MinimumLabelType AWS API Documentation
    #
    class MinimumLabelType < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration options that determine how missing data is treated
    # during the rendering of a line chart.
    #
    # @!attribute [rw] treatment_option
    #   The treatment option that determines how missing data should be
    #   rendered. Choose from the following options:
    #
    #   * `INTERPOLATE`: Interpolate missing values between the prior and
    #     the next known value.
    #
    #   * `SHOW_AS_ZERO`: Show missing values as the value `0`.
    #
    #   * `SHOW_AS_BLANK`: Display a blank space when rendering missing
    #     data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MissingDataConfiguration AWS API Documentation
    #
    class MissingDataConfiguration < Struct.new(
      :treatment_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for MySQL.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/MySqlParameters AWS API Documentation
    #
    class MySqlParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a named entity.
    #
    # @!attribute [rw] field_name
    #   The name of the entity.
    #   @return [String]
    #
    # @!attribute [rw] property_name
    #   The property name to be used for the named entity.
    #   @return [String]
    #
    # @!attribute [rw] property_role
    #   The property role. Valid values for this structure are `PRIMARY` and
    #   `ID`.
    #   @return [String]
    #
    # @!attribute [rw] property_usage
    #   The property usage. Valid values for this structure are `INHERIT`,
    #   `DIMENSION`, and `MEASURE`.
    #   @return [String]
    #
    # @!attribute [rw] metric
    #   The definition of a metric.
    #   @return [Types::NamedEntityDefinitionMetric]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NamedEntityDefinition AWS API Documentation
    #
    class NamedEntityDefinition < Struct.new(
      :field_name,
      :property_name,
      :property_role,
      :property_usage,
      :metric)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a metric.
    #
    # @!attribute [rw] aggregation
    #   The aggregation of a named entity. Valid values for this structure
    #   are `SUM`, `MIN`, `MAX`, `COUNT`, `AVERAGE`, `DISTINCT_COUNT`,
    #   `STDEV`, `STDEVP`, `VAR`, `VARP`, `PERCENTILE`, `MEDIAN`, and
    #   `CUSTOM`.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_function_parameters
    #   The additional parameters for an aggregation function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NamedEntityDefinitionMetric AWS API Documentation
    #
    class NamedEntityDefinitionMetric < Struct.new(
      :aggregation,
      :aggregation_function_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Errors that occur during namespace creation.
    #
    # @!attribute [rw] type
    #   The error type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NamespaceError AWS API Documentation
    #
    class NamespaceError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error type.
    #
    # @!attribute [rw] name
    #   The name of the error.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The namespace ARN.
    #   @return [String]
    #
    # @!attribute [rw] capacity_region
    #   The namespace Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of a namespace that is not yet completely
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] identity_store
    #   The identity store used for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_error
    #   An error that occurred when the namespace was created.
    #   @return [Types::NamespaceError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NamespaceInfoV2 AWS API Documentation
    #
    class NamespaceInfoV2 < Struct.new(
      :name,
      :arn,
      :capacity_region,
      :creation_status,
      :identity_store,
      :namespace_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a negative format.
    #
    # @!attribute [rw] prefix
    #   The prefix for a negative format.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   The suffix for a negative format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NegativeFormat AWS API Documentation
    #
    class NegativeFormat < Struct.new(
      :prefix,
      :suffix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the negative value configuration.
    #
    # @!attribute [rw] display_mode
    #   Determines the display mode of the negative value configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NegativeValueConfiguration AWS API Documentation
    #
    class NegativeValueConfiguration < Struct.new(
      :display_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains information about a network interface.
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID associated with the network interface.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone that the network interface resides in.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   An error message.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The network interface ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :subnet_id,
      :availability_zone,
      :error_message,
      :status,
      :network_interface_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that overrides the existing default values for a
    # dataset parameter that is inherited from another dataset.
    #
    # @!attribute [rw] string_static_values
    #   A list of static default values for a given string parameter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] decimal_static_values
    #   A list of static default values for a given decimal parameter.
    #   @return [Array<Float>]
    #
    # @!attribute [rw] date_time_static_values
    #   A list of static default values for a given date time parameter.
    #   @return [Array<Time>]
    #
    # @!attribute [rw] integer_static_values
    #   A list of static default values for a given integer parameter.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NewDefaultValues AWS API Documentation
    #
    class NewDefaultValues < Struct.new(
      :string_static_values,
      :decimal_static_values,
      :date_time_static_values,
      :integer_static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the null value format configuration.
    #
    # @!attribute [rw] null_string
    #   Determines the null string of null values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NullValueFormatConfiguration AWS API Documentation
    #
    class NullValueFormatConfiguration < Struct.new(
      :null_string)
      SENSITIVE = [:null_string]
      include Aws::Structure
    end

    # The options that determine the number display format configuration.
    #
    # @!attribute [rw] prefix
    #   Determines the prefix value of the number format.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   Determines the suffix value of the number format.
    #   @return [String]
    #
    # @!attribute [rw] separator_configuration
    #   The options that determine the numeric separator configuration.
    #   @return [Types::NumericSeparatorConfiguration]
    #
    # @!attribute [rw] decimal_places_configuration
    #   The option that determines the decimal places configuration.
    #   @return [Types::DecimalPlacesConfiguration]
    #
    # @!attribute [rw] number_scale
    #   Determines the number scale value of the number format.
    #   @return [String]
    #
    # @!attribute [rw] negative_value_configuration
    #   The options that determine the negative value configuration.
    #   @return [Types::NegativeValueConfiguration]
    #
    # @!attribute [rw] null_value_format_configuration
    #   The options that determine the null value format configuration.
    #   @return [Types::NullValueFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumberDisplayFormatConfiguration AWS API Documentation
    #
    class NumberDisplayFormatConfiguration < Struct.new(
      :prefix,
      :suffix,
      :separator_configuration,
      :decimal_places_configuration,
      :number_scale,
      :negative_value_configuration,
      :null_value_format_configuration)
      SENSITIVE = [:prefix, :suffix]
      include Aws::Structure
    end

    # Formatting configuration for number fields.
    #
    # @!attribute [rw] format_configuration
    #   The options that determine the numeric format configuration.
    #   @return [Types::NumericFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumberFormatConfiguration AWS API Documentation
    #
    class NumberFormatConfiguration < Struct.new(
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for an axis with a numeric field.
    #
    # @!attribute [rw] scale
    #   The scale setup of a numeric axis.
    #   @return [Types::AxisScale]
    #
    # @!attribute [rw] range
    #   The range setup of a numeric axis.
    #   @return [Types::AxisDisplayRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericAxisOptions AWS API Documentation
    #
    class NumericAxisOptions < Struct.new(
      :scale,
      :range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The category drill down filter.
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] value
    #   The value of the double input numeric drill down filter.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericEqualityDrillDownFilter AWS API Documentation
    #
    class NumericEqualityDrillDownFilter < Struct.new(
      :column,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `NumericEqualityFilter` filters values that are equal to the
    # specified value.
    #
    # @!attribute [rw] filter_id
    #   An identifier that uniquely identifies a filter within a dashboard,
    #   analysis, or template.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] value
    #   The input value.
    #   @return [Float]
    #
    # @!attribute [rw] select_all_options
    #   Select all of the values. Null is not the assigned value of select
    #   all.
    #
    #   * `FILTER_ALL_VALUES`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] match_operator
    #   The match operator that is used to determine if a filter should be
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_function
    #   The aggregation function of the filter.
    #   @return [Types::AggregationFunction]
    #
    # @!attribute [rw] parameter_name
    #   The parameter whose value should be used for the filter value.
    #   @return [String]
    #
    # @!attribute [rw] null_option
    #   This option determines how null values should be treated when
    #   filtering data.
    #
    #   * `ALL_VALUES`: Include null values in filtered results.
    #
    #   * `NULLS_ONLY`: Only include null values in filtered results.
    #
    #   * `NON_NULLS_ONLY`: Exclude null values from filtered results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericEqualityFilter AWS API Documentation
    #
    class NumericEqualityFilter < Struct.new(
      :filter_id,
      :column,
      :value,
      :select_all_options,
      :match_operator,
      :aggregation_function,
      :parameter_name,
      :null_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the numeric format configuration.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] number_display_format_configuration
    #   The options that determine the number display format configuration.
    #   @return [Types::NumberDisplayFormatConfiguration]
    #
    # @!attribute [rw] currency_display_format_configuration
    #   The options that determine the currency display format
    #   configuration.
    #   @return [Types::CurrencyDisplayFormatConfiguration]
    #
    # @!attribute [rw] percentage_display_format_configuration
    #   The options that determine the percentage display format
    #   configuration.
    #   @return [Types::PercentageDisplayFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericFormatConfiguration AWS API Documentation
    #
    class NumericFormatConfiguration < Struct.new(
      :number_display_format_configuration,
      :currency_display_format_configuration,
      :percentage_display_format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `NumericRangeFilter` filters values that are within the value range.
    #
    # @!attribute [rw] filter_id
    #   An identifier that uniquely identifies a filter within a dashboard,
    #   analysis, or template.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] include_minimum
    #   Determines whether the minimum value in the filter value range
    #   should be included in the filtered results.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_maximum
    #   Determines whether the maximum value in the filter value range
    #   should be included in the filtered results.
    #   @return [Boolean]
    #
    # @!attribute [rw] range_minimum
    #   The minimum value for the filter value range.
    #   @return [Types::NumericRangeFilterValue]
    #
    # @!attribute [rw] range_maximum
    #   The maximum value for the filter value range.
    #   @return [Types::NumericRangeFilterValue]
    #
    # @!attribute [rw] select_all_options
    #   Select all of the values. Null is not the assigned value of select
    #   all.
    #
    #   * `FILTER_ALL_VALUES`
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] aggregation_function
    #   The aggregation function of the filter.
    #   @return [Types::AggregationFunction]
    #
    # @!attribute [rw] null_option
    #   This option determines how null values should be treated when
    #   filtering data.
    #
    #   * `ALL_VALUES`: Include null values in filtered results.
    #
    #   * `NULLS_ONLY`: Only include null values in filtered results.
    #
    #   * `NON_NULLS_ONLY`: Exclude null values from filtered results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericRangeFilter AWS API Documentation
    #
    class NumericRangeFilter < Struct.new(
      :filter_id,
      :column,
      :include_minimum,
      :include_maximum,
      :range_minimum,
      :range_maximum,
      :select_all_options,
      :aggregation_function,
      :null_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value input pf the numeric range filter.
    #
    # @!attribute [rw] static_value
    #   The static value of the numeric range filter.
    #   @return [Float]
    #
    # @!attribute [rw] parameter
    #   The parameter that is used in the numeric range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericRangeFilterValue AWS API Documentation
    #
    class NumericRangeFilterValue < Struct.new(
      :static_value,
      :parameter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the numeric separator configuration.
    #
    # @!attribute [rw] decimal_separator
    #   Determines the decimal separator.
    #   @return [String]
    #
    # @!attribute [rw] thousands_separator
    #   The options that determine the thousands separator configuration.
    #   @return [Types::ThousandSeparatorOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericSeparatorConfiguration AWS API Documentation
    #
    class NumericSeparatorConfiguration < Struct.new(
      :decimal_separator,
      :thousands_separator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregation for numerical values.
    #
    # @!attribute [rw] simple_numerical_aggregation
    #   Built-in aggregation functions for numerical values.
    #
    #   * `SUM`: The sum of a dimension or measure.
    #
    #   * `AVERAGE`: The average of a dimension or measure.
    #
    #   * `MIN`: The minimum value of a dimension or measure.
    #
    #   * `MAX`: The maximum value of a dimension or measure.
    #
    #   * `COUNT`: The count of a dimension or measure.
    #
    #   * `DISTINCT_COUNT`: The count of distinct values in a dimension or
    #     measure.
    #
    #   * `VAR`: The variance of a dimension or measure.
    #
    #   * `VARP`: The partitioned variance of a dimension or measure.
    #
    #   * `STDEV`: The standard deviation of a dimension or measure.
    #
    #   * `STDEVP`: The partitioned standard deviation of a dimension or
    #     measure.
    #
    #   * `MEDIAN`: The median value of a dimension or measure.
    #   @return [String]
    #
    # @!attribute [rw] percentile_aggregation
    #   An aggregation based on the percentile of values in a dimension or
    #   measure.
    #   @return [Types::PercentileAggregation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericalAggregationFunction AWS API Documentation
    #
    class NumericalAggregationFunction < Struct.new(
      :simple_numerical_aggregation,
      :percentile_aggregation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dimension type field with numerical type columns.
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that is used in the `NumericalDimensionField`.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] hierarchy_id
    #   The custom hierarchy ID.
    #   @return [String]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the field.
    #   @return [Types::NumberFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericalDimensionField AWS API Documentation
    #
    class NumericalDimensionField < Struct.new(
      :field_id,
      :column,
      :hierarchy_id,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The measure type field with numerical type columns.
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that is used in the `NumericalMeasureField`.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] aggregation_function
    #   The aggregation function of the measure field.
    #   @return [Types::NumericalAggregationFunction]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the field.
    #   @return [Types::NumberFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/NumericalMeasureField AWS API Documentation
    #
    class NumericalMeasureField < Struct.new(
      :field_id,
      :column,
      :aggregation_function,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Oracle.
    #
    # @!attribute [rw] host
    #   An Oracle host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   The database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/OracleParameters AWS API Documentation
    #
    class OracleParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output column.
    #
    # @!attribute [rw] name
    #   A display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for a column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/OutputColumn AWS API Documentation
    #
    class OutputColumn < Struct.new(
      :name,
      :description,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that overrides the dataset parameter values that
    # are defined in another dataset.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter to be overridden with different values.
    #   @return [String]
    #
    # @!attribute [rw] new_parameter_name
    #   The new name for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] new_default_values
    #   The new default values for the parameter.
    #   @return [Types::NewDefaultValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/OverrideDatasetParameterOperation AWS API Documentation
    #
    class OverrideDatasetParameterOperation < Struct.new(
      :parameter_name,
      :new_parameter_name,
      :new_default_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pagination configuration for a table visual or boxplot.
    #
    # @!attribute [rw] page_size
    #   Indicates how many items render in one page.
    #   @return [Integer]
    #
    # @!attribute [rw] page_number
    #   Indicates the page number.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PaginationConfiguration AWS API Documentation
    #
    class PaginationConfiguration < Struct.new(
      :page_size,
      :page_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of options that configure how each panel displays in a
    # small multiples chart.
    #
    # @!attribute [rw] title
    #   Configures the title display within each small multiples panel.
    #   @return [Types::PanelTitleOptions]
    #
    # @!attribute [rw] border_visibility
    #   Determines whether or not each panel displays a border.
    #   @return [String]
    #
    # @!attribute [rw] border_thickness
    #   Sets the line thickness of panel borders.
    #   @return [String]
    #
    # @!attribute [rw] border_style
    #   Sets the line style of panel borders.
    #   @return [String]
    #
    # @!attribute [rw] border_color
    #   Sets the line color of panel borders.
    #   @return [String]
    #
    # @!attribute [rw] gutter_visibility
    #   Determines whether or not negative space between sibling panels is
    #   rendered.
    #   @return [String]
    #
    # @!attribute [rw] gutter_spacing
    #   Sets the total amount of negative space to display between sibling
    #   panels.
    #   @return [String]
    #
    # @!attribute [rw] background_visibility
    #   Determines whether or not a background for each small multiples
    #   panel is rendered.
    #   @return [String]
    #
    # @!attribute [rw] background_color
    #   Sets the background color for each panel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PanelConfiguration AWS API Documentation
    #
    class PanelConfiguration < Struct.new(
      :title,
      :border_visibility,
      :border_thickness,
      :border_style,
      :border_color,
      :gutter_visibility,
      :gutter_spacing,
      :background_visibility,
      :background_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the title styles for each small multiples
    # panel.
    #
    # @!attribute [rw] visibility
    #   Determines whether or not panel titles are displayed.
    #   @return [String]
    #
    # @!attribute [rw] font_configuration
    #   Configures the display properties of the given text.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] horizontal_text_alignment
    #   Sets the horizontal text alignment of the title within each panel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PanelTitleOptions AWS API Documentation
    #
    class PanelTitleOptions < Struct.new(
      :visibility,
      :font_configuration,
      :horizontal_text_alignment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The control of a parameter that users can interact with in a dashboard
    # or an analysis.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] date_time_picker
    #   A control from a date parameter that specifies date and time.
    #   @return [Types::ParameterDateTimePickerControl]
    #
    # @!attribute [rw] list
    #   A control to display a list with buttons or boxes that are used to
    #   select either a single value or multiple values.
    #   @return [Types::ParameterListControl]
    #
    # @!attribute [rw] dropdown
    #   A control to display a dropdown list with buttons that are used to
    #   select a single value.
    #   @return [Types::ParameterDropDownControl]
    #
    # @!attribute [rw] text_field
    #   A control to display a text box that is used to enter a single
    #   entry.
    #   @return [Types::ParameterTextFieldControl]
    #
    # @!attribute [rw] text_area
    #   A control to display a text box that is used to enter multiple
    #   entries.
    #   @return [Types::ParameterTextAreaControl]
    #
    # @!attribute [rw] slider
    #   A control to display a horizontal toggle bar. This is used to change
    #   a value by sliding the toggle.
    #   @return [Types::ParameterSliderControl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterControl AWS API Documentation
    #
    class ParameterControl < Struct.new(
      :date_time_picker,
      :list,
      :dropdown,
      :text_field,
      :text_area,
      :slider)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control from a date parameter that specifies date and time.
    #
    # @!attribute [rw] parameter_control_id
    #   The ID of the `ParameterDateTimePickerControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `ParameterDateTimePickerControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_parameter_name
    #   The name of the `ParameterDateTimePickerControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::DateTimePickerControlDisplayOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterDateTimePickerControl AWS API Documentation
    #
    class ParameterDateTimePickerControl < Struct.new(
      :parameter_control_id,
      :title,
      :source_parameter_name,
      :display_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The declaration definition of a parameter.
    #
    # For more information, see [Parameters in Amazon QuickSight][1] in the
    # *Amazon QuickSight User Guide*.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/parameters-in-quicksight.html
    #
    # @!attribute [rw] string_parameter_declaration
    #   A parameter declaration for the `String` data type.
    #   @return [Types::StringParameterDeclaration]
    #
    # @!attribute [rw] decimal_parameter_declaration
    #   A parameter declaration for the `Decimal` data type.
    #   @return [Types::DecimalParameterDeclaration]
    #
    # @!attribute [rw] integer_parameter_declaration
    #   A parameter declaration for the `Integer` data type.
    #   @return [Types::IntegerParameterDeclaration]
    #
    # @!attribute [rw] date_time_parameter_declaration
    #   A parameter declaration for the `DateTime` data type.
    #   @return [Types::DateTimeParameterDeclaration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterDeclaration AWS API Documentation
    #
    class ParameterDeclaration < Struct.new(
      :string_parameter_declaration,
      :decimal_parameter_declaration,
      :integer_parameter_declaration,
      :date_time_parameter_declaration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a dropdown list with buttons that are used to
    # select a single value.
    #
    # @!attribute [rw] parameter_control_id
    #   The ID of the `ParameterDropDownControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `ParameterDropDownControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_parameter_name
    #   The source parameter name of the `ParameterDropDownControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::DropDownControlDisplayOptions]
    #
    # @!attribute [rw] type
    #   The type parameter name of the `ParameterDropDownControl`.
    #   @return [String]
    #
    # @!attribute [rw] selectable_values
    #   A list of selectable values that are used in a control.
    #   @return [Types::ParameterSelectableValues]
    #
    # @!attribute [rw] cascading_control_configuration
    #   The values that are displayed in a control can be configured to only
    #   show values that are valid based on what's selected in other
    #   controls.
    #   @return [Types::CascadingControlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterDropDownControl AWS API Documentation
    #
    class ParameterDropDownControl < Struct.new(
      :parameter_control_id,
      :title,
      :source_parameter_name,
      :display_options,
      :type,
      :selectable_values,
      :cascading_control_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a list with buttons or boxes that are used to
    # select either a single value or multiple values.
    #
    # @!attribute [rw] parameter_control_id
    #   The ID of the `ParameterListControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `ParameterListControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_parameter_name
    #   The source parameter name of the `ParameterListControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::ListControlDisplayOptions]
    #
    # @!attribute [rw] type
    #   The type of `ParameterListControl`.
    #   @return [String]
    #
    # @!attribute [rw] selectable_values
    #   A list of selectable values that are used in a control.
    #   @return [Types::ParameterSelectableValues]
    #
    # @!attribute [rw] cascading_control_configuration
    #   The values that are displayed in a control can be configured to only
    #   show values that are valid based on what's selected in other
    #   controls.
    #   @return [Types::CascadingControlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterListControl AWS API Documentation
    #
    class ParameterListControl < Struct.new(
      :parameter_control_id,
      :title,
      :source_parameter_name,
      :display_options,
      :type,
      :selectable_values,
      :cascading_control_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of selectable values that are used in a control.
    #
    # @!attribute [rw] values
    #   The values that are used in `ParameterSelectableValues`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] link_to_data_set_column
    #   The column identifier that fetches values from the data set.
    #   @return [Types::ColumnIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterSelectableValues AWS API Documentation
    #
    class ParameterSelectableValues < Struct.new(
      :values,
      :link_to_data_set_column)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a horizontal toggle bar. This is used to change a
    # value by sliding the toggle.
    #
    # @!attribute [rw] parameter_control_id
    #   The ID of the `ParameterSliderControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `ParameterSliderControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_parameter_name
    #   The source parameter name of the `ParameterSliderControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::SliderControlDisplayOptions]
    #
    # @!attribute [rw] maximum_value
    #   The smaller value that is displayed at the left of the slider.
    #   @return [Float]
    #
    # @!attribute [rw] minimum_value
    #   The larger value that is displayed at the right of the slider.
    #   @return [Float]
    #
    # @!attribute [rw] step_size
    #   The number of increments that the slider bar is divided into.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterSliderControl AWS API Documentation
    #
    class ParameterSliderControl < Struct.new(
      :parameter_control_id,
      :title,
      :source_parameter_name,
      :display_options,
      :maximum_value,
      :minimum_value,
      :step_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a text box that is used to enter multiple
    # entries.
    #
    # @!attribute [rw] parameter_control_id
    #   The ID of the `ParameterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `ParameterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_parameter_name
    #   The source parameter name of the `ParameterTextAreaControl`.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   The delimiter that is used to separate the lines in text.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::TextAreaControlDisplayOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterTextAreaControl AWS API Documentation
    #
    class ParameterTextAreaControl < Struct.new(
      :parameter_control_id,
      :title,
      :source_parameter_name,
      :delimiter,
      :display_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control to display a text box that is used to enter a single entry.
    #
    # @!attribute [rw] parameter_control_id
    #   The ID of the `ParameterTextFieldControl`.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the `ParameterTextFieldControl`.
    #   @return [String]
    #
    # @!attribute [rw] source_parameter_name
    #   The source parameter name of the `ParameterTextFieldControl`.
    #   @return [String]
    #
    # @!attribute [rw] display_options
    #   The display options of a control.
    #   @return [Types::TextFieldControlDisplayOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ParameterTextFieldControl AWS API Documentation
    #
    class ParameterTextFieldControl < Struct.new(
      :parameter_control_id,
      :title,
      :source_parameter_name,
      :display_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Amazon QuickSight parameters and the list's override
    # values.
    #
    # @!attribute [rw] string_parameters
    #   The parameters that have a data type of string.
    #   @return [Array<Types::StringParameter>]
    #
    # @!attribute [rw] integer_parameters
    #   The parameters that have a data type of integer.
    #   @return [Array<Types::IntegerParameter>]
    #
    # @!attribute [rw] decimal_parameters
    #   The parameters that have a data type of decimal.
    #   @return [Array<Types::DecimalParameter>]
    #
    # @!attribute [rw] date_time_parameters
    #   The parameters that have a data type of date-time.
    #   @return [Array<Types::DateTimeParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Parameters AWS API Documentation
    #
    class Parameters < Struct.new(
      :string_parameters,
      :integer_parameters,
      :decimal_parameters,
      :date_time_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The percent range in the visible range.
    #
    # @!attribute [rw] from
    #   The lower bound of the range.
    #   @return [Float]
    #
    # @!attribute [rw] to
    #   The top bound of the range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PercentVisibleRange AWS API Documentation
    #
    class PercentVisibleRange < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the percentage display format
    # configuration.
    #
    # @!attribute [rw] prefix
    #   Determines the prefix value of the percentage format.
    #   @return [String]
    #
    # @!attribute [rw] suffix
    #   Determines the suffix value of the percentage format.
    #   @return [String]
    #
    # @!attribute [rw] separator_configuration
    #   The options that determine the numeric separator configuration.
    #   @return [Types::NumericSeparatorConfiguration]
    #
    # @!attribute [rw] decimal_places_configuration
    #   The option that determines the decimal places configuration.
    #   @return [Types::DecimalPlacesConfiguration]
    #
    # @!attribute [rw] negative_value_configuration
    #   The options that determine the negative value configuration.
    #   @return [Types::NegativeValueConfiguration]
    #
    # @!attribute [rw] null_value_format_configuration
    #   The options that determine the null value format configuration.
    #   @return [Types::NullValueFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PercentageDisplayFormatConfiguration AWS API Documentation
    #
    class PercentageDisplayFormatConfiguration < Struct.new(
      :prefix,
      :suffix,
      :separator_configuration,
      :decimal_places_configuration,
      :negative_value_configuration,
      :null_value_format_configuration)
      SENSITIVE = [:prefix, :suffix]
      include Aws::Structure
    end

    # An aggregation based on the percentile of values in a dimension or
    # measure.
    #
    # @!attribute [rw] percentile_value
    #   The percentile value. This value can be any numeric constant 0–100.
    #   A percentile value of 50 computes the median value of the measure.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PercentileAggregation AWS API Documentation
    #
    class PercentileAggregation < Struct.new(
      :percentile_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The period over period computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PeriodOverPeriodComputation AWS API Documentation
    #
    class PeriodOverPeriodComputation < Struct.new(
      :computation_id,
      :name,
      :time,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The period to date computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @!attribute [rw] period_time_granularity
    #   The time granularity setup of period to date computation. Choose
    #   from the following options:
    #
    #   * YEAR: Year to date.
    #
    #   * MONTH: Month to date.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PeriodToDateComputation AWS API Documentation
    #
    class PeriodToDateComputation < Struct.new(
      :computation_id,
      :name,
      :time,
      :value,
      :period_time_granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A view of a data source that contains information about the shape of
    # the data in the underlying source. This is a variant type structure.
    # For this structure to be valid, only one of the attributes can be
    # non-null.
    #
    # @!attribute [rw] relational_table
    #   A physical table type for relational data sources.
    #   @return [Types::RelationalTable]
    #
    # @!attribute [rw] custom_sql
    #   A physical table type built from the results of the custom SQL
    #   query.
    #   @return [Types::CustomSql]
    #
    # @!attribute [rw] s3_source
    #   A physical table type for as S3 data source.
    #   @return [Types::S3Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PhysicalTable AWS API Documentation
    #
    class PhysicalTable < Struct.new(
      :relational_table,
      :custom_sql,
      :s3_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a pie chart.
    #
    # @!attribute [rw] category
    #   The category (group/color) field wells of a pie chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The value field wells of a pie chart. Values are aggregated based on
    #   categories.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] small_multiples
    #   The small multiples field well of a pie chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PieChartAggregatedFieldWells AWS API Documentation
    #
    class PieChartAggregatedFieldWells < Struct.new(
      :category,
      :values,
      :small_multiples)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a pie chart.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::PieChartFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a pie chart.
    #   @return [Types::PieChartSortConfiguration]
    #
    # @!attribute [rw] donut_options
    #   The options that determine the shape of the chart. This option
    #   determines whether the chart is a pie chart or a donut chart.
    #   @return [Types::DonutOptions]
    #
    # @!attribute [rw] small_multiples_options
    #   The small multiples setup for the visual.
    #   @return [Types::SmallMultiplesOptions]
    #
    # @!attribute [rw] category_label_options
    #   The label options of the group/color that is displayed in a pie
    #   chart.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] value_label_options
    #   The label options for the value that is displayed in a pie chart.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] data_labels
    #   The options that determine if visual data labels are displayed.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] visual_palette
    #   The palette (chart color) display setup of the visual.
    #   @return [Types::VisualPalette]
    #
    # @!attribute [rw] contribution_analysis_defaults
    #   The contribution analysis (anomaly configuration) setup of the
    #   visual.
    #   @return [Array<Types::ContributionAnalysisDefault>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PieChartConfiguration AWS API Documentation
    #
    class PieChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :donut_options,
      :small_multiples_options,
      :category_label_options,
      :value_label_options,
      :legend,
      :data_labels,
      :tooltip,
      :visual_palette,
      :contribution_analysis_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a pie chart.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] pie_chart_aggregated_field_wells
    #   The field well configuration of a pie chart.
    #   @return [Types::PieChartAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PieChartFieldWells AWS API Documentation
    #
    class PieChartFieldWells < Struct.new(
      :pie_chart_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a pie chart.
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of the category fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] category_items_limit
    #   The limit on the number of categories that are displayed in a pie
    #   chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] small_multiples_sort
    #   The sort configuration of the small multiples field.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] small_multiples_limit_configuration
    #   The limit on the number of small multiples panels that are
    #   displayed.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PieChartSortConfiguration AWS API Documentation
    #
    class PieChartSortConfiguration < Struct.new(
      :category_sort,
      :category_items_limit,
      :small_multiples_sort,
      :small_multiples_limit_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pie or donut chart.
    #
    # The `PieChartVisual` structure describes a visual that is a member of
    # the pie chart family.
    #
    # The following charts can be described by using this structure:
    #
    # * Pie charts
    #
    # * Donut charts
    #
    # For more information, see [Using pie charts][1] in the *Amazon
    # QuickSight User Guide*.
    #
    # For more information, see [Using donut charts][2] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/pie-chart.html
    # [2]: https://docs.aws.amazon.com/quicksight/latest/user/donut-chart.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a pie chart.
    #   @return [Types::PieChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PieChartVisual AWS API Documentation
    #
    class PieChartVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field sort options for a pivot table sort configuration.
    #
    # @!attribute [rw] field_id
    #   The field ID for the field sort options.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The sort by field for the field sort options.
    #   @return [Types::PivotTableSortBy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotFieldSortOptions AWS API Documentation
    #
    class PivotFieldSortOptions < Struct.new(
      :field_id,
      :sort_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field well for the pivot table.
    #
    # @!attribute [rw] rows
    #   The rows field well for a pivot table. Values are grouped by rows
    #   fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] columns
    #   The columns field well for a pivot table. Values are grouped by
    #   columns fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The values field well for a pivot table. Values are aggregated based
    #   on rows and columns fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableAggregatedFieldWells AWS API Documentation
    #
    class PivotTableAggregatedFieldWells < Struct.new(
      :rows,
      :columns,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cell conditional formatting option for a pivot table.
    #
    # @!attribute [rw] field_id
    #   The field ID of the cell for conditional formatting.
    #   @return [String]
    #
    # @!attribute [rw] text_format
    #   The text format of the cell for conditional formatting.
    #   @return [Types::TextConditionalFormat]
    #
    # @!attribute [rw] scope
    #   The scope of the cell for conditional formatting.
    #   @return [Types::PivotTableConditionalFormattingScope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableCellConditionalFormatting AWS API Documentation
    #
    class PivotTableCellConditionalFormatting < Struct.new(
      :field_id,
      :text_format,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting for a `PivotTableVisual`.
    #
    # @!attribute [rw] conditional_formatting_options
    #   Conditional formatting options for a `PivotTableVisual`.
    #   @return [Array<Types::PivotTableConditionalFormattingOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableConditionalFormatting AWS API Documentation
    #
    class PivotTableConditionalFormatting < Struct.new(
      :conditional_formatting_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conditional formatting options for a `PivotTableVisual`.
    #
    # @!attribute [rw] cell
    #   The cell conditional formatting option for a pivot table.
    #   @return [Types::PivotTableCellConditionalFormatting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableConditionalFormattingOption AWS API Documentation
    #
    class PivotTableConditionalFormattingOption < Struct.new(
      :cell)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scope of the cell for conditional formatting.
    #
    # @!attribute [rw] role
    #   The role (field, field total, grand total) of the cell for
    #   conditional formatting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableConditionalFormattingScope AWS API Documentation
    #
    class PivotTableConditionalFormattingScope < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a `PivotTableVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::PivotTableFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration for a `PivotTableVisual`.
    #   @return [Types::PivotTableSortConfiguration]
    #
    # @!attribute [rw] table_options
    #   The table options for a pivot table visual.
    #   @return [Types::PivotTableOptions]
    #
    # @!attribute [rw] total_options
    #   The total options for a pivot table visual.
    #   @return [Types::PivotTableTotalOptions]
    #
    # @!attribute [rw] field_options
    #   The field options for a pivot table visual.
    #   @return [Types::PivotTableFieldOptions]
    #
    # @!attribute [rw] paginated_report_options
    #   The paginated report options for a pivot table visual.
    #   @return [Types::PivotTablePaginatedReportOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableConfiguration AWS API Documentation
    #
    class PivotTableConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :table_options,
      :total_options,
      :field_options,
      :paginated_report_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data path options for the pivot table field options.
    #
    # @!attribute [rw] data_path_list
    #   The list of data path values for the data path options.
    #   @return [Array<Types::DataPathValue>]
    #
    # @!attribute [rw] width
    #   The width of the data path option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableDataPathOption AWS API Documentation
    #
    class PivotTableDataPathOption < Struct.new(
      :data_path_list,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # The selected field options for the pivot table field options.
    #
    # @!attribute [rw] field_id
    #   The field ID of the pivot table field.
    #   @return [String]
    #
    # @!attribute [rw] custom_label
    #   The custom label of the pivot table field.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the pivot table field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableFieldOption AWS API Documentation
    #
    class PivotTableFieldOption < Struct.new(
      :field_id,
      :custom_label,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field options for a pivot table visual.
    #
    # @!attribute [rw] selected_field_options
    #   The selected field options for the pivot table field options.
    #   @return [Array<Types::PivotTableFieldOption>]
    #
    # @!attribute [rw] data_path_options
    #   The data path options for the pivot table field options.
    #   @return [Array<Types::PivotTableDataPathOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableFieldOptions AWS API Documentation
    #
    class PivotTableFieldOptions < Struct.new(
      :selected_field_options,
      :data_path_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The optional configuration of subtotals cells.
    #
    # @!attribute [rw] field_id
    #   The field ID of the subtotal options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableFieldSubtotalOptions AWS API Documentation
    #
    class PivotTableFieldSubtotalOptions < Struct.new(
      :field_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells for a pivot table visual.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] pivot_table_aggregated_field_wells
    #   The aggregated field well for the pivot table.
    #   @return [Types::PivotTableAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableFieldWells AWS API Documentation
    #
    class PivotTableFieldWells < Struct.new(
      :pivot_table_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The table options for a pivot table visual.
    #
    # @!attribute [rw] metric_placement
    #   The metric placement (row, column) options.
    #   @return [String]
    #
    # @!attribute [rw] single_metric_visibility
    #   The visibility of the single metric options.
    #   @return [String]
    #
    # @!attribute [rw] column_names_visibility
    #   The visibility of the column names.
    #   @return [String]
    #
    # @!attribute [rw] toggle_buttons_visibility
    #   Determines the visibility of the pivot table.
    #   @return [String]
    #
    # @!attribute [rw] column_header_style
    #   The table cell style of the column header.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] row_header_style
    #   The table cell style of the row headers.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] cell_style
    #   The table cell style of cells.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] row_field_names_style
    #   The table cell style of row field names.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] row_alternate_color_options
    #   The row alternate color options (widget status, row alternate
    #   colors).
    #   @return [Types::RowAlternateColorOptions]
    #
    # @!attribute [rw] collapsed_row_dimensions_visibility
    #   The visibility setting of a pivot table's collapsed row dimension
    #   fields. If the value of this structure is `HIDDEN`, all collapsed
    #   columns in a pivot table are automatically hidden. The default value
    #   is `VISIBLE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableOptions AWS API Documentation
    #
    class PivotTableOptions < Struct.new(
      :metric_placement,
      :single_metric_visibility,
      :column_names_visibility,
      :toggle_buttons_visibility,
      :column_header_style,
      :row_header_style,
      :cell_style,
      :row_field_names_style,
      :row_alternate_color_options,
      :collapsed_row_dimensions_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The paginated report options for a pivot table visual.
    #
    # @!attribute [rw] vertical_overflow_visibility
    #   The visibility of the printing table overflow across pages.
    #   @return [String]
    #
    # @!attribute [rw] overflow_column_header_visibility
    #   The visibility of the repeating header rows on each page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTablePaginatedReportOptions AWS API Documentation
    #
    class PivotTablePaginatedReportOptions < Struct.new(
      :vertical_overflow_visibility,
      :overflow_column_header_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort by field for the field sort options.
    #
    # @!attribute [rw] field
    #   The field sort (field id, direction) for the pivot table sort by
    #   options.
    #   @return [Types::FieldSort]
    #
    # @!attribute [rw] column
    #   The column sort (field id, direction) for the pivot table sort by
    #   options.
    #   @return [Types::ColumnSort]
    #
    # @!attribute [rw] data_path
    #   The data path sort (data path value, direction) for the pivot table
    #   sort by options.
    #   @return [Types::DataPathSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableSortBy AWS API Documentation
    #
    class PivotTableSortBy < Struct.new(
      :field,
      :column,
      :data_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration for a `PivotTableVisual`.
    #
    # @!attribute [rw] field_sort_options
    #   The field sort options for a pivot table sort configuration.
    #   @return [Array<Types::PivotFieldSortOptions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableSortConfiguration AWS API Documentation
    #
    class PivotTableSortConfiguration < Struct.new(
      :field_sort_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The total options for a pivot table visual.
    #
    # @!attribute [rw] row_subtotal_options
    #   The row subtotal options.
    #   @return [Types::SubtotalOptions]
    #
    # @!attribute [rw] column_subtotal_options
    #   The column subtotal options.
    #   @return [Types::SubtotalOptions]
    #
    # @!attribute [rw] row_total_options
    #   The row total options.
    #   @return [Types::PivotTotalOptions]
    #
    # @!attribute [rw] column_total_options
    #   The column total options.
    #   @return [Types::PivotTotalOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableTotalOptions AWS API Documentation
    #
    class PivotTableTotalOptions < Struct.new(
      :row_subtotal_options,
      :column_subtotal_options,
      :row_total_options,
      :column_total_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pivot table.
    #
    # For more information, see [Using pivot tables][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/pivot-table.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::PivotTableConfiguration]
    #
    # @!attribute [rw] conditional_formatting
    #   The conditional formatting for a `PivotTableVisual`.
    #   @return [Types::PivotTableConditionalFormatting]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTableVisual AWS API Documentation
    #
    class PivotTableVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :conditional_formatting,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The optional configuration of totals cells in a `PivotTableVisual`.
    #
    # @!attribute [rw] totals_visibility
    #   The visibility configuration for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] placement
    #   The placement (start, end) for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] scroll_status
    #   The scroll status (pinned, scrolled) for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] custom_label
    #   The custom label string for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] total_cell_style
    #   The cell styling options for the total cells.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] value_cell_style
    #   The cell styling options for the totals of value cells.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] metric_header_cell_style
    #   The cell styling options for the total of header cells.
    #   @return [Types::TableCellStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PivotTotalOptions AWS API Documentation
    #
    class PivotTotalOptions < Struct.new(
      :totals_visibility,
      :placement,
      :scroll_status,
      :custom_label,
      :total_cell_style,
      :value_cell_style,
      :metric_header_cell_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for PostgreSQL.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PostgreSqlParameters AWS API Documentation
    #
    class PostgreSqlParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more preconditions aren't met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PreconditionNotMetException AWS API Documentation
    #
    class PreconditionNotMetException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The option that determines the hierarchy of the fields that are
    # defined during data preparation. These fields are available to use in
    # any analysis that uses the data source.
    #
    # @!attribute [rw] hierarchy_id
    #   The hierarchy ID of the predefined hierarchy.
    #   @return [String]
    #
    # @!attribute [rw] columns
    #   The list of columns that define the predefined hierarchy.
    #   @return [Array<Types::ColumnIdentifier>]
    #
    # @!attribute [rw] drill_down_filters
    #   The option that determines the drill down filters for the predefined
    #   hierarchy.
    #   @return [Array<Types::DrillDownFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PredefinedHierarchy AWS API Documentation
    #
    class PredefinedHierarchy < Struct.new(
      :hierarchy_id,
      :columns,
      :drill_down_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Presto.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] catalog
    #   Catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PrestoParameters AWS API Documentation
    #
    class PrestoParameters < Struct.new(
      :host,
      :port,
      :catalog)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of the progress bar of a
    # KPI visual.
    #
    # @!attribute [rw] visibility
    #   The visibility of the progress bar.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ProgressBarOptions AWS API Documentation
    #
    class ProgressBarOptions < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that projects columns. Operations that come
    # after a projection can only refer to projected columns.
    #
    # @!attribute [rw] projected_columns
    #   Projected columns.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ProjectOperation AWS API Documentation
    #
    class ProjectOperation < Struct.new(
      :projected_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_refresh_properties
    #   The dataset refresh properties.
    #   @return [Types::DataSetRefreshProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PutDataSetRefreshPropertiesRequest AWS API Documentation
    #
    class PutDataSetRefreshPropertiesRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :data_set_refresh_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/PutDataSetRefreshPropertiesResponse AWS API Documentation
    #
    class PutDataSetRefreshPropertiesResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a queued dataset SPICE ingestion.
    #
    # @!attribute [rw] waiting_on_ingestion
    #   The ID of the queued ingestion.
    #   @return [String]
    #
    # @!attribute [rw] queued_ingestion
    #   The ID of the ongoing ingestion. The queued ingestion is waiting for
    #   the ongoing ingestion to complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/QueueInfo AWS API Documentation
    #
    class QueueInfo < Struct.new(
      :waiting_on_ingestion,
      :queued_ingestion)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user with the provided name isn't found. This error can happen in
    # any operation that requires finding a user based on a provided user
    # name, such as `DeleteUser`, `DescribeUser`, and so on.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/QuickSightUserNotFoundException AWS API Documentation
    #
    class QuickSightUserNotFoundException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field well configuration of a `RadarChartVisual`.
    #
    # @!attribute [rw] category
    #   The aggregated field well categories of a radar chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] color
    #   The color that are assigned to the aggregated field wells of a radar
    #   chart.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The values that are assigned to the aggregated field wells of a
    #   radar chart.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RadarChartAggregatedFieldWells AWS API Documentation
    #
    class RadarChartAggregatedFieldWells < Struct.new(
      :category,
      :color,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configured style settings of a radar chart.
    #
    # @!attribute [rw] visibility
    #   The visibility settings of a radar chart.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RadarChartAreaStyleSettings AWS API Documentation
    #
    class RadarChartAreaStyleSettings < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a `RadarChartVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a `RadarChartVisual`.
    #   @return [Types::RadarChartFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a `RadarChartVisual`.
    #   @return [Types::RadarChartSortConfiguration]
    #
    # @!attribute [rw] shape
    #   The shape of the radar chart.
    #   @return [String]
    #
    # @!attribute [rw] base_series_settings
    #   The base sreies settings of a radar chart.
    #   @return [Types::RadarChartSeriesSettings]
    #
    # @!attribute [rw] start_angle
    #   The start angle of a radar chart's axis.
    #   @return [Float]
    #
    # @!attribute [rw] visual_palette
    #   The palette (chart color) display setup of the visual.
    #   @return [Types::VisualPalette]
    #
    # @!attribute [rw] alternate_band_colors_visibility
    #   Determines the visibility of the colors of alternatign bands in a
    #   radar chart.
    #   @return [String]
    #
    # @!attribute [rw] alternate_band_even_color
    #   The color of the even-numbered alternate bands of a radar chart.
    #   @return [String]
    #
    # @!attribute [rw] alternate_band_odd_color
    #   The color of the odd-numbered alternate bands of a radar chart.
    #   @return [String]
    #
    # @!attribute [rw] category_axis
    #   The category axis of a radar chart.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] category_label_options
    #   The category label options of a radar chart.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] color_axis
    #   The color axis of a radar chart.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] color_label_options
    #   The color label options of a radar chart.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RadarChartConfiguration AWS API Documentation
    #
    class RadarChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :shape,
      :base_series_settings,
      :start_angle,
      :visual_palette,
      :alternate_band_colors_visibility,
      :alternate_band_even_color,
      :alternate_band_odd_color,
      :category_axis,
      :category_label_options,
      :color_axis,
      :color_label_options,
      :legend)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of a radar chart visual.
    #
    # @!attribute [rw] radar_chart_aggregated_field_wells
    #   The aggregated field wells of a radar chart visual.
    #   @return [Types::RadarChartAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RadarChartFieldWells AWS API Documentation
    #
    class RadarChartFieldWells < Struct.new(
      :radar_chart_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The series settings of a radar chart.
    #
    # @!attribute [rw] area_style_settings
    #   The area style settings of a radar chart.
    #   @return [Types::RadarChartAreaStyleSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RadarChartSeriesSettings AWS API Documentation
    #
    class RadarChartSeriesSettings < Struct.new(
      :area_style_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a `RadarChartVisual`.
    #
    # @!attribute [rw] category_sort
    #   The category sort options of a radar chart.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] category_items_limit
    #   The category items limit for a radar chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] color_sort
    #   The color sort configuration of a radar chart.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] color_items_limit
    #   The color items limit of a radar chart.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RadarChartSortConfiguration AWS API Documentation
    #
    class RadarChartSortConfiguration < Struct.new(
      :category_sort,
      :category_items_limit,
      :color_sort,
      :color_items_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A radar chart visual.
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::RadarChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RadarChartVisual AWS API Documentation
    #
    class RadarChartVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a range constant.
    #
    # @!attribute [rw] minimum
    #   The minimum value for a range constant.
    #   @return [String]
    #
    # @!attribute [rw] maximum
    #   The maximum value for a range constant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RangeConstant AWS API Documentation
    #
    class RangeConstant < Struct.new(
      :minimum,
      :maximum)
      SENSITIVE = []
      include Aws::Structure
    end

    # The range ends label type of a data path label.
    #
    # @!attribute [rw] visibility
    #   The visibility of the range ends label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RangeEndsLabelType AWS API Documentation
    #
    class RangeEndsLabelType < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Amazon RDS.
    #
    # @!attribute [rw] instance_id
    #   Instance ID.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RdsParameters AWS API Documentation
    #
    class RdsParameters < Struct.new(
      :instance_id,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Amazon Redshift. The `ClusterId` field can be blank
    # if `Host` and `Port` are both set. The `Host` and `Port` fields can be
    # blank if the `ClusterId` field is set.
    #
    # @!attribute [rw] host
    #   Host. This field can be blank if `ClusterId` is provided.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port. This field can be blank if the `ClusterId` is provided.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @!attribute [rw] cluster_id
    #   Cluster ID. This field can be blank if the `Host` and `Port` are
    #   provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RedshiftParameters AWS API Documentation
    #
    class RedshiftParameters < Struct.new(
      :host,
      :port,
      :database,
      :cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference line visual display options.
    #
    # @!attribute [rw] status
    #   The status of the reference line. Choose one of the following
    #   options:
    #
    #   * `ENABLE`
    #
    #   * `DISABLE`
    #   @return [String]
    #
    # @!attribute [rw] data_configuration
    #   The data configuration of the reference line.
    #   @return [Types::ReferenceLineDataConfiguration]
    #
    # @!attribute [rw] style_configuration
    #   The style configuration of the reference line.
    #   @return [Types::ReferenceLineStyleConfiguration]
    #
    # @!attribute [rw] label_configuration
    #   The label configuration of the reference line.
    #   @return [Types::ReferenceLineLabelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLine AWS API Documentation
    #
    class ReferenceLine < Struct.new(
      :status,
      :data_configuration,
      :style_configuration,
      :label_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a custom label on a `ReferenceLine`.
    #
    # @!attribute [rw] custom_label
    #   The string text of the custom label.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLineCustomLabelConfiguration AWS API Documentation
    #
    class ReferenceLineCustomLabelConfiguration < Struct.new(
      :custom_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data configuration of the reference line.
    #
    # @!attribute [rw] static_configuration
    #   The static data configuration of the reference line data
    #   configuration.
    #   @return [Types::ReferenceLineStaticDataConfiguration]
    #
    # @!attribute [rw] dynamic_configuration
    #   The dynamic configuration of the reference line data configuration.
    #   @return [Types::ReferenceLineDynamicDataConfiguration]
    #
    # @!attribute [rw] axis_binding
    #   The axis binding type of the reference line. Choose one of the
    #   following options:
    #
    #   * PrimaryY
    #
    #   * SecondaryY
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLineDataConfiguration AWS API Documentation
    #
    class ReferenceLineDataConfiguration < Struct.new(
      :static_configuration,
      :dynamic_configuration,
      :axis_binding)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dynamic configuration of the reference line data configuration.
    #
    # @!attribute [rw] column
    #   The column that the dynamic data targets.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] measure_aggregation_function
    #   The aggregation function that is used in the dynamic data.
    #   @return [Types::AggregationFunction]
    #
    # @!attribute [rw] calculation
    #   The calculation that is used in the dynamic data.
    #   @return [Types::NumericalAggregationFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLineDynamicDataConfiguration AWS API Documentation
    #
    class ReferenceLineDynamicDataConfiguration < Struct.new(
      :column,
      :measure_aggregation_function,
      :calculation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label configuration of a reference line.
    #
    # @!attribute [rw] value_label_configuration
    #   The value label configuration of the label in a reference line.
    #   @return [Types::ReferenceLineValueLabelConfiguration]
    #
    # @!attribute [rw] custom_label_configuration
    #   The custom label configuration of the label in a reference line.
    #   @return [Types::ReferenceLineCustomLabelConfiguration]
    #
    # @!attribute [rw] font_configuration
    #   The font configuration of the label in a reference line.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] font_color
    #   The font color configuration of the label in a reference line.
    #   @return [String]
    #
    # @!attribute [rw] horizontal_position
    #   The horizontal position configuration of the label in a reference
    #   line. Choose one of the following options:
    #
    #   * `LEFT`
    #
    #   * `CENTER`
    #
    #   * `RIGHT`
    #   @return [String]
    #
    # @!attribute [rw] vertical_position
    #   The vertical position configuration of the label in a reference
    #   line. Choose one of the following options:
    #
    #   * `ABOVE`
    #
    #   * `BELOW`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLineLabelConfiguration AWS API Documentation
    #
    class ReferenceLineLabelConfiguration < Struct.new(
      :value_label_configuration,
      :custom_label_configuration,
      :font_configuration,
      :font_color,
      :horizontal_position,
      :vertical_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # The static data configuration of the reference line data
    # configuration.
    #
    # @!attribute [rw] value
    #   The double input of the static data.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLineStaticDataConfiguration AWS API Documentation
    #
    class ReferenceLineStaticDataConfiguration < Struct.new(
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # The style configuration of the reference line.
    #
    # @!attribute [rw] pattern
    #   The pattern type of the line style. Choose one of the following
    #   options:
    #
    #   * `SOLID`
    #
    #   * `DASHED`
    #
    #   * `DOTTED`
    #   @return [String]
    #
    # @!attribute [rw] color
    #   The hex color of the reference line.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLineStyleConfiguration AWS API Documentation
    #
    class ReferenceLineStyleConfiguration < Struct.new(
      :pattern,
      :color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value label configuration of the label in a reference line.
    #
    # @!attribute [rw] relative_position
    #   The relative position of the value label. Choose one of the
    #   following options:
    #
    #   * `BEFORE_CUSTOM_LABEL`
    #
    #   * `AFTER_CUSTOM_LABEL`
    #   @return [String]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the value label.
    #   @return [Types::NumericFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ReferenceLineValueLabelConfiguration AWS API Documentation
    #
    class ReferenceLineValueLabelConfiguration < Struct.new(
      :relative_position,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The refresh configuration of a dataset.
    #
    # @!attribute [rw] incremental_refresh
    #   The incremental refresh for the dataset.
    #   @return [Types::IncrementalRefresh]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RefreshConfiguration AWS API Documentation
    #
    class RefreshConfiguration < Struct.new(
      :incremental_refresh)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the interval between each scheduled refresh of a dataset.
    #
    # @!attribute [rw] interval
    #   The interval between scheduled refreshes. Valid values are as
    #   follows:
    #
    #   * `MINUTE15`: The dataset refreshes every 15 minutes. This value is
    #     only supported for incremental refreshes. This interval can only
    #     be used for one schedule per dataset.
    #
    #   * `MINUTE30`:The dataset refreshes every 30 minutes. This value is
    #     only supported for incremental refreshes. This interval can only
    #     be used for one schedule per dataset.
    #
    #   * `HOURLY`: The dataset refreshes every hour. This interval can only
    #     be used for one schedule per dataset.
    #
    #   * `DAILY`: The dataset refreshes every day.
    #
    #   * `WEEKLY`: The dataset refreshes every week.
    #
    #   * `MONTHLY`: The dataset refreshes every month.
    #   @return [String]
    #
    # @!attribute [rw] refresh_on_day
    #   The day of the week that you want to schedule the refresh on. This
    #   value is required for weekly and monthly refresh intervals.
    #   @return [Types::ScheduleRefreshOnEntity]
    #
    # @!attribute [rw] timezone
    #   The timezone that you want the refresh schedule to use. The timezone
    #   ID must match a corresponding ID found on
    #   `java.util.time.getAvailableIDs()`.
    #   @return [String]
    #
    # @!attribute [rw] time_of_the_day
    #   The time of day that you want the datset to refresh. This value is
    #   expressed in HH:MM format. This field is not required for schedules
    #   that refresh hourly.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RefreshFrequency AWS API Documentation
    #
    class RefreshFrequency < Struct.new(
      :interval,
      :refresh_on_day,
      :timezone,
      :time_of_the_day)
      SENSITIVE = []
      include Aws::Structure
    end

    # The refresh schedule of a dataset.
    #
    # @!attribute [rw] schedule_id
    #   An identifier for the refresh schedule.
    #   @return [String]
    #
    # @!attribute [rw] schedule_frequency
    #   The frequency for the refresh schedule.
    #   @return [Types::RefreshFrequency]
    #
    # @!attribute [rw] start_after_date_time
    #   Time after which the refresh schedule can be started, expressed in
    #   `YYYY-MM-DDTHH:MM:SS` format.
    #   @return [Time]
    #
    # @!attribute [rw] refresh_type
    #   The type of refresh that a datset undergoes. Valid values are as
    #   follows:
    #
    #   * `FULL_REFRESH`: A complete refresh of a dataset.
    #
    #   * `INCREMENTAL_REFRESH`: A partial refresh of some rows of a
    #     dataset, based on the time window specified.
    #
    #   For more information on full and incremental refreshes, see
    #   [Refreshing SPICE data][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/refreshing-imported-data.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the refresh schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RefreshSchedule AWS API Documentation
    #
    class RefreshSchedule < Struct.new(
      :schedule_id,
      :schedule_frequency,
      :start_after_date_time,
      :refresh_type,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_type
    #   Amazon QuickSight supports several ways of managing the identity of
    #   users. This parameter accepts two values:
    #
    #   * `IAM`: A user whose identity maps to an existing IAM user or role.
    #
    #   * `QUICKSIGHT`: A user whose identity is owned and managed
    #     internally by Amazon QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the user that you want to register.
    #   @return [String]
    #
    # @!attribute [rw] user_role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:
    #
    #   * `READER`: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   * `RESTRICTED_READER`: This role isn't currently available for use.
    #
    #   * `RESTRICTED_AUTHOR`: This role isn't currently available for use.
    #   @return [String]
    #
    # @!attribute [rw] iam_arn
    #   The ARN of the IAM user or role that you are registering with Amazon
    #   QuickSight.
    #   @return [String]
    #
    # @!attribute [rw] session_name
    #   You need to use this parameter only when you register one or more
    #   users using an assumed IAM role. You don't need to provide the
    #   session name for other scenarios, for example when you are
    #   registering an IAM user or an Amazon QuickSight user. You can
    #   register multiple users using the same IAM role if each user has a
    #   different session name. For more information on assuming IAM roles,
    #   see [ `assume-role` ][1] in the *CLI Reference.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/reference/sts/assume-role.html
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to create for the user
    #   you are registering.
    #   @return [String]
    #
    # @!attribute [rw] custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   To add custom permissions to an existing user, use ` UpdateUser `
    #   instead.
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the Amazon QuickSight console. Then,
    #   you use the `RegisterUser` API operation to assign the named set of
    #   permissions to a Amazon QuickSight user.
    #
    #   Amazon QuickSight custom permissions are applied through IAM
    #   policies. Therefore, they override the permissions typically granted
    #   by assigning Amazon QuickSight users to one of the default security
    #   cohorts in Amazon QuickSight (admin, author, reader).
    #
    #   This feature is available only to Amazon QuickSight Enterprise
    #   edition subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] external_login_federation_provider_type
    #   The type of supported external login provider that provides identity
    #   to let a user federate into Amazon QuickSight with an associated
    #   Identity and Access Management(IAM) role. The type of supported
    #   external login provider can be one of the following.
    #
    #   * `COGNITO`: Amazon Cognito. The provider URL is
    #     cognito-identity.amazonaws.com. When choosing the `COGNITO`
    #     provider type, don’t use the "CustomFederationProviderUrl"
    #     parameter which is only needed when the external provider is
    #     custom.
    #
    #   * `CUSTOM_OIDC`: Custom OpenID Connect (OIDC) provider. When
    #     choosing `CUSTOM_OIDC` type, use the `CustomFederationProviderUrl`
    #     parameter to provide the custom OIDC provider URL.
    #   @return [String]
    #
    # @!attribute [rw] custom_federation_provider_url
    #   The URL of the custom OpenID Connect (OIDC) provider that provides
    #   identity to let a user federate into Amazon QuickSight with an
    #   associated Identity and Access Management(IAM) role. This parameter
    #   should only be used when `ExternalLoginFederationProviderType`
    #   parameter is set to `CUSTOM_OIDC`.
    #   @return [String]
    #
    # @!attribute [rw] external_login_id
    #   The identity ID for a user in the external login provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUserRequest AWS API Documentation
    #
    class RegisterUserRequest < Struct.new(
      :identity_type,
      :email,
      :user_role,
      :iam_arn,
      :session_name,
      :aws_account_id,
      :namespace,
      :user_name,
      :custom_permissions_name,
      :external_login_federation_provider_type,
      :custom_federation_provider_url,
      :external_login_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user's user name.
    #   @return [Types::User]
    #
    # @!attribute [rw] user_invitation_url
    #   The URL the user visits to complete registration and provide a
    #   password. This is returned only for users with an identity type of
    #   `QUICKSIGHT`.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisterUserResponse AWS API Documentation
    #
    class RegisterUserResponse < Struct.new(
      :user,
      :user_invitation_url,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The feature configurations of an embedded Amazon QuickSight console.
    #
    # @!attribute [rw] state_persistence
    #   The state persistence configurations of an embedded Amazon
    #   QuickSight console.
    #   @return [Types::StatePersistenceConfigurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisteredUserConsoleFeatureConfigurations AWS API Documentation
    #
    class RegisteredUserConsoleFeatureConfigurations < Struct.new(
      :state_persistence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the dashboard you want to embed.
    #
    # @!attribute [rw] initial_dashboard_id
    #   The dashboard ID for the dashboard that you want the user to see
    #   first. This ID is included in the output URL. When the URL in
    #   response is accessed, Amazon QuickSight renders this dashboard if
    #   the user has permissions to view it.
    #
    #   If the user does not have permission to view this dashboard, they
    #   see a permissions error message.
    #   @return [String]
    #
    # @!attribute [rw] feature_configurations
    #   The feature configurations of an embbedded Amazon QuickSight
    #   dashboard.
    #   @return [Types::RegisteredUserDashboardFeatureConfigurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisteredUserDashboardEmbeddingConfiguration AWS API Documentation
    #
    class RegisteredUserDashboardEmbeddingConfiguration < Struct.new(
      :initial_dashboard_id,
      :feature_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The feature configuration for an embedded dashboard.
    #
    # @!attribute [rw] state_persistence
    #   The state persistence settings of an embedded dashboard.
    #   @return [Types::StatePersistenceConfigurations]
    #
    # @!attribute [rw] bookmarks
    #   The bookmarks configuration for an embedded dashboard in Amazon
    #   QuickSight.
    #   @return [Types::BookmarksConfigurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisteredUserDashboardFeatureConfigurations AWS API Documentation
    #
    class RegisteredUserDashboardFeatureConfigurations < Struct.new(
      :state_persistence,
      :bookmarks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The experience that you are embedding. You can use this object to
    # generate a url that embeds a visual into your application.
    #
    # @!attribute [rw] initial_dashboard_visual_id
    #   The visual ID for the visual that you want the user to embed. This
    #   ID is included in the output URL. When the URL in response is
    #   accessed, Amazon QuickSight renders this visual.
    #
    #   The Amazon Resource Name (ARN) of the dashboard that the visual
    #   belongs to must be included in the `AuthorizedResourceArns`
    #   parameter. Otherwise, the request will fail with
    #   `InvalidParameterValueException`.
    #   @return [Types::DashboardVisualId]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisteredUserDashboardVisualEmbeddingConfiguration AWS API Documentation
    #
    class RegisteredUserDashboardVisualEmbeddingConfiguration < Struct.new(
      :initial_dashboard_visual_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The type of experience you want to embed. For registered users, you
    # can embed Amazon QuickSight dashboards or the Amazon QuickSight
    # console.
    #
    # <note markdown="1"> Exactly one of the experience configurations is required. You can
    # choose `Dashboard` or `QuickSightConsole`. You cannot choose more than
    # one experience configuration.
    #
    #  </note>
    #
    # @!attribute [rw] dashboard
    #   The configuration details for providing a dashboard embedding
    #   experience.
    #   @return [Types::RegisteredUserDashboardEmbeddingConfiguration]
    #
    # @!attribute [rw] quick_sight_console
    #   The configuration details for providing each Amazon QuickSight
    #   console embedding experience. This can be used along with custom
    #   permissions to restrict access to certain features. For more
    #   information, see [Customizing Access to the Amazon QuickSight
    #   Console][1] in the *Amazon QuickSight User Guide*.
    #
    #   Use ` GenerateEmbedUrlForRegisteredUser ` where you want to provide
    #   an authoring portal that allows users to create data sources,
    #   datasets, analyses, and dashboards. The users who accesses an
    #   embedded Amazon QuickSight console needs to belong to the author or
    #   admin security cohort. If you want to restrict permissions to some
    #   of these features, add a custom permissions profile to the user with
    #   the ` UpdateUser ` API operation. Use the ` RegisterUser ` API
    #   operation to add a new user with a custom permission profile
    #   attached. For more information, see the following sections in the
    #   *Amazon QuickSight User Guide*:
    #
    #   * [Embedding the Full Functionality of the Amazon QuickSight Console
    #     for Authenticated Users][2]
    #
    #   * [Customizing Access to the Amazon QuickSight Console][1]
    #
    #   For more information about the high-level steps for embedding and
    #   for an interactive demo of the ways you can customize embedding,
    #   visit the [Amazon QuickSight Developer Portal][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html
    #   [2]: https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-full-console-for-authenticated-users.html
    #   [3]: https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html
    #   @return [Types::RegisteredUserQuickSightConsoleEmbeddingConfiguration]
    #
    # @!attribute [rw] q_search_bar
    #   The configuration details for embedding the Q search bar.
    #
    #   For more information about embedding the Q search bar, see
    #   [Embedding Overview][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/embedding-overview.html
    #   @return [Types::RegisteredUserQSearchBarEmbeddingConfiguration]
    #
    # @!attribute [rw] dashboard_visual
    #   The type of embedding experience. In this case, Amazon QuickSight
    #   visuals.
    #   @return [Types::RegisteredUserDashboardVisualEmbeddingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisteredUserEmbeddingExperienceConfiguration AWS API Documentation
    #
    class RegisteredUserEmbeddingExperienceConfiguration < Struct.new(
      :dashboard,
      :quick_sight_console,
      :q_search_bar,
      :dashboard_visual)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Q search bar embedding experience.
    #
    # @!attribute [rw] initial_topic_id
    #   The ID of the Q topic that you want to make the starting topic in
    #   the Q search bar. You can find a topic ID by navigating to the
    #   Topics pane in the Amazon QuickSight application and opening a
    #   topic. The ID is in the URL for the topic that you open.
    #
    #   If you don't specify an initial topic, a list of all shared topics
    #   is shown in the Q bar for your readers. When you select an initial
    #   topic, you can specify whether or not readers are allowed to select
    #   other topics from the available ones in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisteredUserQSearchBarEmbeddingConfiguration AWS API Documentation
    #
    class RegisteredUserQSearchBarEmbeddingConfiguration < Struct.new(
      :initial_topic_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Amazon QuickSight console that you want to
    # embed.
    #
    # @!attribute [rw] initial_path
    #   The initial URL path for the Amazon QuickSight console.
    #   `InitialPath` is required.
    #
    #   The entry point URL is constrained to the following paths:
    #
    #   * `/start`
    #
    #   * `/start/analyses`
    #
    #   * `/start/dashboards`
    #
    #   * `/start/favorites`
    #
    #   * `/dashboards/DashboardId`. *DashboardId* is the actual ID key from
    #     the Amazon QuickSight console URL of the dashboard.
    #
    #   * `/analyses/AnalysisId`. *AnalysisId* is the actual ID key from the
    #     Amazon QuickSight console URL of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] feature_configurations
    #   The embedding configuration of an embedded Amazon QuickSight
    #   console.
    #   @return [Types::RegisteredUserConsoleFeatureConfigurations]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RegisteredUserQuickSightConsoleEmbeddingConfiguration AWS API Documentation
    #
    class RegisteredUserQuickSightConsoleEmbeddingConfiguration < Struct.new(
      :initial_path,
      :feature_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A physical table type for relational data sources.
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) for the data source.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog associated with a table.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema name. This name applies to certain relational database
    #   engines.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the relational table.
    #   @return [String]
    #
    # @!attribute [rw] input_columns
    #   The column schema of the table.
    #   @return [Array<Types::InputColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RelationalTable AWS API Documentation
    #
    class RelationalTable < Struct.new(
      :data_source_arn,
      :catalog,
      :schema,
      :name,
      :input_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options of a control.
    #
    # @!attribute [rw] title_options
    #   The options to configure the title visibility, name, and font size.
    #   @return [Types::LabelOptions]
    #
    # @!attribute [rw] date_time_format
    #   Customize how dates are formatted in controls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RelativeDateTimeControlDisplayOptions AWS API Documentation
    #
    class RelativeDateTimeControlDisplayOptions < Struct.new(
      :title_options,
      :date_time_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `RelativeDatesFilter` filters relative dates values.
    #
    # @!attribute [rw] filter_id
    #   An identifier that uniquely identifies a filter within a dashboard,
    #   analysis, or template.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] anchor_date_configuration
    #   The date configuration of the filter.
    #   @return [Types::AnchorDateConfiguration]
    #
    # @!attribute [rw] minimum_granularity
    #   The minimum granularity (period granularity) of the relative dates
    #   filter.
    #   @return [String]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] relative_date_type
    #   The range date type of the filter. Choose one of the options below:
    #
    #   * `PREVIOUS`
    #
    #   * `THIS`
    #
    #   * `LAST`
    #
    #   * `NOW`
    #
    #   * `NEXT`
    #   @return [String]
    #
    # @!attribute [rw] relative_date_value
    #   The date value of the filter.
    #   @return [Integer]
    #
    # @!attribute [rw] parameter_name
    #   The parameter whose value should be used for the filter value.
    #   @return [String]
    #
    # @!attribute [rw] null_option
    #   This option determines how null values should be treated when
    #   filtering data.
    #
    #   * `ALL_VALUES`: Include null values in filtered results.
    #
    #   * `NULLS_ONLY`: Only include null values in filtered results.
    #
    #   * `NON_NULLS_ONLY`: Exclude null values from filtered results.
    #   @return [String]
    #
    # @!attribute [rw] exclude_period_configuration
    #   The configuration for the exclude period of the filter.
    #   @return [Types::ExcludePeriodConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RelativeDatesFilter AWS API Documentation
    #
    class RelativeDatesFilter < Struct.new(
      :filter_id,
      :column,
      :anchor_date_configuration,
      :minimum_granularity,
      :time_granularity,
      :relative_date_type,
      :relative_date_value,
      :parameter_name,
      :null_option,
      :exclude_period_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that renames a column.
    #
    # @!attribute [rw] column_name
    #   The name of the column to be renamed.
    #   @return [String]
    #
    # @!attribute [rw] new_column_name
    #   The new name for the column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RenameColumnOperation AWS API Documentation
    #
    class RenameColumnOperation < Struct.new(
      :column_name,
      :new_column_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceExistsException AWS API Documentation
    #
    class ResourceExistsException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Permission for the resource.
    #
    # @!attribute [rw] principal
    #   The Amazon Resource Name (ARN) of the principal. This can be one of
    #   the following:
    #
    #   * The ARN of an Amazon QuickSight user or group associated with a
    #     data source or dataset. (This is common.)
    #
    #   * The ARN of an Amazon QuickSight user, group, or namespace
    #     associated with an analysis, dashboard, template, or theme. (This
    #     is common.)
    #
    #   * The ARN of an Amazon Web Services account root: This is an IAM ARN
    #     rather than a QuickSight ARN. Use this option only to share
    #     resources (templates) across Amazon Web Services accounts. (This
    #     is less common.)
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The IAM action to grant or revoke permissions on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourcePermission AWS API Documentation
    #
    class ResourcePermission < Struct.new(
      :principal,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # This resource is currently unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type for this request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message,
      :resource_type,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   analysis.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're restoring.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RestoreAnalysisRequest AWS API Documentation
    #
    class RestoreAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the analysis that you're
    #   restoring.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you're restoring.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RestoreAnalysisResponse AWS API Documentation
    #
    class RestoreAnalysisResponse < Struct.new(
      :status,
      :arn,
      :analysis_id,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rolling date configuration of a date time filter.
    #
    # @!attribute [rw] data_set_identifier
    #   The data set that is used in the rolling date configuration.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The expression of the rolling date configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RollingDateConfiguration AWS API Documentation
    #
    class RollingDateConfiguration < Struct.new(
      :data_set_identifier,
      :expression)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # Determines the row alternate color options.
    #
    # @!attribute [rw] status
    #   Determines the widget status.
    #   @return [String]
    #
    # @!attribute [rw] row_alternate_colors
    #   Determines the list of row alternate colors.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RowAlternateColorOptions AWS API Documentation
    #
    class RowAlternateColorOptions < Struct.new(
      :status,
      :row_alternate_colors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about rows for a data set SPICE ingestion.
    #
    # @!attribute [rw] rows_ingested
    #   The number of rows that were ingested.
    #   @return [Integer]
    #
    # @!attribute [rw] rows_dropped
    #   The number of rows that were not ingested.
    #   @return [Integer]
    #
    # @!attribute [rw] total_rows_in_dataset
    #   The total number of rows in the dataset.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RowInfo AWS API Documentation
    #
    class RowInfo < Struct.new(
      :rows_ingested,
      :rows_dropped,
      :total_rows_in_dataset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a dataset that contains permissions for row-level
    # security (RLS). The permissions dataset maps fields to users or
    # groups. For more information, see [Using Row-Level Security (RLS) to
    # Restrict Access to a Dataset][1] in the *Amazon QuickSight User
    # Guide*.
    #
    # The option to deny permissions by setting `PermissionPolicy` to
    # `DENY_ACCESS` is not supported for new RLS datasets.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/restrict-access-to-a-data-set-using-row-level-security.html
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the dataset that contains permissions
    #   for RLS.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset that contains
    #   permissions for RLS.
    #   @return [String]
    #
    # @!attribute [rw] permission_policy
    #   The type of permissions to use when interpreting the permissions for
    #   RLS. `DENY_ACCESS` is included for backward compatibility only.
    #   @return [String]
    #
    # @!attribute [rw] format_version
    #   The user or group rules associated with the dataset that contains
    #   permissions for RLS.
    #
    #   By default, `FormatVersion` is `VERSION_1`. When `FormatVersion` is
    #   `VERSION_1`, `UserName` and `GroupName` are required. When
    #   `FormatVersion` is `VERSION_2`, `UserARN` and `GroupARN` are
    #   required, and `Namespace` must not exist.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the row-level security permission dataset. If enabled,
    #   the status is `ENABLED`. If disabled, the status is `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RowLevelPermissionDataSet AWS API Documentation
    #
    class RowLevelPermissionDataSet < Struct.new(
      :namespace,
      :arn,
      :permission_policy,
      :format_version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of tags on a dataset to set row-level security.
    #
    # @!attribute [rw] status
    #   The status of row-level security tags. If enabled, the status is
    #   `ENABLED`. If disabled, the status is `DISABLED`.
    #   @return [String]
    #
    # @!attribute [rw] tag_rules
    #   A set of rules associated with row-level security, such as the tag
    #   names and columns that they are assigned to.
    #   @return [Array<Types::RowLevelPermissionTagRule>]
    #
    # @!attribute [rw] tag_rule_configurations
    #   A list of tag configuration rules to apply to a dataset. All tag
    #   configurations have the OR condition. Tags within each tile will be
    #   joined (AND). At least one rule in this structure must have all tag
    #   values assigned to it to apply Row-level security (RLS) to the
    #   dataset.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RowLevelPermissionTagConfiguration AWS API Documentation
    #
    class RowLevelPermissionTagConfiguration < Struct.new(
      :status,
      :tag_rules,
      :tag_rule_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of rules associated with a tag.
    #
    # @!attribute [rw] tag_key
    #   The unique key for a tag.
    #   @return [String]
    #
    # @!attribute [rw] column_name
    #   The column name that a tag key is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] tag_multi_value_delimiter
    #   A string that you want to use to delimit the values when you pass
    #   the values at run time. For example, you can delimit the values with
    #   a comma.
    #   @return [String]
    #
    # @!attribute [rw] match_all_value
    #   A string that you want to use to filter by all the values in a
    #   column in the dataset and don’t want to list the values one by one.
    #   For example, you can use an asterisk as your match all value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/RowLevelPermissionTagRule AWS API Documentation
    #
    class RowLevelPermissionTagRule < Struct.new(
      :tag_key,
      :column_name,
      :tag_multi_value_delimiter,
      :match_all_value)
      SENSITIVE = [:match_all_value]
      include Aws::Structure
    end

    # The parameters for S3.
    #
    # @!attribute [rw] manifest_file_location
    #   Location of the Amazon S3 manifest file. This is NULL if the
    #   manifest file was uploaded into Amazon QuickSight.
    #   @return [Types::ManifestFileLocation]
    #
    # @!attribute [rw] role_arn
    #   Use the `RoleArn` structure to override an account-wide role for a
    #   specific S3 data source. For example, say an account administrator
    #   has turned off all S3 access with an account-wide role. The
    #   administrator can then use `RoleArn` to bypass the account-wide role
    #   and allow S3 access for the single S3 data source that is specified
    #   in the structure, even if the account-wide role forbidding S3 access
    #   is still active.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/S3Parameters AWS API Documentation
    #
    class S3Parameters < Struct.new(
      :manifest_file_location,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A physical table type for an S3 data source.
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) for the data source.
    #   @return [String]
    #
    # @!attribute [rw] upload_settings
    #   Information about the format for the S3 source file or files.
    #   @return [Types::UploadSettings]
    #
    # @!attribute [rw] input_columns
    #   A physical table type for an S3 data source.
    #
    #   <note markdown="1"> For files that aren't JSON, only `STRING` data types are supported
    #   in input columns.
    #
    #    </note>
    #   @return [Array<Types::InputColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/S3Source AWS API Documentation
    #
    class S3Source < Struct.new(
      :data_source_arn,
      :upload_settings,
      :input_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the same-sheet target visuals that you want to be
    # filtered.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] target_visuals
    #   A list of the target visual IDs that are located in the same sheet
    #   of the analysis.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_visual_options
    #   The options that choose the target visual in the same sheet.
    #
    #   Valid values are defined as follows:
    #
    #   * `ALL_VISUALS`: Applies the filter operation to all visuals in the
    #     same sheet.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SameSheetTargetVisualConfiguration AWS API Documentation
    #
    class SameSheetTargetVisualConfiguration < Struct.new(
      :target_visuals,
      :target_visual_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a sankey diagram.
    #
    # @!attribute [rw] source
    #   The source field wells of a sankey diagram.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] destination
    #   The destination field wells of a sankey diagram.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] weight
    #   The weight field wells of a sankey diagram.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SankeyDiagramAggregatedFieldWells AWS API Documentation
    #
    class SankeyDiagramAggregatedFieldWells < Struct.new(
      :source,
      :destination,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a sankey diagram.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a sankey diagram.
    #   @return [Types::SankeyDiagramFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a sankey diagram.
    #   @return [Types::SankeyDiagramSortConfiguration]
    #
    # @!attribute [rw] data_labels
    #   The data label configuration of a sankey diagram.
    #   @return [Types::DataLabelOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SankeyDiagramChartConfiguration AWS API Documentation
    #
    class SankeyDiagramChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :data_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a sankey diagram.
    #
    # @!attribute [rw] sankey_diagram_aggregated_field_wells
    #   The field well configuration of a sankey diagram.
    #   @return [Types::SankeyDiagramAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SankeyDiagramFieldWells AWS API Documentation
    #
    class SankeyDiagramFieldWells < Struct.new(
      :sankey_diagram_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a sankey diagram.
    #
    # @!attribute [rw] weight_sort
    #   The sort configuration of the weight fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] source_items_limit
    #   The limit on the number of source nodes that are displayed in a
    #   sankey diagram.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] destination_items_limit
    #   The limit on the number of destination nodes that are displayed in a
    #   sankey diagram.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SankeyDiagramSortConfiguration AWS API Documentation
    #
    class SankeyDiagramSortConfiguration < Struct.new(
      :weight_sort,
      :source_items_limit,
      :destination_items_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A sankey diagram.
    #
    # For more information, see [Using Sankey diagrams][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/sankey-diagram.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration of a sankey diagram.
    #   @return [Types::SankeyDiagramChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SankeyDiagramVisual AWS API Documentation
    #
    class SankeyDiagramVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field well of a scatter plot.
    #
    # @!attribute [rw] x_axis
    #   The x-axis field well of a scatter plot.
    #
    #   The x-axis is aggregated by category.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] y_axis
    #   The y-axis field well of a scatter plot.
    #
    #   The y-axis is aggregated by category.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] category
    #   The category field well of a scatter plot.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] size
    #   The size field well of a scatter plot.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] label
    #   The label field well of a scatter plot.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ScatterPlotCategoricallyAggregatedFieldWells AWS API Documentation
    #
    class ScatterPlotCategoricallyAggregatedFieldWells < Struct.new(
      :x_axis,
      :y_axis,
      :category,
      :size,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a scatter plot.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::ScatterPlotFieldWells]
    #
    # @!attribute [rw] x_axis_label_options
    #   The label options (label text, label visibility, and sort icon
    #   visibility) of the scatter plot's x-axis.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] x_axis_display_options
    #   The label display options (grid line, range, scale, and axis step)
    #   of the scatter plot's x-axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] y_axis_label_options
    #   The label options (label text, label visibility, and sort icon
    #   visibility) of the scatter plot's y-axis.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] y_axis_display_options
    #   The label display options (grid line, range, scale, and axis step)
    #   of the scatter plot's y-axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] data_labels
    #   The options that determine if visual data labels are displayed.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The legend display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @!attribute [rw] visual_palette
    #   The palette (chart color) display setup of the visual.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ScatterPlotConfiguration AWS API Documentation
    #
    class ScatterPlotConfiguration < Struct.new(
      :field_wells,
      :x_axis_label_options,
      :x_axis_display_options,
      :y_axis_label_options,
      :y_axis_display_options,
      :legend,
      :data_labels,
      :tooltip,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a scatter plot.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] scatter_plot_categorically_aggregated_field_wells
    #   The aggregated field wells of a scatter plot. The x and y-axes of
    #   scatter plots with aggregated field wells are aggregated by
    #   category, label, or both.
    #   @return [Types::ScatterPlotCategoricallyAggregatedFieldWells]
    #
    # @!attribute [rw] scatter_plot_unaggregated_field_wells
    #   The unaggregated field wells of a scatter plot. The x and y-axes of
    #   these scatter plots are unaggregated.
    #   @return [Types::ScatterPlotUnaggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ScatterPlotFieldWells AWS API Documentation
    #
    class ScatterPlotFieldWells < Struct.new(
      :scatter_plot_categorically_aggregated_field_wells,
      :scatter_plot_unaggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unaggregated field wells of a scatter plot.
    #
    # @!attribute [rw] x_axis
    #   The x-axis field well of a scatter plot.
    #
    #   The x-axis is a dimension field and cannot be aggregated.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] y_axis
    #   The y-axis field well of a scatter plot.
    #
    #   The y-axis is a dimension field and cannot be aggregated.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] size
    #   The size field well of a scatter plot.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] category
    #   The category field well of a scatter plot.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] label
    #   The label field well of a scatter plot.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ScatterPlotUnaggregatedFieldWells AWS API Documentation
    #
    class ScatterPlotUnaggregatedFieldWells < Struct.new(
      :x_axis,
      :y_axis,
      :size,
      :category,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # A scatter plot.
    #
    # For more information, see [Using scatter plots][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/scatter-plot.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::ScatterPlotConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ScatterPlotVisual AWS API Documentation
    #
    class ScatterPlotVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The refresh on entity for weekly or monthly schedules.
    #
    # @!attribute [rw] day_of_week
    #   The day of the week that you want to schedule a refresh on.
    #   @return [String]
    #
    # @!attribute [rw] day_of_month
    #   The day of the month that you want to schedule refresh on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ScheduleRefreshOnEntity AWS API Documentation
    #
    class ScheduleRefreshOnEntity < Struct.new(
      :day_of_week,
      :day_of_month)
      SENSITIVE = []
      include Aws::Structure
    end

    # The visual display options for a data zoom scroll bar.
    #
    # @!attribute [rw] visibility
    #   The visibility of the data zoom scroll bar.
    #   @return [String]
    #
    # @!attribute [rw] visible_range
    #   The visibility range for the data zoom scroll bar.
    #   @return [Types::VisibleRangeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ScrollBarOptions AWS API Documentation
    #
    class ScrollBarOptions < Struct.new(
      :visibility,
      :visible_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the analyses
    #   that you're searching for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The structure for the search filters that you want to apply to your
    #   search.
    #   @return [Array<Types::AnalysisSearchFilter>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchAnalysesRequest AWS API Documentation
    #
    class SearchAnalysesRequest < Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_summary_list
    #   Metadata describing the analyses that you searched for.
    #   @return [Array<Types::AnalysisSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchAnalysesResponse AWS API Documentation
    #
    class SearchAnalysesResponse < Struct.new(
      :analysis_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the user
    #   whose dashboards you're searching for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to the search. Currently, you can search only
    #   by user name, for example, `"Filters": [ \{ "Name":
    #   "QUICKSIGHT_USER", "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:user/default/UserName1" \} ]`
    #   @return [Array<Types::DashboardSearchFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDashboardsRequest AWS API Documentation
    #
    class SearchDashboardsRequest < Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_summary_list
    #   The list of dashboards owned by the user specified in `Filters` in
    #   your request.
    #   @return [Array<Types::DashboardSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDashboardsResponse AWS API Documentation
    #
    class SearchDashboardsResponse < Struct.new(
      :dashboard_summary_list,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to the search.
    #   @return [Array<Types::DataSetSearchFilter>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSetsRequest AWS API Documentation
    #
    class SearchDataSetsRequest < Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_summaries
    #   A `DataSetSummaries` object that returns a summary of a dataset.
    #   @return [Array<Types::DataSetSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSetsResponse AWS API Documentation
    #
    class SearchDataSetsResponse < Struct.new(
      :data_set_summaries,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to the search.
    #   @return [Array<Types::DataSourceSearchFilter>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSourcesRequest AWS API Documentation
    #
    class SearchDataSourcesRequest < Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_summaries
    #   A `DataSourceSummaries` object that returns a summary of a data
    #   source.
    #   @return [Array<Types::DataSourceSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchDataSourcesResponse AWS API Documentation
    #
    class SearchDataSourcesResponse < Struct.new(
      :data_source_summaries,
      :next_token,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The filters to apply to the search. Currently, you can search only
    #   by the parent folder ARN. For example, `"Filters": [ \{ "Name":
    #   "PARENT_FOLDER_ARN", "Operator": "StringEquals", "Value":
    #   "arn:aws:quicksight:us-east-1:1:folder/folderId" \} ]`.
    #   @return [Array<Types::FolderSearchFilter>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchFoldersRequest AWS API Documentation
    #
    class SearchFoldersRequest < Struct.new(
      :aws_account_id,
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] folder_summary_list
    #   A structure that contains all of the folders in the Amazon Web
    #   Services account. This structure provides basic information about
    #   the folders.
    #   @return [Array<Types::FolderSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchFoldersResponse AWS API Documentation
    #
    class SearchFoldersResponse < Struct.new(
      :status,
      :folder_summary_list,
      :next_token,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return from this request.
    #   @return [Integer]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want to search.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The structure for the search filters that you want to apply to your
    #   search.
    #   @return [Array<Types::GroupSearchFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchGroupsRequest AWS API Documentation
    #
    class SearchGroupsRequest < Struct.new(
      :aws_account_id,
      :next_token,
      :max_results,
      :namespace,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_list
    #   A list of groups in a specified namespace that match the filters you
    #   set in your `SearchGroups` request.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in a subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SearchGroupsResponse AWS API Documentation
    #
    class SearchGroupsResponse < Struct.new(
      :group_list,
      :next_token,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of the secondary value of
    # a KPI visual.
    #
    # @!attribute [rw] visibility
    #   Determines the visibility of the secondary value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SecondaryValueOptions AWS API Documentation
    #
    class SecondaryValueOptions < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a page break after a section.
    #
    # @!attribute [rw] status
    #   The option that enables or disables a page break at the end of a
    #   section.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SectionAfterPageBreak AWS API Documentation
    #
    class SectionAfterPageBreak < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for the canvas of a section-based layout.
    #
    # @!attribute [rw] paper_canvas_size_options
    #   The options for a paper canvas of a section-based layout.
    #   @return [Types::SectionBasedLayoutPaperCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SectionBasedLayoutCanvasSizeOptions AWS API Documentation
    #
    class SectionBasedLayoutCanvasSizeOptions < Struct.new(
      :paper_canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a section-based layout.
    #
    # @!attribute [rw] header_sections
    #   A list of header section configurations.
    #   @return [Array<Types::HeaderFooterSectionConfiguration>]
    #
    # @!attribute [rw] body_sections
    #   A list of body section configurations.
    #   @return [Array<Types::BodySectionConfiguration>]
    #
    # @!attribute [rw] footer_sections
    #   A list of footer section configurations.
    #   @return [Array<Types::HeaderFooterSectionConfiguration>]
    #
    # @!attribute [rw] canvas_size_options
    #   The options for the canvas of a section-based layout.
    #   @return [Types::SectionBasedLayoutCanvasSizeOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SectionBasedLayoutConfiguration AWS API Documentation
    #
    class SectionBasedLayoutConfiguration < Struct.new(
      :header_sections,
      :body_sections,
      :footer_sections,
      :canvas_size_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for a paper canvas of a section-based layout.
    #
    # @!attribute [rw] paper_size
    #   The paper size that is used to define canvas dimensions.
    #   @return [String]
    #
    # @!attribute [rw] paper_orientation
    #   The paper orientation that is used to define canvas dimensions.
    #   Choose one of the following options:
    #
    #   * PORTRAIT
    #
    #   * LANDSCAPE
    #   @return [String]
    #
    # @!attribute [rw] paper_margin
    #   Defines the spacing between the canvas content and the top, bottom,
    #   left, and right edges.
    #   @return [Types::Spacing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SectionBasedLayoutPaperCanvasSizeOptions AWS API Documentation
    #
    class SectionBasedLayoutPaperCanvasSizeOptions < Struct.new(
      :paper_size,
      :paper_orientation,
      :paper_margin)
      SENSITIVE = []
      include Aws::Structure
    end

    # The layout configuration of a section.
    #
    # @!attribute [rw] free_form_layout
    #   The free-form layout configuration of a section.
    #   @return [Types::FreeFormSectionLayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SectionLayoutConfiguration AWS API Documentation
    #
    class SectionLayoutConfiguration < Struct.new(
      :free_form_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a page break for a section.
    #
    # @!attribute [rw] after
    #   The configuration of a page break after a section.
    #   @return [Types::SectionAfterPageBreak]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SectionPageBreakConfiguration AWS API Documentation
    #
    class SectionPageBreakConfiguration < Struct.new(
      :after)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that style a section.
    #
    # @!attribute [rw] height
    #   The height of a section.
    #
    #   Heights can only be defined for header and footer sections. The
    #   default height margin is 0.5 inches.
    #   @return [String]
    #
    # @!attribute [rw] padding
    #   The spacing between section content and its top, bottom, left, and
    #   right edges.
    #
    #   There is no padding by default.
    #   @return [Types::Spacing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SectionStyle AWS API Documentation
    #
    class SectionStyle < Struct.new(
      :height,
      :padding)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for applying a filter to specific sheets or visuals.
    # You can apply this filter to multiple visuals that are on one sheet or
    # to all visuals on a sheet.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] sheet_visual_scoping_configurations
    #   The sheet ID and visual IDs of the sheet and visuals that the filter
    #   is applied to.
    #   @return [Array<Types::SheetVisualScopingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SelectedSheetsFilterScopeConfiguration AWS API Documentation
    #
    class SelectedSheetsFilterScopeConfiguration < Struct.new(
      :sheet_visual_scoping_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a semantic entity type.
    #
    # @!attribute [rw] type_name
    #   The semantic entity type name.
    #   @return [String]
    #
    # @!attribute [rw] sub_type_name
    #   The semantic entity sub type name.
    #   @return [String]
    #
    # @!attribute [rw] type_parameters
    #   The semantic entity type parameters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SemanticEntityType AWS API Documentation
    #
    class SemanticEntityType < Struct.new(
      :type_name,
      :sub_type_name,
      :type_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a semantic type.
    #
    # @!attribute [rw] type_name
    #   The semantic type name.
    #   @return [String]
    #
    # @!attribute [rw] sub_type_name
    #   The semantic type sub type name.
    #   @return [String]
    #
    # @!attribute [rw] type_parameters
    #   The semantic type parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] truthy_cell_value
    #   The semantic type truthy cell value.
    #   @return [String]
    #
    # @!attribute [rw] truthy_cell_value_synonyms
    #   The other names or aliases for the true cell value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] falsey_cell_value
    #   The semantic type falsey cell value.
    #   @return [String]
    #
    # @!attribute [rw] falsey_cell_value_synonyms
    #   The other names or aliases for the false cell value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SemanticType AWS API Documentation
    #
    class SemanticType < Struct.new(
      :type_name,
      :sub_type_name,
      :type_parameters,
      :truthy_cell_value,
      :truthy_cell_value_synonyms,
      :falsey_cell_value,
      :falsey_cell_value_synonyms)
      SENSITIVE = [:truthy_cell_value, :falsey_cell_value]
      include Aws::Structure
    end

    # The series item configuration of a line chart.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] field_series_item
    #   The field series item configuration of a line chart.
    #   @return [Types::FieldSeriesItem]
    #
    # @!attribute [rw] data_field_series_item
    #   The data field series item configuration of a line chart.
    #   @return [Types::DataFieldSeriesItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SeriesItem AWS API Documentation
    #
    class SeriesItem < Struct.new(
      :field_series_item,
      :data_field_series_item)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for ServiceNow.
    #
    # @!attribute [rw] site_base_url
    #   URL of the base site.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ServiceNowParameters AWS API Documentation
    #
    class ServiceNowParameters < Struct.new(
      :site_base_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of minutes specified for the lifetime of a session isn't
    # valid. The session lifetime must be 15-600 minutes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SessionLifetimeInMinutesInvalidException AWS API Documentation
    #
    class SessionLifetimeInMinutesInvalidException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key-value pair used for the row-level security tags feature.
    #
    # @!attribute [rw] key
    #   The key for the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that you want to assign the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SessionTag AWS API Documentation
    #
    class SessionTag < Struct.new(
      :key,
      :value)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # The configuration of adding parameters in action.
    #
    # @!attribute [rw] destination_parameter_name
    #   The destination parameter name of the
    #   `SetParameterValueConfiguration`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The configuration of destination parameter values.
    #
    #   This is a union type structure. For this structure to be valid, only
    #   one of the attributes can be defined.
    #   @return [Types::DestinationParameterValueConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SetParameterValueConfiguration AWS API Documentation
    #
    class SetParameterValueConfiguration < Struct.new(
      :destination_parameter_name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The shape conditional formatting of a filled map visual.
    #
    # @!attribute [rw] background_color
    #   The conditional formatting for the shape background color of a
    #   filled map visual.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ShapeConditionalFormat AWS API Documentation
    #
    class ShapeConditionalFormat < Struct.new(
      :background_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # A *sheet*, which is an object that contains a set of visuals that are
    # viewed together on one page in Amazon QuickSight. Every analysis and
    # dashboard contains at least one sheet. Each sheet contains at least
    # one visualization widget, for example a chart, pivot table, or
    # narrative insight. Sheets can be associated with other components,
    # such as controls, filters, and so on.
    #
    # @!attribute [rw] sheet_id
    #   The unique identifier associated with a sheet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a sheet. This name is displayed on the sheet's tab in
    #   the Amazon QuickSight console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Sheet AWS API Documentation
    #
    class Sheet < Struct.new(
      :sheet_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A grid layout to define the placement of sheet control.
    #
    # @!attribute [rw] configuration
    #   The configuration that determines the elements and canvas size
    #   options of sheet control.
    #   @return [Types::SheetControlLayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetControlLayout AWS API Documentation
    #
    class SheetControlLayout < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that determines the elements and canvas size options
    # of sheet control.
    #
    # @!attribute [rw] grid_layout
    #   The configuration that determines the elements and canvas size
    #   options of sheet control.
    #   @return [Types::GridLayoutConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetControlLayoutConfiguration AWS API Documentation
    #
    class SheetControlLayoutConfiguration < Struct.new(
      :grid_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sheet controls option.
    #
    # @!attribute [rw] visibility_state
    #   Visibility state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetControlsOption AWS API Documentation
    #
    class SheetControlsOption < Struct.new(
      :visibility_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A sheet is an object that contains a set of visuals that are viewed
    # together on one page in a paginated report. Every analysis and
    # dashboard must contain at least one sheet.
    #
    # @!attribute [rw] sheet_id
    #   The unique identifier of a sheet.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the sheet.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the sheet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the sheet. This name is displayed on the sheet's tab in
    #   the Amazon QuickSight console.
    #   @return [String]
    #
    # @!attribute [rw] parameter_controls
    #   The list of parameter controls that are on a sheet.
    #
    #   For more information, see [Using a Control with a Parameter in
    #   Amazon QuickSight][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/parameters-controls.html
    #   @return [Array<Types::ParameterControl>]
    #
    # @!attribute [rw] filter_controls
    #   The list of filter controls that are on a sheet.
    #
    #   For more information, see [Adding filter controls to analysis
    #   sheets][1] in the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/filter-controls.html
    #   @return [Array<Types::FilterControl>]
    #
    # @!attribute [rw] visuals
    #   A list of the visuals that are on a sheet. Visual placement is
    #   determined by the layout of the sheet.
    #   @return [Array<Types::Visual>]
    #
    # @!attribute [rw] text_boxes
    #   The text boxes that are on a sheet.
    #   @return [Array<Types::SheetTextBox>]
    #
    # @!attribute [rw] layouts
    #   Layouts define how the components of a sheet are arranged.
    #
    #   For more information, see [Types of layout][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/types-of-layout.html
    #   @return [Array<Types::Layout>]
    #
    # @!attribute [rw] sheet_control_layouts
    #   The control layouts of the sheet.
    #   @return [Array<Types::SheetControlLayout>]
    #
    # @!attribute [rw] content_type
    #   The layout content type of the sheet. Choose one of the following
    #   options:
    #
    #   * `PAGINATED`: Creates a sheet for a paginated report.
    #
    #   * `INTERACTIVE`: Creates a sheet for an interactive dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetDefinition AWS API Documentation
    #
    class SheetDefinition < Struct.new(
      :sheet_id,
      :title,
      :description,
      :name,
      :parameter_controls,
      :filter_controls,
      :visuals,
      :text_boxes,
      :layouts,
      :sheet_control_layouts,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The override configuration of the rendering rules of a sheet.
    #
    # @!attribute [rw] visibility
    #   Determines whether or not the overrides are visible. Choose one of
    #   the following options:
    #
    #   * `VISIBLE`
    #
    #   * `HIDDEN`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetElementConfigurationOverrides AWS API Documentation
    #
    class SheetElementConfigurationOverrides < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rendering rules of a sheet that uses a free-form layout.
    #
    # @!attribute [rw] expression
    #   The expression of the rendering rules of a sheet.
    #   @return [String]
    #
    # @!attribute [rw] configuration_overrides
    #   The override configuration of the rendering rules of a sheet.
    #   @return [Types::SheetElementConfigurationOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetElementRenderingRule AWS API Documentation
    #
    class SheetElementRenderingRule < Struct.new(
      :expression,
      :configuration_overrides)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # The sheet layout maximization options of a dashbaord.
    #
    # @!attribute [rw] availability_status
    #   The status of the sheet layout maximization options of a dashbaord.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetLayoutElementMaximizationOption AWS API Documentation
    #
    class SheetLayoutElementMaximizationOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme display options for sheets.
    #
    # @!attribute [rw] tile
    #   The display options for tiles.
    #   @return [Types::TileStyle]
    #
    # @!attribute [rw] tile_layout
    #   The layout options for tiles.
    #   @return [Types::TileLayoutStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetStyle AWS API Documentation
    #
    class SheetStyle < Struct.new(
      :tile,
      :tile_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # A text box.
    #
    # @!attribute [rw] sheet_text_box_id
    #   The unique identifier for a text box. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have text boxes that share
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content that is displayed in the text box.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetTextBox AWS API Documentation
    #
    class SheetTextBox < Struct.new(
      :sheet_text_box_id,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter that is applied to the options.
    #
    # @!attribute [rw] sheet_id
    #   The selected sheet that the filter is applied to.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the applied entities. Choose one of the following
    #   options:
    #
    #   * `ALL_VISUALS`
    #
    #   * `SELECTED_VISUALS`
    #   @return [String]
    #
    # @!attribute [rw] visual_ids
    #   The selected visuals that the filter is applied to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SheetVisualScopingConfiguration AWS API Documentation
    #
    class SheetVisualScopingConfiguration < Struct.new(
      :sheet_id,
      :scope,
      :visual_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The text format for the title.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] plain_text
    #   Plain text format.
    #   @return [String]
    #
    # @!attribute [rw] rich_text
    #   Rich text. Examples of rich text include bold, underline, and
    #   italics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ShortFormatText AWS API Documentation
    #
    class ShortFormatText < Struct.new(
      :plain_text,
      :rich_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `SignupResponse` object that contains a summary of a newly created
    # account.
    #
    # @!attribute [rw] iam_user
    #   A Boolean that is `TRUE` if the Amazon QuickSight uses IAM as an
    #   authentication method.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_login_name
    #   The user login name for your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] account_name
    #   The name of your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] directory_type
    #   The type of Active Directory that is being used to authenticate the
    #   Amazon QuickSight account. Valid values are `SIMPLE_AD`,
    #   `AD_CONNECTOR`, and `MICROSOFT_AD`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SignupResponse AWS API Documentation
    #
    class SignupResponse < Struct.new(
      :iam_user,
      :user_login_name,
      :account_name,
      :directory_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The simple cluster marker of the cluster marker.
    #
    # @!attribute [rw] color
    #   The color of the simple cluster marker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SimpleClusterMarker AWS API Documentation
    #
    class SimpleClusterMarker < Struct.new(
      :color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options of a control.
    #
    # @!attribute [rw] title_options
    #   The options to configure the title visibility, name, and font size.
    #   @return [Types::LabelOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SliderControlDisplayOptions AWS API Documentation
    #
    class SliderControlDisplayOptions < Struct.new(
      :title_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that determine the layout and display options of a chart's
    # small multiples.
    #
    # @!attribute [rw] max_visible_rows
    #   Sets the maximum number of visible rows to display in the grid of
    #   small multiples panels.
    #
    #   The default value is `Auto`, which automatically adjusts the rows in
    #   the grid to fit the overall layout and size of the given chart.
    #   @return [Integer]
    #
    # @!attribute [rw] max_visible_columns
    #   Sets the maximum number of visible columns to display in the grid of
    #   small multiples panels.
    #
    #   The default is `Auto`, which automatically adjusts the columns in
    #   the grid to fit the overall layout and size of the given chart.
    #   @return [Integer]
    #
    # @!attribute [rw] panel_configuration
    #   Configures the display options for each small multiples panel.
    #   @return [Types::PanelConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SmallMultiplesOptions AWS API Documentation
    #
    class SmallMultiplesOptions < Struct.new(
      :max_visible_rows,
      :max_visible_columns,
      :panel_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Snowflake.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @!attribute [rw] warehouse
    #   Warehouse.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SnowflakeParameters AWS API Documentation
    #
    class SnowflakeParameters < Struct.new(
      :host,
      :database,
      :warehouse)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of spacing (often a margin or padding).
    #
    # @!attribute [rw] top
    #   Define the top spacing.
    #   @return [String]
    #
    # @!attribute [rw] bottom
    #   Define the bottom spacing.
    #   @return [String]
    #
    # @!attribute [rw] left
    #   Define the left spacing.
    #   @return [String]
    #
    # @!attribute [rw] right
    #   Define the right spacing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Spacing AWS API Documentation
    #
    class Spacing < Struct.new(
      :top,
      :bottom,
      :left,
      :right)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Spark.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SparkParameters AWS API Documentation
    #
    class SparkParameters < Struct.new(
      :host,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for SQL Server.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SqlServerParameters AWS API Documentation
    #
    class SqlServerParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # Secure Socket Layer (SSL) properties that apply when Amazon QuickSight
    # connects to your underlying data source.
    #
    # @!attribute [rw] disable_ssl
    #   A Boolean option to control whether SSL should be disabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SslProperties AWS API Documentation
    #
    class SslProperties < Struct.new(
      :disable_ssl)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state perssitence configuration of an embedded dashboard.
    #
    # @!attribute [rw] enabled
    #   Determines if a Amazon QuickSight dashboard's state persistence
    #   settings are turned on or off.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StatePersistenceConfigurations AWS API Documentation
    #
    class StatePersistenceConfigurations < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A string parameter for a dataset.
    #
    # @!attribute [rw] id
    #   An identifier for the string parameter that is created in the
    #   dataset.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the string parameter that is created in the dataset.
    #   @return [String]
    #
    # @!attribute [rw] value_type
    #   The value type of the dataset parameter. Valid values are `single
    #   value` or `multi value`.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   A list of default values for a given string dataset parameter type.
    #   This structure only accepts static values.
    #   @return [Types::StringDatasetParameterDefaultValues]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringDatasetParameter AWS API Documentation
    #
    class StringDatasetParameter < Struct.new(
      :id,
      :name,
      :value_type,
      :default_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of a string parameter.
    #
    # @!attribute [rw] static_values
    #   A list of static default values for a given string parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringDatasetParameterDefaultValues AWS API Documentation
    #
    class StringDatasetParameterDefaultValues < Struct.new(
      :static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default values of the `StringParameterDeclaration`.
    #
    # @!attribute [rw] dynamic_value
    #   The dynamic value of the `StringDefaultValues`. Different defaults
    #   displayed according to users, groups, and values mapping.
    #   @return [Types::DynamicDefaultValue]
    #
    # @!attribute [rw] static_values
    #   The static values of the `DecimalDefaultValues`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringDefaultValues AWS API Documentation
    #
    class StringDefaultValues < Struct.new(
      :dynamic_value,
      :static_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Formatting configuration for string fields.
    #
    # @!attribute [rw] null_value_format_configuration
    #   The options that determine the null value format configuration.
    #   @return [Types::NullValueFormatConfiguration]
    #
    # @!attribute [rw] numeric_format_configuration
    #   The formatting configuration for numeric strings.
    #   @return [Types::NumericFormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringFormatConfiguration AWS API Documentation
    #
    class StringFormatConfiguration < Struct.new(
      :null_value_format_configuration,
      :numeric_format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A string parameter.
    #
    # @!attribute [rw] name
    #   A display name for a string parameter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values of a string parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringParameter AWS API Documentation
    #
    class StringParameter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter declaration for the `String` data type.
    #
    # @!attribute [rw] parameter_value_type
    #   The value type determines whether the parameter is a single-value or
    #   multi-value parameter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the parameter that is being declared.
    #   @return [String]
    #
    # @!attribute [rw] default_values
    #   The default values of a parameter. If the parameter is a
    #   single-value parameter, a maximum of one default value can be
    #   provided.
    #   @return [Types::StringDefaultValues]
    #
    # @!attribute [rw] value_when_unset
    #   The configuration that defines the default value of a `String`
    #   parameter when a value has not been set.
    #   @return [Types::StringValueWhenUnsetConfiguration]
    #
    # @!attribute [rw] mapped_data_set_parameters
    #   A list of dataset parameters that are mapped to an analysis
    #   parameter.
    #   @return [Array<Types::MappedDataSetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringParameterDeclaration AWS API Documentation
    #
    class StringParameterDeclaration < Struct.new(
      :parameter_value_type,
      :name,
      :default_values,
      :value_when_unset,
      :mapped_data_set_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that defines the default value of a `String`
    # parameter when a value has not been set.
    #
    # @!attribute [rw] value_when_unset_option
    #   The built-in options for default values. The value can be one of the
    #   following:
    #
    #   * `RECOMMENDED`: The recommended value.
    #
    #   * `NULL`: The `NULL` value.
    #   @return [String]
    #
    # @!attribute [rw] custom_value
    #   A custom value that's used when the value of a parameter isn't
    #   set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/StringValueWhenUnsetConfiguration AWS API Documentation
    #
    class StringValueWhenUnsetConfiguration < Struct.new(
      :value_when_unset_option,
      :custom_value)
      SENSITIVE = [:custom_value]
      include Aws::Structure
    end

    # The subtotal options.
    #
    # @!attribute [rw] totals_visibility
    #   The visibility configuration for the subtotal cells.
    #   @return [String]
    #
    # @!attribute [rw] custom_label
    #   The custom label string for the subtotal cells.
    #   @return [String]
    #
    # @!attribute [rw] field_level
    #   The field level (all, custom, last) for the subtotal cells.
    #   @return [String]
    #
    # @!attribute [rw] field_level_options
    #   The optional configuration of subtotal cells.
    #   @return [Array<Types::PivotTableFieldSubtotalOptions>]
    #
    # @!attribute [rw] total_cell_style
    #   The cell styling options for the subtotal cells.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] value_cell_style
    #   The cell styling options for the subtotals of value cells.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] metric_header_cell_style
    #   The cell styling options for the subtotals of header cells.
    #   @return [Types::TableCellStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/SubtotalOptions AWS API Documentation
    #
    class SubtotalOptions < Struct.new(
      :totals_visibility,
      :custom_label,
      :field_level,
      :field_level_options,
      :total_cell_style,
      :value_cell_style,
      :metric_header_cell_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field well for the table.
    #
    # @!attribute [rw] group_by
    #   The group by field well for a pivot table. Values are grouped by
    #   group by fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The values field well for a pivot table. Values are aggregated based
    #   on group by fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableAggregatedFieldWells AWS API Documentation
    #
    class TableAggregatedFieldWells < Struct.new(
      :group_by,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The border options for a table border.
    #
    # @!attribute [rw] color
    #   The color of a table border.
    #   @return [String]
    #
    # @!attribute [rw] thickness
    #   The thickness of a table border.
    #   @return [Integer]
    #
    # @!attribute [rw] style
    #   The style (none, solid) of a table border.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableBorderOptions AWS API Documentation
    #
    class TableBorderOptions < Struct.new(
      :color,
      :thickness,
      :style)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cell conditional formatting option for a table.
    #
    # @!attribute [rw] field_id
    #   The field ID of the cell for conditional formatting.
    #   @return [String]
    #
    # @!attribute [rw] text_format
    #   The text format of the cell for conditional formatting.
    #   @return [Types::TextConditionalFormat]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableCellConditionalFormatting AWS API Documentation
    #
    class TableCellConditionalFormatting < Struct.new(
      :field_id,
      :text_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sizing options for the table image configuration.
    #
    # @!attribute [rw] table_cell_image_scaling_configuration
    #   The cell scaling configuration of the sizing options for the table
    #   image configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableCellImageSizingConfiguration AWS API Documentation
    #
    class TableCellImageSizingConfiguration < Struct.new(
      :table_cell_image_scaling_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The table cell style for a cell in pivot table or table visual.
    #
    # @!attribute [rw] visibility
    #   The visibility of the table cells.
    #   @return [String]
    #
    # @!attribute [rw] font_configuration
    #   The font configuration of the table cells.
    #   @return [Types::FontConfiguration]
    #
    # @!attribute [rw] text_wrap
    #   The text wrap (none, wrap) for the table cells.
    #   @return [String]
    #
    # @!attribute [rw] horizontal_text_alignment
    #   The horizontal text alignment (left, center, right, auto) for the
    #   table cells.
    #   @return [String]
    #
    # @!attribute [rw] vertical_text_alignment
    #   The vertical text alignment (top, middle, bottom) for the table
    #   cells.
    #   @return [String]
    #
    # @!attribute [rw] background_color
    #   The background color for the table cells.
    #   @return [String]
    #
    # @!attribute [rw] height
    #   The height color for the table cells.
    #   @return [Integer]
    #
    # @!attribute [rw] border
    #   The borders for the table cells.
    #   @return [Types::GlobalTableBorderOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableCellStyle AWS API Documentation
    #
    class TableCellStyle < Struct.new(
      :visibility,
      :font_configuration,
      :text_wrap,
      :horizontal_text_alignment,
      :vertical_text_alignment,
      :background_color,
      :height,
      :border)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting for a `PivotTableVisual`.
    #
    # @!attribute [rw] conditional_formatting_options
    #   Conditional formatting options for a `PivotTableVisual`.
    #   @return [Array<Types::TableConditionalFormattingOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableConditionalFormatting AWS API Documentation
    #
    class TableConditionalFormatting < Struct.new(
      :conditional_formatting_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conditional formatting options for a `PivotTableVisual`.
    #
    # @!attribute [rw] cell
    #   The cell conditional formatting option for a table.
    #   @return [Types::TableCellConditionalFormatting]
    #
    # @!attribute [rw] row
    #   The row conditional formatting option for a table.
    #   @return [Types::TableRowConditionalFormatting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableConditionalFormattingOption AWS API Documentation
    #
    class TableConditionalFormattingOption < Struct.new(
      :cell,
      :row)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a `TableVisual`.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::TableFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration for a `TableVisual`.
    #   @return [Types::TableSortConfiguration]
    #
    # @!attribute [rw] table_options
    #   The table options for a table visual.
    #   @return [Types::TableOptions]
    #
    # @!attribute [rw] total_options
    #   The total options for a table visual.
    #   @return [Types::TotalOptions]
    #
    # @!attribute [rw] field_options
    #   The field options for a table visual.
    #   @return [Types::TableFieldOptions]
    #
    # @!attribute [rw] paginated_report_options
    #   The paginated report options for a table visual.
    #   @return [Types::TablePaginatedReportOptions]
    #
    # @!attribute [rw] table_inline_visualizations
    #   A collection of inline visualizations to display within a chart.
    #   @return [Array<Types::TableInlineVisualization>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableConfiguration AWS API Documentation
    #
    class TableConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :table_options,
      :total_options,
      :field_options,
      :paginated_report_options,
      :table_inline_visualizations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom icon content for the table link content configuration.
    #
    # @!attribute [rw] icon
    #   The icon set type (link) of the custom icon content for table URL
    #   link content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldCustomIconContent AWS API Documentation
    #
    class TableFieldCustomIconContent < Struct.new(
      :icon)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom text content (value, font configuration) for the table link
    # content configuration.
    #
    # @!attribute [rw] value
    #   The string value of the custom text content for the table URL link
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] font_configuration
    #   The font configuration of the custom text content for the table URL
    #   link content.
    #   @return [Types::FontConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldCustomTextContent AWS API Documentation
    #
    class TableFieldCustomTextContent < Struct.new(
      :value,
      :font_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image configuration of a table field URL.
    #
    # @!attribute [rw] sizing_options
    #   The sizing options for the table image configuration.
    #   @return [Types::TableCellImageSizingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldImageConfiguration AWS API Documentation
    #
    class TableFieldImageConfiguration < Struct.new(
      :sizing_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The link configuration of a table field URL.
    #
    # @!attribute [rw] target
    #   The URL target (new tab, new window, same tab) for the table link
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The URL content (text, icon) for the table link configuration.
    #   @return [Types::TableFieldLinkContentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldLinkConfiguration AWS API Documentation
    #
    class TableFieldLinkConfiguration < Struct.new(
      :target,
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The URL content (text, icon) for the table link configuration.
    #
    # @!attribute [rw] custom_text_content
    #   The custom text content (value, font configuration) for the table
    #   link content configuration.
    #   @return [Types::TableFieldCustomTextContent]
    #
    # @!attribute [rw] custom_icon_content
    #   The custom icon content for the table link content configuration.
    #   @return [Types::TableFieldCustomIconContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldLinkContentConfiguration AWS API Documentation
    #
    class TableFieldLinkContentConfiguration < Struct.new(
      :custom_text_content,
      :custom_icon_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options for a table field.
    #
    # @!attribute [rw] field_id
    #   The field ID for a table field.
    #   @return [String]
    #
    # @!attribute [rw] width
    #   The width for a table field.
    #   @return [String]
    #
    # @!attribute [rw] custom_label
    #   The custom label for a table field.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of a table field.
    #   @return [String]
    #
    # @!attribute [rw] url_styling
    #   The URL configuration for a table field.
    #   @return [Types::TableFieldURLConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldOption AWS API Documentation
    #
    class TableFieldOption < Struct.new(
      :field_id,
      :width,
      :custom_label,
      :visibility,
      :url_styling)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field options for a table visual.
    #
    # @!attribute [rw] selected_field_options
    #   The selected field options for the table field options.
    #   @return [Array<Types::TableFieldOption>]
    #
    # @!attribute [rw] order
    #   The order of field IDs of the field options for a table visual.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldOptions AWS API Documentation
    #
    class TableFieldOptions < Struct.new(
      :selected_field_options,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The URL configuration for a table field.
    #
    # @!attribute [rw] link_configuration
    #   The link configuration of a table field URL.
    #   @return [Types::TableFieldLinkConfiguration]
    #
    # @!attribute [rw] image_configuration
    #   The image configuration of a table field URL.
    #   @return [Types::TableFieldImageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldURLConfiguration AWS API Documentation
    #
    class TableFieldURLConfiguration < Struct.new(
      :link_configuration,
      :image_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells for a table visual.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] table_aggregated_field_wells
    #   The aggregated field well for the table.
    #   @return [Types::TableAggregatedFieldWells]
    #
    # @!attribute [rw] table_unaggregated_field_wells
    #   The unaggregated field well for the table.
    #   @return [Types::TableUnaggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableFieldWells AWS API Documentation
    #
    class TableFieldWells < Struct.new(
      :table_aggregated_field_wells,
      :table_unaggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The inline visualization of a specific type to display within a chart.
    #
    # @!attribute [rw] data_bars
    #   The configuration of the inline visualization of the data bars
    #   within a chart.
    #   @return [Types::DataBarsOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableInlineVisualization AWS API Documentation
    #
    class TableInlineVisualization < Struct.new(
      :data_bars)
      SENSITIVE = []
      include Aws::Structure
    end

    # The table options for a table visual.
    #
    # @!attribute [rw] orientation
    #   The orientation (vertical, horizontal) for a table.
    #   @return [String]
    #
    # @!attribute [rw] header_style
    #   The table cell style of a table header.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] cell_style
    #   The table cell style of table cells.
    #   @return [Types::TableCellStyle]
    #
    # @!attribute [rw] row_alternate_color_options
    #   The row alternate color options (widget status, row alternate
    #   colors) for a table.
    #   @return [Types::RowAlternateColorOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableOptions AWS API Documentation
    #
    class TableOptions < Struct.new(
      :orientation,
      :header_style,
      :cell_style,
      :row_alternate_color_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The paginated report options for a table visual.
    #
    # @!attribute [rw] vertical_overflow_visibility
    #   The visibility of printing table overflow across pages.
    #   @return [String]
    #
    # @!attribute [rw] overflow_column_header_visibility
    #   The visibility of repeating header rows on each page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TablePaginatedReportOptions AWS API Documentation
    #
    class TablePaginatedReportOptions < Struct.new(
      :vertical_overflow_visibility,
      :overflow_column_header_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting of a table row.
    #
    # @!attribute [rw] background_color
    #   The conditional formatting color (solid, gradient) of the background
    #   for a table row.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @!attribute [rw] text_color
    #   The conditional formatting color (solid, gradient) of the text for a
    #   table row.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableRowConditionalFormatting AWS API Documentation
    #
    class TableRowConditionalFormatting < Struct.new(
      :background_color,
      :text_color)
      SENSITIVE = []
      include Aws::Structure
    end

    # The side border options for a table.
    #
    # @!attribute [rw] inner_vertical
    #   The table border options of the inner vertical border.
    #   @return [Types::TableBorderOptions]
    #
    # @!attribute [rw] inner_horizontal
    #   The table border options of the inner horizontal border.
    #   @return [Types::TableBorderOptions]
    #
    # @!attribute [rw] left
    #   The table border options of the left border.
    #   @return [Types::TableBorderOptions]
    #
    # @!attribute [rw] right
    #   The table border options of the right border.
    #   @return [Types::TableBorderOptions]
    #
    # @!attribute [rw] top
    #   The table border options of the top border.
    #   @return [Types::TableBorderOptions]
    #
    # @!attribute [rw] bottom
    #   The table border options of the bottom border.
    #   @return [Types::TableBorderOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableSideBorderOptions AWS API Documentation
    #
    class TableSideBorderOptions < Struct.new(
      :inner_vertical,
      :inner_horizontal,
      :left,
      :right,
      :top,
      :bottom)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration for a `TableVisual`.
    #
    # @!attribute [rw] row_sort
    #   The field sort options for rows in the table.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] pagination_configuration
    #   The pagination configuration (page size, page number) for the table.
    #   @return [Types::PaginationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableSortConfiguration AWS API Documentation
    #
    class TableSortConfiguration < Struct.new(
      :row_sort,
      :pagination_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unaggregated field well for the table.
    #
    # @!attribute [rw] values
    #   The values field well for a pivot table. Values are unaggregated for
    #   an unaggregated table.
    #   @return [Array<Types::UnaggregatedField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableUnaggregatedFieldWells AWS API Documentation
    #
    class TableUnaggregatedFieldWells < Struct.new(
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A table visual.
    #
    # For more information, see [Using tables as visuals][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/tabular.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::TableConfiguration]
    #
    # @!attribute [rw] conditional_formatting
    #   The conditional formatting for a `PivotTableVisual`.
    #   @return [Types::TableConditionalFormatting]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TableVisual AWS API Documentation
    #
    class TableVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :conditional_formatting,
      :actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key or keys of the key-value pairs for the resource tag or tags
    # assigned to the resource.
    #
    # @!attribute [rw] key
    #   Tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that tags a column with additional information.
    #
    # @!attribute [rw] column_name
    #   The column that this operation acts on.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The dataset column tag, currently only used for geospatial type
    #   tagging.
    #
    #   <note markdown="1"> This is not tags for the Amazon Web Services tagging feature.
    #
    #    </note>
    #   @return [Array<Types::ColumnTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagColumnOperation AWS API Documentation
    #
    class TagColumnOperation < Struct.new(
      :column_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains a map of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A template object. A *template* is an entity in Amazon QuickSight that
    # encapsulates the metadata required to create an analysis and that you
    # can use to create a dashboard. A template adds a layer of abstraction
    # by using placeholders to replace the dataset associated with an
    # analysis. You can use templates to create dashboards by replacing
    # dataset placeholders with datasets that follow the same schema that
    # was used to create the source analysis and template.
    #
    # You can share templates across Amazon Web Services accounts by
    # allowing users in other Amazon Web Services accounts to create a
    # template or a dashboard from an existing template.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the template.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A structure describing the versions of the template.
    #   @return [Types::TemplateVersion]
    #
    # @!attribute [rw] template_id
    #   The ID for the template. This is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Time when this was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_time
    #   Time when this was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Template AWS API Documentation
    #
    class Template < Struct.new(
      :arn,
      :name,
      :version,
      :template_id,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template alias.
    #
    # @!attribute [rw] alias_name
    #   The display name of the template alias.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template alias.
    #   @return [String]
    #
    # @!attribute [rw] template_version_number
    #   The version number of the template alias.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateAlias AWS API Documentation
    #
    class TemplateAlias < Struct.new(
      :alias_name,
      :arn,
      :template_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of errors that occurred when the template version creation
    # failed.
    #
    # @!attribute [rw] type
    #   Type of error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Description of the error type.
    #   @return [String]
    #
    # @!attribute [rw] violated_entities
    #   An error path that shows which entities caused the template error.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateError AWS API Documentation
    #
    class TemplateError < Struct.new(
      :type,
      :message,
      :violated_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source analysis of the template.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] data_set_references
    #   A structure containing information about the dataset references used
    #   as placeholders in the template.
    #   @return [Array<Types::DataSetReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSourceAnalysis AWS API Documentation
    #
    class TemplateSourceAnalysis < Struct.new(
      :arn,
      :data_set_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source entity of the template.
    #
    # @!attribute [rw] source_analysis
    #   The source analysis, if it is based on an analysis.
    #   @return [Types::TemplateSourceAnalysis]
    #
    # @!attribute [rw] source_template
    #   The source template, if it is based on an template.
    #   @return [Types::TemplateSourceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSourceEntity AWS API Documentation
    #
    class TemplateSourceEntity < Struct.new(
      :source_analysis,
      :source_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source template of the template.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSourceTemplate AWS API Documentation
    #
    class TemplateSourceTemplate < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template summary.
    #
    # @!attribute [rw] arn
    #   A summary of a template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID of the template. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the template.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_number
    #   A structure containing a list of version numbers for the template
    #   summary.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   The last time that this template was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time that this template was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :arn,
      :template_id,
      :name,
      :latest_version_number,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A version of a template.
    #
    # @!attribute [rw] created_time
    #   The time that this template version was created.
    #   @return [Time]
    #
    # @!attribute [rw] errors
    #   Errors associated with this template version.
    #   @return [Array<Types::TemplateError>]
    #
    # @!attribute [rw] version_number
    #   The version number of the template version.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status that is associated with the template.
    #
    #   * `CREATION_IN_PROGRESS`
    #
    #   * `CREATION_SUCCESSFUL`
    #
    #   * `CREATION_FAILED`
    #
    #   * `UPDATE_IN_PROGRESS`
    #
    #   * `UPDATE_SUCCESSFUL`
    #
    #   * `UPDATE_FAILED`
    #
    #   * `DELETED`
    #   @return [String]
    #
    # @!attribute [rw] data_set_configurations
    #   Schema of the dataset identified by the placeholder. Any dashboard
    #   created from this template should be bound to new datasets matching
    #   the same schema described through this API operation.
    #   @return [Array<Types::DataSetConfiguration>]
    #
    # @!attribute [rw] description
    #   The description of the template.
    #   @return [String]
    #
    # @!attribute [rw] source_entity_arn
    #   The Amazon Resource Name (ARN) of an analysis or template that was
    #   used to create this template.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The ARN of the theme associated with this version of the template.
    #   @return [String]
    #
    # @!attribute [rw] sheets
    #   A list of the associated sheets with the unique identifier and name
    #   of each sheet.
    #   @return [Array<Types::Sheet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateVersion AWS API Documentation
    #
    class TemplateVersion < Struct.new(
      :created_time,
      :errors,
      :version_number,
      :status,
      :data_set_configurations,
      :description,
      :source_entity_arn,
      :theme_arn,
      :sheets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detailed definition of a template.
    #
    # @!attribute [rw] data_set_configurations
    #   An array of dataset configurations. These configurations define the
    #   required columns for each dataset used within a template.
    #   @return [Array<Types::DataSetConfiguration>]
    #
    # @!attribute [rw] sheets
    #   An array of sheet definitions for a template.
    #   @return [Array<Types::SheetDefinition>]
    #
    # @!attribute [rw] calculated_fields
    #   An array of calculated field definitions for the template.
    #   @return [Array<Types::CalculatedField>]
    #
    # @!attribute [rw] parameter_declarations
    #   An array of parameter declarations for a template.
    #
    #   *Parameters* are named variables that can transfer a value for use
    #   by an action or an object.
    #
    #   For more information, see [Parameters in Amazon QuickSight][1] in
    #   the *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/parameters-in-quicksight.html
    #   @return [Array<Types::ParameterDeclaration>]
    #
    # @!attribute [rw] filter_groups
    #   Filter definitions for a template.
    #
    #   For more information, see [Filtering Data][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/filtering-visual-data.html
    #   @return [Array<Types::FilterGroup>]
    #
    # @!attribute [rw] column_configurations
    #   An array of template-level column configurations. Column
    #   configurations are used to set default formatting for a column
    #   that's used throughout a template.
    #   @return [Array<Types::ColumnConfiguration>]
    #
    # @!attribute [rw] analysis_defaults
    #   The configuration for default analysis settings.
    #   @return [Types::AnalysisDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateVersionDefinition AWS API Documentation
    #
    class TemplateVersionDefinition < Struct.new(
      :data_set_configurations,
      :sheets,
      :calculated_fields,
      :parameter_declarations,
      :filter_groups,
      :column_configurations,
      :analysis_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # The template version.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template version.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the template version.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   The time that this template version was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the template version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the template version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TemplateVersionSummary AWS API Documentation
    #
    class TemplateVersionSummary < Struct.new(
      :arn,
      :version_number,
      :created_time,
      :status,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Teradata.
    #
    # @!attribute [rw] host
    #   Host.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port.
    #   @return [Integer]
    #
    # @!attribute [rw] database
    #   Database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TeradataParameters AWS API Documentation
    #
    class TeradataParameters < Struct.new(
      :host,
      :port,
      :database)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options of a control.
    #
    # @!attribute [rw] title_options
    #   The options to configure the title visibility, name, and font size.
    #   @return [Types::LabelOptions]
    #
    # @!attribute [rw] placeholder_options
    #   The configuration of the placeholder options in a text area control.
    #   @return [Types::TextControlPlaceholderOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TextAreaControlDisplayOptions AWS API Documentation
    #
    class TextAreaControlDisplayOptions < Struct.new(
      :title_options,
      :placeholder_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditional formatting for the text.
    #
    # @!attribute [rw] background_color
    #   The conditional formatting for the text background color.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @!attribute [rw] text_color
    #   The conditional formatting for the text color.
    #   @return [Types::ConditionalFormattingColor]
    #
    # @!attribute [rw] icon
    #   The conditional formatting for the icon.
    #   @return [Types::ConditionalFormattingIcon]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TextConditionalFormat AWS API Documentation
    #
    class TextConditionalFormat < Struct.new(
      :background_color,
      :text_color,
      :icon)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the placeholder options in a text control.
    #
    # @!attribute [rw] visibility
    #   The visibility configuration of the placeholder options in a text
    #   control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TextControlPlaceholderOptions AWS API Documentation
    #
    class TextControlPlaceholderOptions < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options of a control.
    #
    # @!attribute [rw] title_options
    #   The options to configure the title visibility, name, and font size.
    #   @return [Types::LabelOptions]
    #
    # @!attribute [rw] placeholder_options
    #   The configuration of the placeholder options in a text field
    #   control.
    #   @return [Types::TextControlPlaceholderOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TextFieldControlDisplayOptions AWS API Documentation
    #
    class TextFieldControlDisplayOptions < Struct.new(
      :title_options,
      :placeholder_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a theme.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that the user gives to the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The identifier that the user gives to the theme.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   A version of a theme.
    #   @return [Types::ThemeVersion]
    #
    # @!attribute [rw] created_time
    #   The date and time that the theme was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The date and time that the theme was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of theme, based on how it was created. Valid values
    #   include: `QUICKSIGHT` and `CUSTOM`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Theme AWS API Documentation
    #
    class Theme < Struct.new(
      :arn,
      :name,
      :theme_id,
      :version,
      :created_time,
      :last_updated_time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An alias for a theme.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The display name of the theme alias.
    #   @return [String]
    #
    # @!attribute [rw] theme_version_number
    #   The version number of the theme alias.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeAlias AWS API Documentation
    #
    class ThemeAlias < Struct.new(
      :arn,
      :alias_name,
      :theme_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme configuration. This configuration contains all of the
    # display properties for a theme.
    #
    # @!attribute [rw] data_color_palette
    #   Color properties that apply to chart data colors.
    #   @return [Types::DataColorPalette]
    #
    # @!attribute [rw] ui_color_palette
    #   Color properties that apply to the UI and to charts, excluding the
    #   colors that apply to data.
    #   @return [Types::UIColorPalette]
    #
    # @!attribute [rw] sheet
    #   Display options related to sheets.
    #   @return [Types::SheetStyle]
    #
    # @!attribute [rw] typography
    #   Determines the typography options.
    #   @return [Types::Typography]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeConfiguration AWS API Documentation
    #
    class ThemeConfiguration < Struct.new(
      :data_color_palette,
      :ui_color_palette,
      :sheet,
      :typography)
      SENSITIVE = []
      include Aws::Structure
    end

    # Theme error.
    #
    # @!attribute [rw] type
    #   The type of error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeError AWS API Documentation
    #
    class ThemeError < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   the display name for the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID of the theme. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_number
    #   The latest version number for the theme.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   The date and time that this theme was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last date and time that this theme was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeSummary AWS API Documentation
    #
    class ThemeSummary < Struct.new(
      :arn,
      :name,
      :theme_id,
      :latest_version_number,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A version of a theme.
    #
    # @!attribute [rw] version_number
    #   The version number of the theme.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the theme.
    #   @return [String]
    #
    # @!attribute [rw] base_theme_id
    #   The Amazon QuickSight-defined ID of the theme that a custom theme
    #   inherits from. All themes initially inherit from a default Amazon
    #   QuickSight theme.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that this theme version was created.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   The theme configuration, which contains all the theme display
    #   properties.
    #   @return [Types::ThemeConfiguration]
    #
    # @!attribute [rw] errors
    #   Errors associated with the theme.
    #   @return [Array<Types::ThemeError>]
    #
    # @!attribute [rw] status
    #   The status of the theme version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeVersion AWS API Documentation
    #
    class ThemeVersion < Struct.new(
      :version_number,
      :arn,
      :description,
      :base_theme_id,
      :created_time,
      :configuration,
      :errors,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme version.
    #
    # @!attribute [rw] version_number
    #   The version number of the theme version.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the theme version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the theme version.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that this theme version was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the theme version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThemeVersionSummary AWS API Documentation
    #
    class ThemeVersionSummary < Struct.new(
      :version_number,
      :arn,
      :description,
      :created_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the thousands separator configuration.
    #
    # @!attribute [rw] symbol
    #   Determines the thousands separator symbol.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Determines the visibility of the thousands separator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThousandSeparatorOptions AWS API Documentation
    #
    class ThousandSeparatorOptions < Struct.new(
      :symbol,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access is throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for the layout of tiles on a sheet.
    #
    # @!attribute [rw] gutter
    #   The gutter settings that apply between tiles.
    #   @return [Types::GutterStyle]
    #
    # @!attribute [rw] margin
    #   The margin settings that apply around the outside edge of sheets.
    #   @return [Types::MarginStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TileLayoutStyle AWS API Documentation
    #
    class TileLayoutStyle < Struct.new(
      :gutter,
      :margin)
      SENSITIVE = []
      include Aws::Structure
    end

    # Display options related to tiles on a sheet.
    #
    # @!attribute [rw] border
    #   The border around a tile.
    #   @return [Types::BorderStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TileStyle AWS API Documentation
    #
    class TileStyle < Struct.new(
      :border)
      SENSITIVE = []
      include Aws::Structure
    end

    # The forecast properties setup of a forecast in the line chart.
    #
    # @!attribute [rw] periods_forward
    #   The periods forward setup of a forecast computation.
    #   @return [Integer]
    #
    # @!attribute [rw] periods_backward
    #   The periods backward setup of a forecast computation.
    #   @return [Integer]
    #
    # @!attribute [rw] upper_boundary
    #   The upper boundary setup of a forecast computation.
    #   @return [Float]
    #
    # @!attribute [rw] lower_boundary
    #   The lower boundary setup of a forecast computation.
    #   @return [Float]
    #
    # @!attribute [rw] prediction_interval
    #   The prediction interval setup of a forecast computation.
    #   @return [Integer]
    #
    # @!attribute [rw] seasonality
    #   The seasonality setup of a forecast computation. Choose one of the
    #   following options:
    #
    #   * `NULL`: The input is set to `NULL`.
    #
    #   * `NON_NULL`: The input is set to a custom value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TimeBasedForecastProperties AWS API Documentation
    #
    class TimeBasedForecastProperties < Struct.new(
      :periods_forward,
      :periods_backward,
      :upper_boundary,
      :lower_boundary,
      :prediction_interval,
      :seasonality)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `TimeEqualityFilter` filters values that are equal to a given value.
    #
    # @!attribute [rw] filter_id
    #   An identifier that uniquely identifies a filter within a dashboard,
    #   analysis, or template.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] value
    #   The value of a `TimeEquality` filter.
    #
    #   This field is mutually exclusive to `ParameterName`.
    #   @return [Time]
    #
    # @!attribute [rw] parameter_name
    #   The parameter whose value should be used for the filter value.
    #
    #   This field is mutually exclusive to `Value`.
    #   @return [String]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TimeEqualityFilter AWS API Documentation
    #
    class TimeEqualityFilter < Struct.new(
      :filter_id,
      :column,
      :value,
      :parameter_name,
      :time_granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time range drill down filter.
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] range_minimum
    #   The minimum value for the filter value range.
    #   @return [Time]
    #
    # @!attribute [rw] range_maximum
    #   The maximum value for the filter value range.
    #   @return [Time]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TimeRangeDrillDownFilter AWS API Documentation
    #
    class TimeRangeDrillDownFilter < Struct.new(
      :column,
      :range_minimum,
      :range_maximum,
      :time_granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `TimeRangeFilter` filters values that are between two specified
    # values.
    #
    # @!attribute [rw] filter_id
    #   An identifier that uniquely identifies a filter within a dashboard,
    #   analysis, or template.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] include_minimum
    #   Determines whether the minimum value in the filter value range
    #   should be included in the filtered results.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_maximum
    #   Determines whether the maximum value in the filter value range
    #   should be included in the filtered results.
    #   @return [Boolean]
    #
    # @!attribute [rw] range_minimum_value
    #   The minimum value for the filter value range.
    #   @return [Types::TimeRangeFilterValue]
    #
    # @!attribute [rw] range_maximum_value
    #   The maximum value for the filter value range.
    #   @return [Types::TimeRangeFilterValue]
    #
    # @!attribute [rw] null_option
    #   This option determines how null values should be treated when
    #   filtering data.
    #
    #   * `ALL_VALUES`: Include null values in filtered results.
    #
    #   * `NULLS_ONLY`: Only include null values in filtered results.
    #
    #   * `NON_NULLS_ONLY`: Exclude null values from filtered results.
    #   @return [String]
    #
    # @!attribute [rw] exclude_period_configuration
    #   The exclude period of the time range filter.
    #   @return [Types::ExcludePeriodConfiguration]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TimeRangeFilter AWS API Documentation
    #
    class TimeRangeFilter < Struct.new(
      :filter_id,
      :column,
      :include_minimum,
      :include_maximum,
      :range_minimum_value,
      :range_maximum_value,
      :null_option,
      :exclude_period_configuration,
      :time_granularity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a time range filter.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] static_value
    #   The static input value.
    #   @return [Time]
    #
    # @!attribute [rw] rolling_date
    #   The rolling date input value.
    #   @return [Types::RollingDateConfiguration]
    #
    # @!attribute [rw] parameter
    #   The parameter type input value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TimeRangeFilterValue AWS API Documentation
    #
    class TimeRangeFilterValue < Struct.new(
      :static_value,
      :rolling_date,
      :parameter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tooltip.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] field_tooltip_item
    #   The tooltip item for the fields.
    #   @return [Types::FieldTooltipItem]
    #
    # @!attribute [rw] column_tooltip_item
    #   The tooltip item for the columns that are not part of a field well.
    #   @return [Types::ColumnTooltipItem]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TooltipItem AWS API Documentation
    #
    class TooltipItem < Struct.new(
      :field_tooltip_item,
      :column_tooltip_item)
      SENSITIVE = []
      include Aws::Structure
    end

    # The display options for the visual tooltip.
    #
    # @!attribute [rw] tooltip_visibility
    #   Determines whether or not the tooltip is visible.
    #   @return [String]
    #
    # @!attribute [rw] selected_tooltip_type
    #   The selected type for the tooltip. Choose one of the following
    #   options:
    #
    #   * `BASIC`: A basic tooltip.
    #
    #   * `DETAILED`: A detailed tooltip.
    #   @return [String]
    #
    # @!attribute [rw] field_based_tooltip
    #   The setup for the detailed tooltip. The tooltip setup is always
    #   saved. The display type is decided based on the tooltip type.
    #   @return [Types::FieldBasedTooltip]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TooltipOptions AWS API Documentation
    #
    class TooltipOptions < Struct.new(
      :tooltip_visibility,
      :selected_tooltip_type,
      :field_based_tooltip)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `TopBottomFilter` filters values that are at the top or the bottom.
    #
    # @!attribute [rw] filter_id
    #   An identifier that uniquely identifies a filter within a dashboard,
    #   analysis, or template.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that the filter is applied to.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] limit
    #   The number of items to include in the top bottom filter results.
    #   @return [Integer]
    #
    # @!attribute [rw] aggregation_sort_configurations
    #   The aggregation and sort configuration of the top bottom filter.
    #   @return [Array<Types::AggregationSortConfiguration>]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   The parameter whose value should be used for the filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopBottomFilter AWS API Documentation
    #
    class TopBottomFilter < Struct.new(
      :filter_id,
      :column,
      :limit,
      :aggregation_sort_configurations,
      :time_granularity,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The top movers and bottom movers computation setup.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] category
    #   The category field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @!attribute [rw] mover_size
    #   The mover size setup of the top and bottom movers computation.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_order
    #   The sort order setup of the top and bottom movers computation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The computation type. Choose from the following options:
    #
    #   * TOP: Top movers computation.
    #
    #   * BOTTOM: Bottom movers computation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopBottomMoversComputation AWS API Documentation
    #
    class TopBottomMoversComputation < Struct.new(
      :computation_id,
      :name,
      :time,
      :category,
      :value,
      :mover_size,
      :sort_order,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The top ranked and bottom ranked computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @!attribute [rw] result_size
    #   The result size of a top and bottom ranked computation.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The computation type. Choose one of the following options:
    #
    #   * TOP: A top ranked computation.
    #
    #   * BOTTOM: A bottom ranked computation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopBottomRankedComputation AWS API Documentation
    #
    class TopBottomRankedComputation < Struct.new(
      :computation_id,
      :name,
      :category,
      :value,
      :result_size,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a calculated field.
    #
    # @!attribute [rw] calculated_field_name
    #   The calculated field name.
    #   @return [String]
    #
    # @!attribute [rw] calculated_field_description
    #   The calculated field description.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The calculated field expression.
    #   @return [String]
    #
    # @!attribute [rw] calculated_field_synonyms
    #   The other names or aliases for the calculated field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_included_in_topic
    #   A boolean value that indicates if a calculated field is included in
    #   the topic.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_indexing
    #   A Boolean value that indicates if a calculated field is visible in
    #   the autocomplete.
    #   @return [Boolean]
    #
    # @!attribute [rw] column_data_role
    #   The column data role for a calculated field. Valid values for this
    #   structure are `DIMENSION` and `MEASURE`.
    #   @return [String]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] default_formatting
    #   The default formatting definition.
    #   @return [Types::DefaultFormatting]
    #
    # @!attribute [rw] aggregation
    #   The default aggregation. Valid values for this structure are `SUM`,
    #   `MAX`, `MIN`, `COUNT`, `DISTINCT_COUNT`, and `AVERAGE`.
    #   @return [String]
    #
    # @!attribute [rw] comparative_order
    #   The order in which data is displayed for the calculated field when
    #   it's used in a comparative context.
    #   @return [Types::ComparativeOrder]
    #
    # @!attribute [rw] semantic_type
    #   The semantic type.
    #   @return [Types::SemanticType]
    #
    # @!attribute [rw] allowed_aggregations
    #   The list of aggregation types that are allowed for the calculated
    #   field. Valid values for this structure are `COUNT`,
    #   `DISTINCT_COUNT`, `MIN`, `MAX`, `MEDIAN`, `SUM`, `AVERAGE`, `STDEV`,
    #   `STDEVP`, `VAR`, `VARP`, and `PERCENTILE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_allowed_aggregations
    #   The list of aggregation types that are not allowed for the
    #   calculated field. Valid values for this structure are `COUNT`,
    #   `DISTINCT_COUNT`, `MIN`, `MAX`, `MEDIAN`, `SUM`, `AVERAGE`, `STDEV`,
    #   `STDEVP`, `VAR`, `VARP`, and `PERCENTILE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] never_aggregate_in_filter
    #   A Boolean value that indicates whether to never aggregate calculated
    #   field in filters.
    #   @return [Boolean]
    #
    # @!attribute [rw] cell_value_synonyms
    #   The other names or aliases for the calculated field cell value.
    #   @return [Array<Types::CellValueSynonym>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicCalculatedField AWS API Documentation
    #
    class TopicCalculatedField < Struct.new(
      :calculated_field_name,
      :calculated_field_description,
      :expression,
      :calculated_field_synonyms,
      :is_included_in_topic,
      :disable_indexing,
      :column_data_role,
      :time_granularity,
      :default_formatting,
      :aggregation,
      :comparative_order,
      :semantic_type,
      :allowed_aggregations,
      :not_allowed_aggregations,
      :never_aggregate_in_filter,
      :cell_value_synonyms)
      SENSITIVE = [:expression]
      include Aws::Structure
    end

    # A structure that represents a category filter.
    #
    # @!attribute [rw] category_filter_function
    #   The category filter function. Valid values for this structure are
    #   `EXACT` and `CONTAINS`.
    #   @return [String]
    #
    # @!attribute [rw] category_filter_type
    #   The category filter type. This element is used to specify whether a
    #   filter is a simple category filter or an inverse category filter.
    #   @return [String]
    #
    # @!attribute [rw] constant
    #   The constant used in a category filter.
    #   @return [Types::TopicCategoryFilterConstant]
    #
    # @!attribute [rw] inverse
    #   A Boolean value that indicates if the filter is inverse.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicCategoryFilter AWS API Documentation
    #
    class TopicCategoryFilter < Struct.new(
      :category_filter_function,
      :category_filter_type,
      :constant,
      :inverse)
      SENSITIVE = [:constant]
      include Aws::Structure
    end

    # A constant used in a category filter.
    #
    # @!attribute [rw] constant_type
    #   The type of category filter constant. This element is used to
    #   specify whether a constant is a singular or collective. Valid values
    #   are `SINGULAR` and `COLLECTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] singular_constant
    #   A singular constant used in a category filter. This element is used
    #   to specify a single value for the constant.
    #   @return [String]
    #
    # @!attribute [rw] collective_constant
    #   A collective constant used in a category filter. This element is
    #   used to specify a list of values for the constant.
    #   @return [Types::CollectiveConstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicCategoryFilterConstant AWS API Documentation
    #
    class TopicCategoryFilterConstant < Struct.new(
      :constant_type,
      :singular_constant,
      :collective_constant)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a column in a dataset.
    #
    # @!attribute [rw] column_name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] column_friendly_name
    #   A user-friendly name for the column.
    #   @return [String]
    #
    # @!attribute [rw] column_description
    #   A description of the column and its contents.
    #   @return [String]
    #
    # @!attribute [rw] column_synonyms
    #   The other names or aliases for the column.
    #   @return [Array<String>]
    #
    # @!attribute [rw] column_data_role
    #   The role of the column in the data. Valid values are `DIMENSION` and
    #   `MEASURE`.
    #   @return [String]
    #
    # @!attribute [rw] aggregation
    #   The type of aggregation that is performed on the column data when
    #   it's queried. Valid values for this structure are `SUM`, `MAX`,
    #   `MIN`, `COUNT`, `DISTINCT_COUNT`, and `AVERAGE`.
    #   @return [String]
    #
    # @!attribute [rw] is_included_in_topic
    #   A Boolean value that indicates whether the column is included in the
    #   query results.
    #   @return [Boolean]
    #
    # @!attribute [rw] disable_indexing
    #   A Boolean value that indicates whether the column shows in the
    #   autocomplete functionality.
    #   @return [Boolean]
    #
    # @!attribute [rw] comparative_order
    #   The order in which data is displayed for the column when it's used
    #   in a comparative context.
    #   @return [Types::ComparativeOrder]
    #
    # @!attribute [rw] semantic_type
    #   The semantic type of data contained in the column.
    #   @return [Types::SemanticType]
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] allowed_aggregations
    #   The list of aggregation types that are allowed for the column. Valid
    #   values for this structure are `COUNT`, `DISTINCT_COUNT`, `MIN`,
    #   `MAX`, `MEDIAN`, `SUM`, `AVERAGE`, `STDEV`, `STDEVP`, `VAR`, `VARP`,
    #   and `PERCENTILE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_allowed_aggregations
    #   The list of aggregation types that are not allowed for the column.
    #   Valid values for this structure are `COUNT`, `DISTINCT_COUNT`,
    #   `MIN`, `MAX`, `MEDIAN`, `SUM`, `AVERAGE`, `STDEV`, `STDEVP`, `VAR`,
    #   `VARP`, and `PERCENTILE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_formatting
    #   The default formatting used for values in the column.
    #   @return [Types::DefaultFormatting]
    #
    # @!attribute [rw] never_aggregate_in_filter
    #   A Boolean value that indicates whether to aggregate the column data
    #   when it's used in a filter context.
    #   @return [Boolean]
    #
    # @!attribute [rw] cell_value_synonyms
    #   The other names or aliases for the column cell value.
    #   @return [Array<Types::CellValueSynonym>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicColumn AWS API Documentation
    #
    class TopicColumn < Struct.new(
      :column_name,
      :column_friendly_name,
      :column_description,
      :column_synonyms,
      :column_data_role,
      :aggregation,
      :is_included_in_topic,
      :disable_indexing,
      :comparative_order,
      :semantic_type,
      :time_granularity,
      :allowed_aggregations,
      :not_allowed_aggregations,
      :default_formatting,
      :never_aggregate_in_filter,
      :cell_value_synonyms)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to restrict data based on a range of dates or times.
    #
    # @!attribute [rw] inclusive
    #   A Boolean value that indicates whether the date range filter should
    #   include the boundary values. If set to true, the filter includes the
    #   start and end dates. If set to false, the filter excludes them.
    #   @return [Boolean]
    #
    # @!attribute [rw] constant
    #   The constant used in a date range filter.
    #   @return [Types::TopicRangeFilterConstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicDateRangeFilter AWS API Documentation
    #
    class TopicDateRangeFilter < Struct.new(
      :inclusive,
      :constant)
      SENSITIVE = [:constant]
      include Aws::Structure
    end

    # A structure that describes the details of a topic, such as its name,
    # description, and associated data sets.
    #
    # @!attribute [rw] name
    #   The name of the topic.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the topic.
    #   @return [String]
    #
    # @!attribute [rw] data_sets
    #   The data sets that the topic is associated with.
    #   @return [Array<Types::DatasetMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicDetails AWS API Documentation
    #
    class TopicDetails < Struct.new(
      :name,
      :description,
      :data_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a filter used to select items for a topic.
    #
    # @!attribute [rw] filter_description
    #   A description of the filter used to select items for a topic.
    #   @return [String]
    #
    # @!attribute [rw] filter_class
    #   The class of the filter. Valid values for this structure are
    #   `ENFORCED_VALUE_FILTER`, `CONDITIONAL_VALUE_FILTER`, and
    #   `NAMED_VALUE_FILTER`.
    #   @return [String]
    #
    # @!attribute [rw] filter_name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] filter_synonyms
    #   The other names or aliases for the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operand_field_name
    #   The name of the field that the filter operates on.
    #   @return [String]
    #
    # @!attribute [rw] filter_type
    #   The type of the filter. Valid values for this structure are
    #   `CATEGORY_FILTER`, `NUMERIC_EQUALITY_FILTER`,
    #   `NUMERIC_RANGE_FILTER`, `DATE_RANGE_FILTER`, and
    #   `RELATIVE_DATE_FILTER`.
    #   @return [String]
    #
    # @!attribute [rw] category_filter
    #   The category filter that is associated with this filter.
    #   @return [Types::TopicCategoryFilter]
    #
    # @!attribute [rw] numeric_equality_filter
    #   The numeric equality filter.
    #   @return [Types::TopicNumericEqualityFilter]
    #
    # @!attribute [rw] numeric_range_filter
    #   The numeric range filter.
    #   @return [Types::TopicNumericRangeFilter]
    #
    # @!attribute [rw] date_range_filter
    #   The date range filter.
    #   @return [Types::TopicDateRangeFilter]
    #
    # @!attribute [rw] relative_date_filter
    #   The relative date filter.
    #   @return [Types::TopicRelativeDateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicFilter AWS API Documentation
    #
    class TopicFilter < Struct.new(
      :filter_description,
      :filter_class,
      :filter_name,
      :filter_synonyms,
      :operand_field_name,
      :filter_type,
      :category_filter,
      :numeric_equality_filter,
      :numeric_range_filter,
      :date_range_filter,
      :relative_date_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a named entity.
    #
    # @!attribute [rw] entity_name
    #   The name of the named entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_description
    #   The description of the named entity.
    #   @return [String]
    #
    # @!attribute [rw] entity_synonyms
    #   The other names or aliases for the named entity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] semantic_entity_type
    #   The type of named entity that a topic represents.
    #   @return [Types::SemanticEntityType]
    #
    # @!attribute [rw] definition
    #   The definition of a named entity.
    #   @return [Array<Types::NamedEntityDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicNamedEntity AWS API Documentation
    #
    class TopicNamedEntity < Struct.new(
      :entity_name,
      :entity_description,
      :entity_synonyms,
      :semantic_entity_type,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter that filters topics based on the value of a numeric field.
    # The filter includes only topics whose numeric field value matches the
    # specified value.
    #
    # @!attribute [rw] constant
    #   The constant used in a numeric equality filter.
    #   @return [Types::TopicSingularFilterConstant]
    #
    # @!attribute [rw] aggregation
    #   An aggregation function that specifies how to calculate the value of
    #   a numeric field for a topic. Valid values for this structure are
    #   `NO_AGGREGATION`, `SUM`, `AVERAGE`, `COUNT`, `DISTINCT_COUNT`,
    #   `MAX`, `MEDIAN`, `MIN`, `STDEV`, `STDEVP`, `VAR`, and `VARP`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicNumericEqualityFilter AWS API Documentation
    #
    class TopicNumericEqualityFilter < Struct.new(
      :constant,
      :aggregation)
      SENSITIVE = [:constant]
      include Aws::Structure
    end

    # A filter that filters topics based on the value of a numeric field.
    # The filter includes only topics whose numeric field value falls within
    # the specified range.
    #
    # @!attribute [rw] inclusive
    #   A Boolean value that indicates whether the endpoints of the numeric
    #   range are included in the filter. If set to true, topics whose
    #   numeric field value is equal to the endpoint values will be included
    #   in the filter. If set to false, topics whose numeric field value is
    #   equal to the endpoint values will be excluded from the filter.
    #   @return [Boolean]
    #
    # @!attribute [rw] constant
    #   The constant used in a numeric range filter.
    #   @return [Types::TopicRangeFilterConstant]
    #
    # @!attribute [rw] aggregation
    #   An aggregation function that specifies how to calculate the value of
    #   a numeric field for a topic, Valid values for this structure are
    #   `NO_AGGREGATION`, `SUM`, `AVERAGE`, `COUNT`, `DISTINCT_COUNT`,
    #   `MAX`, `MEDIAN`, `MIN`, `STDEV`, `STDEVP`, `VAR`, and `VARP`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicNumericRangeFilter AWS API Documentation
    #
    class TopicNumericRangeFilter < Struct.new(
      :inclusive,
      :constant,
      :aggregation)
      SENSITIVE = [:constant]
      include Aws::Structure
    end

    # A constant value that is used in a range filter to specify the
    # endpoints of the range.
    #
    # @!attribute [rw] constant_type
    #   The data type of the constant value that is used in a range filter.
    #   Valid values for this structure are `RANGE`.
    #   @return [String]
    #
    # @!attribute [rw] range_constant
    #   The value of the constant that is used to specify the endpoints of a
    #   range filter.
    #   @return [Types::RangeConstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicRangeFilterConstant AWS API Documentation
    #
    class TopicRangeFilterConstant < Struct.new(
      :constant_type,
      :range_constant)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about the refresh of a topic.
    #
    # @!attribute [rw] refresh_arn
    #   The Amazon Resource Name (ARN) of the topic refresh.
    #   @return [String]
    #
    # @!attribute [rw] refresh_id
    #   The ID of the refresh, which occurs as a result of topic creation or
    #   topic update.
    #   @return [String]
    #
    # @!attribute [rw] refresh_status
    #   The status of the refresh job that indicates whether the job is
    #   still running, completed successfully, or failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicRefreshDetails AWS API Documentation
    #
    class TopicRefreshDetails < Struct.new(
      :refresh_arn,
      :refresh_id,
      :refresh_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a topic refresh schedule.
    #
    # @!attribute [rw] is_enabled
    #   A Boolean value that controls whether to schedule is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] based_on_spice_schedule
    #   A Boolean value that controls whether to schedule runs at the same
    #   schedule that is specified in SPICE dataset.
    #   @return [Boolean]
    #
    # @!attribute [rw] starting_at
    #   The starting date and time for the refresh schedule.
    #   @return [Time]
    #
    # @!attribute [rw] timezone
    #   The timezone that you want the refresh schedule to use.
    #   @return [String]
    #
    # @!attribute [rw] repeat_at
    #   The time of day when the refresh should run, for example,
    #   Monday-Sunday.
    #   @return [String]
    #
    # @!attribute [rw] topic_schedule_type
    #   The type of refresh schedule. Valid values for this structure are
    #   `HOURLY`, `DAILY`, `WEEKLY`, and `MONTHLY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicRefreshSchedule AWS API Documentation
    #
    class TopicRefreshSchedule < Struct.new(
      :is_enabled,
      :based_on_spice_schedule,
      :starting_at,
      :timezone,
      :repeat_at,
      :topic_schedule_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the refresh schedule details for a dataset.
    #
    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] refresh_schedule
    #   The definition of a refresh schedule.
    #   @return [Types::TopicRefreshSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicRefreshScheduleSummary AWS API Documentation
    #
    class TopicRefreshScheduleSummary < Struct.new(
      :dataset_id,
      :dataset_arn,
      :dataset_name,
      :refresh_schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that represents a relative date filter.
    #
    # @!attribute [rw] time_granularity
    #   The level of time precision that is used to aggregate `DateTime`
    #   values.
    #   @return [String]
    #
    # @!attribute [rw] relative_date_filter_function
    #   The function to be used in a relative date filter to determine the
    #   range of dates to include in the results. Valid values for this
    #   structure are `BEFORE`, `AFTER`, and `BETWEEN`.
    #   @return [String]
    #
    # @!attribute [rw] constant
    #   The constant used in a relative date filter.
    #   @return [Types::TopicSingularFilterConstant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicRelativeDateFilter AWS API Documentation
    #
    class TopicRelativeDateFilter < Struct.new(
      :time_granularity,
      :relative_date_filter_function,
      :constant)
      SENSITIVE = [:constant]
      include Aws::Structure
    end

    # A structure that represents a singular filter constant, used in
    # filters to specify a single value to match against.
    #
    # @!attribute [rw] constant_type
    #   The type of the singular filter constant. Valid values for this
    #   structure are `SINGULAR`.
    #   @return [String]
    #
    # @!attribute [rw] singular_constant
    #   The value of the singular filter constant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicSingularFilterConstant AWS API Documentation
    #
    class TopicSingularFilterConstant < Struct.new(
      :constant_type,
      :singular_constant)
      SENSITIVE = []
      include Aws::Structure
    end

    # A topic summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID for the topic. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TopicSummary AWS API Documentation
    #
    class TopicSummary < Struct.new(
      :arn,
      :topic_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The total aggregation computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value field that is used in a computation.
    #   @return [Types::MeasureField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TotalAggregationComputation AWS API Documentation
    #
    class TotalAggregationComputation < Struct.new(
      :computation_id,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The total options for a table visual.
    #
    # @!attribute [rw] totals_visibility
    #   The visibility configuration for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] placement
    #   The placement (start, end) for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] scroll_status
    #   The scroll status (pinned, scrolled) for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] custom_label
    #   The custom label string for the total cells.
    #   @return [String]
    #
    # @!attribute [rw] total_cell_style
    #   Cell styling options for the total cells.
    #   @return [Types::TableCellStyle]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TotalOptions AWS API Documentation
    #
    class TotalOptions < Struct.new(
      :totals_visibility,
      :placement,
      :scroll_status,
      :custom_label,
      :total_cell_style)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data transformation on a logical table. This is a variant type
    # structure. For this structure to be valid, only one of the attributes
    # can be non-null.
    #
    # @!attribute [rw] project_operation
    #   An operation that projects columns. Operations that come after a
    #   projection can only refer to projected columns.
    #   @return [Types::ProjectOperation]
    #
    # @!attribute [rw] filter_operation
    #   An operation that filters rows based on some condition.
    #   @return [Types::FilterOperation]
    #
    # @!attribute [rw] create_columns_operation
    #   An operation that creates calculated columns. Columns created in one
    #   such operation form a lexical closure.
    #   @return [Types::CreateColumnsOperation]
    #
    # @!attribute [rw] rename_column_operation
    #   An operation that renames a column.
    #   @return [Types::RenameColumnOperation]
    #
    # @!attribute [rw] cast_column_type_operation
    #   A transform operation that casts a column to a different type.
    #   @return [Types::CastColumnTypeOperation]
    #
    # @!attribute [rw] tag_column_operation
    #   An operation that tags a column with additional information.
    #   @return [Types::TagColumnOperation]
    #
    # @!attribute [rw] untag_column_operation
    #   A transform operation that removes tags associated with a column.
    #   @return [Types::UntagColumnOperation]
    #
    # @!attribute [rw] override_dataset_parameter_operation
    #   A transform operation that overrides the dataset parameter values
    #   that are defined in another dataset.
    #   @return [Types::OverrideDatasetParameterOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TransformOperation AWS API Documentation
    #
    class TransformOperation < Struct.new(
      :project_operation,
      :filter_operation,
      :create_columns_operation,
      :rename_column_operation,
      :cast_column_type_operation,
      :tag_column_operation,
      :untag_column_operation,
      :override_dataset_parameter_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregated field wells of a tree map.
    #
    # @!attribute [rw] groups
    #   The group by field well of a tree map. Values are grouped based on
    #   group by fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] sizes
    #   The size field well of a tree map. Values are aggregated based on
    #   group by fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] colors
    #   The color field well of a tree map. Values are grouped by
    #   aggregations based on group by fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TreeMapAggregatedFieldWells AWS API Documentation
    #
    class TreeMapAggregatedFieldWells < Struct.new(
      :groups,
      :sizes,
      :colors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a tree map.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::TreeMapFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a tree map.
    #   @return [Types::TreeMapSortConfiguration]
    #
    # @!attribute [rw] group_label_options
    #   The label options (label text, label visibility) of the groups that
    #   are displayed in a tree map.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] size_label_options
    #   The label options (label text, label visibility) of the sizes that
    #   are displayed in a tree map.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] color_label_options
    #   The label options (label text, label visibility) for the colors
    #   displayed in a tree map.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] color_scale
    #   The color options (gradient color, point of divergence) of a tree
    #   map.
    #   @return [Types::ColorScale]
    #
    # @!attribute [rw] legend
    #   The legend display setup of the visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] data_labels
    #   The options that determine if visual data labels are displayed.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] tooltip
    #   The tooltip display setup of the visual.
    #   @return [Types::TooltipOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TreeMapConfiguration AWS API Documentation
    #
    class TreeMapConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :group_label_options,
      :size_label_options,
      :color_label_options,
      :color_scale,
      :legend,
      :data_labels,
      :tooltip)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of a tree map.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] tree_map_aggregated_field_wells
    #   The aggregated field wells of a tree map.
    #   @return [Types::TreeMapAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TreeMapFieldWells AWS API Documentation
    #
    class TreeMapFieldWells < Struct.new(
      :tree_map_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a tree map.
    #
    # @!attribute [rw] tree_map_sort
    #   The sort configuration of group by fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] tree_map_group_items_limit_configuration
    #   The limit on the number of groups that are displayed.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TreeMapSortConfiguration AWS API Documentation
    #
    class TreeMapSortConfiguration < Struct.new(
      :tree_map_sort,
      :tree_map_group_items_limit_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tree map.
    #
    # For more information, see [Using tree maps][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/tree-map.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::TreeMapConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TreeMapVisual AWS API Documentation
    #
    class TreeMapVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of trend arrows in a KPI
    # visual.
    #
    # @!attribute [rw] visibility
    #   The visibility of the trend arrows.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TrendArrowOptions AWS API Documentation
    #
    class TrendArrowOptions < Struct.new(
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters for Twitter.
    #
    # @!attribute [rw] query
    #   Twitter query string.
    #   @return [String]
    #
    # @!attribute [rw] max_rows
    #   Maximum number of rows to query Twitter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/TwitterParameters AWS API Documentation
    #
    class TwitterParameters < Struct.new(
      :query,
      :max_rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines the typography options.
    #
    # @!attribute [rw] font_families
    #   Determines the list of font families.
    #   @return [Array<Types::Font>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Typography AWS API Documentation
    #
    class Typography < Struct.new(
      :font_families)
      SENSITIVE = []
      include Aws::Structure
    end

    # The theme colors that apply to UI and to charts, excluding data
    # colors. The colors description is a hexadecimal color code that
    # consists of six alphanumerical characters, prefixed with `#`, for
    # example #37BFF5. For more information, see [Using Themes in Amazon
    # QuickSight][1] in the *Amazon QuickSight User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html
    #
    # @!attribute [rw] primary_foreground
    #   The color of text and other foreground elements that appear over the
    #   primary background regions, such as grid lines, borders, table
    #   banding, icons, and so on.
    #   @return [String]
    #
    # @!attribute [rw] primary_background
    #   The background color that applies to visuals and other high emphasis
    #   UI.
    #   @return [String]
    #
    # @!attribute [rw] secondary_foreground
    #   The foreground color that applies to any sheet title, sheet control
    #   text, or UI that appears over the secondary background.
    #   @return [String]
    #
    # @!attribute [rw] secondary_background
    #   The background color that applies to the sheet background and sheet
    #   controls.
    #   @return [String]
    #
    # @!attribute [rw] accent
    #   This color is that applies to selected states and buttons.
    #   @return [String]
    #
    # @!attribute [rw] accent_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the accent color.
    #   @return [String]
    #
    # @!attribute [rw] danger
    #   The color that applies to error messages.
    #   @return [String]
    #
    # @!attribute [rw] danger_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the error color.
    #   @return [String]
    #
    # @!attribute [rw] warning
    #   This color that applies to warning and informational messages.
    #   @return [String]
    #
    # @!attribute [rw] warning_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the warning color.
    #   @return [String]
    #
    # @!attribute [rw] success
    #   The color that applies to success messages, for example the check
    #   mark for a successful download.
    #   @return [String]
    #
    # @!attribute [rw] success_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the success color.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The color that applies to the names of fields that are identified as
    #   dimensions.
    #   @return [String]
    #
    # @!attribute [rw] dimension_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the dimension color.
    #   @return [String]
    #
    # @!attribute [rw] measure
    #   The color that applies to the names of fields that are identified as
    #   measures.
    #   @return [String]
    #
    # @!attribute [rw] measure_foreground
    #   The foreground color that applies to any text or other elements that
    #   appear over the measure color.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UIColorPalette AWS API Documentation
    #
    class UIColorPalette < Struct.new(
      :primary_foreground,
      :primary_background,
      :secondary_foreground,
      :secondary_background,
      :accent,
      :accent_foreground,
      :danger,
      :danger_foreground,
      :warning,
      :warning_foreground,
      :success,
      :success_foreground,
      :dimension,
      :dimension_foreground,
      :measure,
      :measure_foreground)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unaggregated field for a table.
    #
    # @!attribute [rw] field_id
    #   The custom field ID.
    #   @return [String]
    #
    # @!attribute [rw] column
    #   The column that is used in the `UnaggregatedField`.
    #   @return [Types::ColumnIdentifier]
    #
    # @!attribute [rw] format_configuration
    #   The format configuration of the field.
    #   @return [Types::FormatConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UnaggregatedField AWS API Documentation
    #
    class UnaggregatedField < Struct.new(
      :field_id,
      :column,
      :format_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The unique values computation configuration.
    #
    # @!attribute [rw] computation_id
    #   The ID for a computation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a computation.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category field that is used in a computation.
    #   @return [Types::DimensionField]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UniqueValuesComputation AWS API Documentation
    #
    class UniqueValuesComputation < Struct.new(
      :computation_id,
      :name,
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error indicates that you are calling an embedding operation in
    # Amazon QuickSight without the required pricing plan on your Amazon Web
    # Services account. Before you can use embedding for anonymous users, a
    # QuickSight administrator needs to add capacity pricing to Amazon
    # QuickSight. You can do this on the **Manage Amazon QuickSight** page.
    #
    # After capacity pricing is added, you can use the `
    # GetDashboardEmbedUrl ` API operation with the `--identity-type
    # ANONYMOUS` option.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UnsupportedPricingPlanException AWS API Documentation
    #
    class UnsupportedPricingPlanException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error indicates that you are calling an operation on an Amazon
    # QuickSight subscription where the edition doesn't include support for
    # that operation. Amazon Amazon QuickSight currently has Standard
    # Edition and Enterprise Edition. Not every operation and capability is
    # available in every edition.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UnsupportedUserEditionException AWS API Documentation
    #
    class UnsupportedUserEditionException < Struct.new(
      :message,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A transform operation that removes tags associated with a column.
    #
    # @!attribute [rw] column_name
    #   The column that this operation acts on.
    #   @return [String]
    #
    # @!attribute [rw] tag_names
    #   The column tags to remove from this column.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagColumnOperation AWS API Documentation
    #
    class UntagColumnOperation < Struct.new(
      :column_name,
      :tag_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key-value pairs for the resource tag or tags
    #   assigned to the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to update
    #   Amazon QuickSight customizations for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace that you want to update Amazon QuickSight
    #   customizations for.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The Amazon QuickSight customizations you're updating in the current
    #   Amazon Web Services Region.
    #   @return [Types::AccountCustomization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountCustomizationRequest AWS API Documentation
    #
    class UpdateAccountCustomizationRequest < Struct.new(
      :aws_account_id,
      :namespace,
      :account_customization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the updated customization for
    #   this Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that you want to update
    #   Amazon QuickSight customizations for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the customization that you're
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] account_customization
    #   The Amazon QuickSight customizations you're updating in the current
    #   Amazon Web Services Region.
    #   @return [Types::AccountCustomization]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountCustomizationResponse AWS API Documentation
    #
    class UpdateAccountCustomizationResponse < Struct.new(
      :arn,
      :aws_account_id,
      :namespace,
      :account_customization,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the Amazon
    #   QuickSight settings that you want to list.
    #   @return [String]
    #
    # @!attribute [rw] default_namespace
    #   The default namespace for this Amazon Web Services account.
    #   Currently, the default is `default`. IAM users that register for the
    #   first time with Amazon QuickSight provide an email address that
    #   becomes associated with the default namespace.
    #   @return [String]
    #
    # @!attribute [rw] notification_email
    #   The email address that you want Amazon QuickSight to send
    #   notifications to regarding your Amazon Web Services account or
    #   Amazon QuickSight subscription.
    #   @return [String]
    #
    # @!attribute [rw] termination_protection_enabled
    #   A boolean value that determines whether or not an Amazon QuickSight
    #   account can be deleted. A `True` value doesn't allow the account to
    #   be deleted and results in an error message if a user tries to make a
    #   `DeleteAccountSubscription` request. A `False` value will allow the
    #   account to be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountSettingsRequest AWS API Documentation
    #
    class UpdateAccountSettingsRequest < Struct.new(
      :aws_account_id,
      :default_namespace,
      :notification_email,
      :termination_protection_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAccountSettingsResponse AWS API Documentation
    #
    class UpdateAccountSettingsResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis
    #   whose permissions you're updating. You must be using the Amazon Web
    #   Services account that the analysis is in.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis whose permissions you're updating. The ID is
    #   part of the analysis URL.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A structure that describes the permissions to add and the principal
    #   to add them to.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A structure that describes the permissions to remove and the
    #   principal to remove them from.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisPermissionsRequest AWS API Documentation
    #
    class UpdateAnalysisPermissionsRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis_arn
    #   The Amazon Resource Name (ARN) of the analysis that you updated.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis that you updated permissions for.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A structure that describes the principals and the resource-level
    #   permissions on an analysis.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisPermissionsResponse AWS API Documentation
    #
    class UpdateAnalysisPermissionsResponse < Struct.new(
      :analysis_arn,
      :analysis_id,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the analysis
    #   that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID for the analysis that you're updating. This ID displays in
    #   the URL of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A descriptive name for the analysis that you're updating. This name
    #   displays for the analysis in the Amazon QuickSight console.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameter names and override values that you want to use. An
    #   analysis can have any parameter type, and some parameters might
    #   accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] source_entity
    #   A source entity to use for the analysis that you're updating. This
    #   metadata structure contains details that describe a source template
    #   and one or more datasets.
    #   @return [Types::AnalysisSourceEntity]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) for the theme to apply to the
    #   analysis that you're creating. To see the theme in the Amazon
    #   QuickSight console, make sure that you have access to it.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of an analysis.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #   @return [Types::AnalysisDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisRequest AWS API Documentation
    #
    class UpdateAnalysisRequest < Struct.new(
      :aws_account_id,
      :analysis_id,
      :name,
      :parameters,
      :source_entity,
      :theme_arn,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the analysis that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] analysis_id
    #   The ID of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The update status of the last update that was made to the analysis.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateAnalysisResponse AWS API Documentation
    #
    class UpdateAnalysisResponse < Struct.new(
      :arn,
      :analysis_id,
      :update_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard whose permissions you're updating.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   The permissions that you want to grant on this resource.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   The permissions that you want to revoke from this resource.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] grant_link_permissions
    #   Grants link permissions to all users in a defined namespace.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_link_permissions
    #   Revokes link permissions from all users in a defined namespace.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPermissionsRequest AWS API Documentation
    #
    class UpdateDashboardPermissionsRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :grant_permissions,
      :revoke_permissions,
      :grant_link_permissions,
      :revoke_link_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Information about the permissions on the dashboard.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] link_sharing_configuration
    #   Updates the permissions of a shared link to an Amazon QuickSight
    #   dashboard.
    #   @return [Types::LinkSharingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPermissionsResponse AWS API Documentation
    #
    class UpdateDashboardPermissionsResponse < Struct.new(
      :dashboard_arn,
      :dashboard_id,
      :permissions,
      :request_id,
      :status,
      :link_sharing_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] version_number
    #   The version number of the dashboard.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPublishedVersionRequest AWS API Documentation
    #
    class UpdateDashboardPublishedVersionRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_arn
    #   The Amazon Resource Name (ARN) of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardPublishedVersionResponse AWS API Documentation
    #
    class UpdateDashboardPublishedVersionResponse < Struct.new(
      :dashboard_id,
      :dashboard_arn,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   dashboard that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you update the
    #   dashboard. In `SourceEntity`, you specify the type of object you're
    #   using as source. You can only update a dashboard from a template, so
    #   you use a `SourceTemplate` entity. If you need to update a dashboard
    #   from an analysis, first convert the analysis to a template by using
    #   the ` CreateTemplate ` API operation. For `SourceTemplate`, specify
    #   the Amazon Resource Name (ARN) of the source template. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` to list
    #   the replacement datasets for the placeholders listed in the
    #   original. The schema in each dataset must match its placeholder.
    #   @return [Types::DashboardSourceEntity]
    #
    # @!attribute [rw] parameters
    #   A structure that contains the parameters of the dashboard. These are
    #   parameter overrides for a dashboard. A dashboard can have any type
    #   of parameters, and some parameters might accept multiple values.
    #   @return [Types::Parameters]
    #
    # @!attribute [rw] version_description
    #   A description for the first version of the dashboard being created.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_publish_options
    #   Options for publishing the dashboard when you create it:
    #
    #   * `AvailabilityStatus` for `AdHocFilteringOption` - This status can
    #     be either `ENABLED` or `DISABLED`. When this is set to `DISABLED`,
    #     Amazon QuickSight disables the left filter pane on the published
    #     dashboard, which can be used for ad hoc (one-time) filtering. This
    #     option is `ENABLED` by default.
    #
    #   * `AvailabilityStatus` for `ExportToCSVOption` - This status can be
    #     either `ENABLED` or `DISABLED`. The visual option to export data
    #     to .CSV format isn't enabled when this is set to `DISABLED`. This
    #     option is `ENABLED` by default.
    #
    #   * `VisibilityState` for `SheetControlsOption` - This visibility
    #     state can be either `COLLAPSED` or `EXPANDED`. This option is
    #     `COLLAPSED` by default.
    #   @return [Types::DashboardPublishOptions]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme that is being used for
    #   this dashboard. If you add a value for this field, it overrides the
    #   value that was originally associated with the entity. The theme ARN
    #   must exist in the same Amazon Web Services account where you create
    #   the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of a dashboard.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #   @return [Types::DashboardVersionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardRequest AWS API Documentation
    #
    class UpdateDashboardRequest < Struct.new(
      :aws_account_id,
      :dashboard_id,
      :name,
      :source_entity,
      :parameters,
      :version_description,
      :dashboard_publish_options,
      :theme_arn,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN of the dashboard, including the version number.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_id
    #   The ID for the dashboard.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of the request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDashboardResponse AWS API Documentation
    #
    class UpdateDashboardResponse < Struct.new(
      :arn,
      :version_arn,
      :dashboard_id,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset whose permissions you want to update. This ID
    #   is unique per Amazon Web Services Region for each Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   The resource permissions that you want to grant to the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   The resource permissions that you want to revoke from the dataset.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetPermissionsRequest AWS API Documentation
    #
    class UpdateDataSetPermissionsRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset whose permissions you want to update. This ID
    #   is unique per Amazon Web Services Region for each Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetPermissionsResponse AWS API Documentation
    #
    class UpdateDataSetPermissionsResponse < Struct.new(
      :data_set_arn,
      :data_set_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to update. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the dataset.
    #   @return [String]
    #
    # @!attribute [rw] physical_table_map
    #   Declares the physical tables that are available in the underlying
    #   data sources.
    #   @return [Hash<String,Types::PhysicalTable>]
    #
    # @!attribute [rw] logical_table_map
    #   Configures the combination and transformation of the data from the
    #   physical tables.
    #   @return [Hash<String,Types::LogicalTable>]
    #
    # @!attribute [rw] import_mode
    #   Indicates whether you want to import the data into SPICE.
    #   @return [String]
    #
    # @!attribute [rw] column_groups
    #   Groupings of columns that work together in certain Amazon QuickSight
    #   features. Currently, only geospatial hierarchy is supported.
    #   @return [Array<Types::ColumnGroup>]
    #
    # @!attribute [rw] field_folders
    #   The folder that contains fields and nested subfolders for your
    #   dataset.
    #   @return [Hash<String,Types::FieldFolder>]
    #
    # @!attribute [rw] row_level_permission_data_set
    #   The row-level security configuration for the data you want to
    #   create.
    #   @return [Types::RowLevelPermissionDataSet]
    #
    # @!attribute [rw] row_level_permission_tag_configuration
    #   The configuration of tags on a dataset to set row-level security.
    #   Row-level security tags are currently supported for anonymous
    #   embedding only.
    #   @return [Types::RowLevelPermissionTagConfiguration]
    #
    # @!attribute [rw] column_level_permission_rules
    #   A set of one or more definitions of a ` ColumnLevelPermissionRule `.
    #   @return [Array<Types::ColumnLevelPermissionRule>]
    #
    # @!attribute [rw] data_set_usage_configuration
    #   The usage configuration to apply to child datasets that reference
    #   this dataset as a source.
    #   @return [Types::DataSetUsageConfiguration]
    #
    # @!attribute [rw] dataset_parameters
    #   The parameter declarations of the dataset.
    #   @return [Array<Types::DatasetParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetRequest AWS API Documentation
    #
    class UpdateDataSetRequest < Struct.new(
      :aws_account_id,
      :data_set_id,
      :name,
      :physical_table_map,
      :logical_table_map,
      :import_mode,
      :column_groups,
      :field_folders,
      :row_level_permission_data_set,
      :row_level_permission_tag_configuration,
      :column_level_permission_rules,
      :data_set_usage_configuration,
      :dataset_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] data_set_id
    #   The ID for the dataset that you want to create. This ID is unique
    #   per Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_arn
    #   The ARN for the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] ingestion_id
    #   The ID of the ingestion, which is triggered as a result of dataset
    #   creation if the import mode is SPICE.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSetResponse AWS API Documentation
    #
    class UpdateDataSetResponse < Struct.new(
      :arn,
      :data_set_id,
      :ingestion_arn,
      :ingestion_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A list of resource permissions that you want to grant on the data
    #   source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A list of resource permissions that you want to revoke on the data
    #   source.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourcePermissionsRequest AWS API Documentation
    #
    class UpdateDataSourcePermissionsRequest < Struct.new(
      :aws_account_id,
      :data_source_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourcePermissionsResponse AWS API Documentation
    #
    class UpdateDataSourcePermissionsResponse < Struct.new(
      :data_source_arn,
      :data_source_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A display name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_parameters
    #   The parameters that Amazon QuickSight uses to connect to your
    #   underlying source.
    #   @return [Types::DataSourceParameters]
    #
    # @!attribute [rw] credentials
    #   The credentials that Amazon QuickSight that uses to connect to your
    #   underlying source. Currently, only credentials based on user name
    #   and password are supported.
    #   @return [Types::DataSourceCredentials]
    #
    # @!attribute [rw] vpc_connection_properties
    #   Use this parameter only when you want Amazon QuickSight to use a VPC
    #   connection when connecting to your underlying source.
    #   @return [Types::VpcConnectionProperties]
    #
    # @!attribute [rw] ssl_properties
    #   Secure Socket Layer (SSL) properties that apply when Amazon
    #   QuickSight connects to your underlying source.
    #   @return [Types::SslProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourceRequest AWS API Documentation
    #
    class UpdateDataSourceRequest < Struct.new(
      :aws_account_id,
      :data_source_id,
      :name,
      :data_source_parameters,
      :credentials,
      :vpc_connection_properties,
      :ssl_properties)
      SENSITIVE = [:credentials]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The ID of the data source. This ID is unique per Amazon Web Services
    #   Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The update status of the data source's last update.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Struct.new(
      :arn,
      :data_source_id,
      :update_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   The permissions that you want to grant on a resource.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   The permissions that you want to revoke from a resource.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolderPermissionsRequest AWS API Documentation
    #
    class UpdateFolderPermissionsRequest < Struct.new(
      :aws_account_id,
      :folder_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   Information about the permissions for the folder.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolderPermissionsResponse AWS API Documentation
    #
    class UpdateFolderPermissionsResponse < Struct.new(
      :status,
      :arn,
      :folder_id,
      :permissions,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that contains the folder
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolderRequest AWS API Documentation
    #
    class UpdateFolderRequest < Struct.new(
      :aws_account_id,
      :folder_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the folder.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateFolderResponse AWS API Documentation
    #
    class UpdateFolderResponse < Struct.new(
      :status,
      :arn,
      :folder_id,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_name
    #   The name of the group that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the group that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the group is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the group that you want to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :description,
      :aws_account_id,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group
    #   The name of the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateGroupResponse AWS API Documentation
    #
    class UpdateGroupResponse < Struct.new(
      :group,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the IAM
    #   policy assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_name
    #   The name of the assignment, also called a rule. The name must be
    #   unique within the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy to apply to the Amazon QuickSight users
    #   and groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The Amazon QuickSight users, groups, or both that you want to assign
    #   the policy to.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIAMPolicyAssignmentRequest AWS API Documentation
    #
    class UpdateIAMPolicyAssignmentRequest < Struct.new(
      :aws_account_id,
      :assignment_name,
      :namespace,
      :assignment_status,
      :policy_arn,
      :identities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assignment_name
    #   The name of the assignment or rule.
    #   @return [String]
    #
    # @!attribute [rw] assignment_id
    #   The ID of the assignment.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN for the IAM policy applied to the Amazon QuickSight users
    #   and groups specified in this assignment.
    #   @return [String]
    #
    # @!attribute [rw] identities
    #   The Amazon QuickSight users, groups, or both that the IAM policy is
    #   assigned to.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] assignment_status
    #   The status of the assignment. Possible values are as follows:
    #
    #   * `ENABLED` - Anything specified in this assignment is used when
    #     creating the data source.
    #
    #   * `DISABLED` - This assignment isn't used when creating the data
    #     source.
    #
    #   * `DRAFT` - This assignment is an unfinished draft and isn't used
    #     when creating the data source.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIAMPolicyAssignmentResponse AWS API Documentation
    #
    class UpdateIAMPolicyAssignmentResponse < Struct.new(
      :assignment_name,
      :assignment_id,
      :policy_arn,
      :identities,
      :assignment_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP
    #   rules.
    #   @return [String]
    #
    # @!attribute [rw] ip_restriction_rule_map
    #   A map that describes the updated IP rules with CIDR ranges and
    #   descriptions.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enabled
    #   A value that specifies whether IP rules are turned on.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIpRestrictionRequest AWS API Documentation
    #
    class UpdateIpRestrictionRequest < Struct.new(
      :aws_account_id,
      :ip_restriction_rule_map,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the IP
    #   rules.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateIpRestrictionResponse AWS API Documentation
    #
    class UpdateIpRestrictionResponse < Struct.new(
      :aws_account_id,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID associated with your Amazon
    #   QuickSight subscription.
    #   @return [String]
    #
    # @!attribute [rw] public_sharing_enabled
    #   A Boolean value that indicates whether public sharing is turned on
    #   for an Amazon QuickSight account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdatePublicSharingSettingsRequest AWS API Documentation
    #
    class UpdatePublicSharingSettingsRequest < Struct.new(
      :aws_account_id,
      :public_sharing_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdatePublicSharingSettingsResponse AWS API Documentation
    #
    class UpdatePublicSharingSettingsResponse < Struct.new(
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The refresh schedule.
    #   @return [Types::RefreshSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateRefreshScheduleRequest AWS API Documentation
    #
    class UpdateRefreshScheduleRequest < Struct.new(
      :data_set_id,
      :aws_account_id,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] schedule_id
    #   The ID of the refresh schedule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the refresh schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateRefreshScheduleResponse AWS API Documentation
    #
    class UpdateRefreshScheduleResponse < Struct.new(
      :status,
      :request_id,
      :schedule_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   alias that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The alias of the template that you want to update. If you name a
    #   specific alias, you update the version that the alias points to. You
    #   can specify the latest version of the template by providing the
    #   keyword `$LATEST` in the `AliasName` parameter. The keyword
    #   `$PUBLISHED` doesn't apply to templates.
    #   @return [String]
    #
    # @!attribute [rw] template_version_number
    #   The version number of the template.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateAliasRequest AWS API Documentation
    #
    class UpdateTemplateAliasRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :alias_name,
      :template_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_alias
    #   The template alias.
    #   @return [Types::TemplateAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateAliasResponse AWS API Documentation
    #
    class UpdateTemplateAliasResponse < Struct.new(
      :template_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A list of resource permissions to be granted on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A list of resource permissions to be revoked from the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplatePermissionsRequest AWS API Documentation
    #
    class UpdateTemplatePermissionsRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions to be set on the template.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplatePermissionsResponse AWS API Documentation
    #
    class UpdateTemplatePermissionsResponse < Struct.new(
      :template_id,
      :template_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the template
    #   that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] source_entity
    #   The entity that you are using as a source when you update the
    #   template. In `SourceEntity`, you specify the type of object you're
    #   using as source: `SourceTemplate` for a template or `SourceAnalysis`
    #   for an analysis. Both of these require an Amazon Resource Name
    #   (ARN). For `SourceTemplate`, specify the ARN of the source template.
    #   For `SourceAnalysis`, specify the ARN of the source analysis. The
    #   `SourceTemplate` ARN can contain any Amazon Web Services account and
    #   any Amazon QuickSight-supported Amazon Web Services Region;.
    #
    #   Use the `DataSetReferences` entity within `SourceTemplate` or
    #   `SourceAnalysis` to list the replacement datasets for the
    #   placeholders listed in the original. The schema in each dataset must
    #   match its placeholder.
    #   @return [Types::TemplateSourceEntity]
    #
    # @!attribute [rw] version_description
    #   A description of the current template version that is being updated.
    #   Every time you call `UpdateTemplate`, you create a new version of
    #   the template. Each version of the template maintains a description
    #   of the version in the `VersionDescription` field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the template.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The definition of a template.
    #
    #   A definition is the data model of all features in a Dashboard,
    #   Template, or Analysis.
    #   @return [Types::TemplateVersionDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateRequest AWS API Documentation
    #
    class UpdateTemplateRequest < Struct.new(
      :aws_account_id,
      :template_id,
      :source_entity,
      :version_description,
      :name,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The ID for the template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the template.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The ARN for the template, including the version information of the
    #   first version.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTemplateResponse AWS API Documentation
    #
    class UpdateTemplateResponse < Struct.new(
      :template_id,
      :arn,
      :version_arn,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   alias that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] alias_name
    #   The name of the theme alias that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] theme_version_number
    #   The version number of the theme that the alias should reference.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeAliasRequest AWS API Documentation
    #
    class UpdateThemeAliasRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :alias_name,
      :theme_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_alias
    #   Information about the theme alias.
    #   @return [Types::ThemeAlias]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeAliasResponse AWS API Documentation
    #
    class UpdateThemeAliasResponse < Struct.new(
      :theme_alias,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   A list of resource permissions to be granted for the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   A list of resource permissions to be revoked from the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemePermissionsRequest AWS API Documentation
    #
    class UpdateThemePermissionsRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] theme_arn
    #   The Amazon Resource Name (ARN) of the theme.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   The resulting list of resource permissions for the theme.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemePermissionsResponse AWS API Documentation
    #
    class UpdateThemePermissionsResponse < Struct.new(
      :theme_id,
      :theme_arn,
      :permissions,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the theme
    #   that you're updating.
    #   @return [String]
    #
    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the theme.
    #   @return [String]
    #
    # @!attribute [rw] base_theme_id
    #   The theme ID, defined by Amazon QuickSight, that a custom theme
    #   inherits from. All themes initially inherit from a default Amazon
    #   QuickSight theme.
    #   @return [String]
    #
    # @!attribute [rw] version_description
    #   A description of the theme version that you're updating Every time
    #   that you call `UpdateTheme`, you create a new version of the theme.
    #   Each version of the theme maintains a description of the version in
    #   `VersionDescription`.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The theme configuration, which contains the theme display
    #   properties.
    #   @return [Types::ThemeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeRequest AWS API Documentation
    #
    class UpdateThemeRequest < Struct.new(
      :aws_account_id,
      :theme_id,
      :name,
      :base_theme_id,
      :version_description,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] theme_id
    #   The ID for the theme.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the theme.
    #   @return [String]
    #
    # @!attribute [rw] version_arn
    #   The Amazon Resource Name (ARN) for the new version of the theme.
    #   @return [String]
    #
    # @!attribute [rw] creation_status
    #   The creation status of the theme.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateThemeResponse AWS API Documentation
    #
    class UpdateThemeResponse < Struct.new(
      :theme_id,
      :arn,
      :version_arn,
      :creation_status,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   that you want to update the permissions for.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] grant_permissions
    #   The resource permissions that you want to grant to the topic.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] revoke_permissions
    #   The resource permissions that you want to revoke from the topic.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicPermissionsRequest AWS API Documentation
    #
    class UpdateTopicPermissionsRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :grant_permissions,
      :revoke_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] permissions
    #   A list of resource permissions on the topic.
    #   @return [Array<Types::ResourcePermission>]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicPermissionsResponse AWS API Documentation
    #
    class UpdateTopicPermissionsResponse < Struct.new(
      :topic_id,
      :topic_arn,
      :permissions,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   whose refresh schedule you want to update.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The ID of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] refresh_schedule
    #   The definition of a refresh schedule.
    #   @return [Types::TopicRefreshSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicRefreshScheduleRequest AWS API Documentation
    #
    class UpdateTopicRefreshScheduleRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :dataset_id,
      :refresh_schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicRefreshScheduleResponse AWS API Documentation
    #
    class UpdateTopicRefreshScheduleResponse < Struct.new(
      :topic_id,
      :topic_arn,
      :dataset_arn,
      :status,
      :request_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The ID of the Amazon Web Services account that contains the topic
    #   that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] topic
    #   The definition of the topic that you want to update.
    #   @return [Types::TopicDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicRequest AWS API Documentation
    #
    class UpdateTopicRequest < Struct.new(
      :aws_account_id,
      :topic_id,
      :topic)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topic_id
    #   The ID of the topic that you want to modify. This ID is unique per
    #   Amazon Web Services Region for each Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the topic.
    #   @return [String]
    #
    # @!attribute [rw] refresh_arn
    #   The Amazon Resource Name (ARN) of the topic refresh.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateTopicResponse AWS API Documentation
    #
    class UpdateTopicResponse < Struct.new(
      :topic_id,
      :arn,
      :refresh_arn,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The Amazon QuickSight user name that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID for the Amazon Web Services account that the user is in.
    #   Currently, you use the ID for the Amazon Web Services account that
    #   contains your Amazon QuickSight account.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace. Currently, you should set this to `default`.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the user that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon QuickSight role of the user. The role can be one of the
    #   following default security cohorts:
    #
    #   * `READER`: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`: A user who is an author, who can also manage Amazon
    #     QuickSight settings.
    #
    #   The name of the Amazon QuickSight role is invisible to the user
    #   except for the console screens dealing with permissions.
    #   @return [String]
    #
    # @!attribute [rw] custom_permissions_name
    #   (Enterprise edition only) The name of the custom permissions profile
    #   that you want to assign to this user. Customized permissions allows
    #   you to control a user's access by restricting access the following
    #   operations:
    #
    #   * Create and update data sources
    #
    #   * Create and update datasets
    #
    #   * Create and update email reports
    #
    #   * Subscribe to email reports
    #
    #   A set of custom permissions includes any combination of these
    #   restrictions. Currently, you need to create the profile names for
    #   custom permission sets by using the Amazon QuickSight console. Then,
    #   you use the `RegisterUser` API operation to assign the named set of
    #   permissions to a Amazon QuickSight user.
    #
    #   Amazon QuickSight custom permissions are applied through IAM
    #   policies. Therefore, they override the permissions typically granted
    #   by assigning Amazon QuickSight users to one of the default security
    #   cohorts in Amazon QuickSight (admin, author, reader).
    #
    #   This feature is available only to Amazon QuickSight Enterprise
    #   edition subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] unapply_custom_permissions
    #   A flag that you use to indicate that you want to remove all custom
    #   permissions from this user. Using this parameter resets the user to
    #   the state it was in before a custom permissions profile was applied.
    #   This parameter defaults to NULL and it doesn't accept any other
    #   value.
    #   @return [Boolean]
    #
    # @!attribute [rw] external_login_federation_provider_type
    #   The type of supported external login provider that provides identity
    #   to let a user federate into Amazon QuickSight with an associated
    #   Identity and Access Management(IAM) role. The type of supported
    #   external login provider can be one of the following.
    #
    #   * `COGNITO`: Amazon Cognito. The provider URL is
    #     cognito-identity.amazonaws.com. When choosing the `COGNITO`
    #     provider type, don’t use the "CustomFederationProviderUrl"
    #     parameter which is only needed when the external provider is
    #     custom.
    #
    #   * `CUSTOM_OIDC`: Custom OpenID Connect (OIDC) provider. When
    #     choosing `CUSTOM_OIDC` type, use the `CustomFederationProviderUrl`
    #     parameter to provide the custom OIDC provider URL.
    #
    #   * `NONE`: This clears all the previously saved external login
    #     information for a user. Use the ` DescribeUser ` API operation to
    #     check the external login information.
    #   @return [String]
    #
    # @!attribute [rw] custom_federation_provider_url
    #   The URL of the custom OpenID Connect (OIDC) provider that provides
    #   identity to let a user federate into Amazon QuickSight with an
    #   associated Identity and Access Management(IAM) role. This parameter
    #   should only be used when `ExternalLoginFederationProviderType`
    #   parameter is set to `CUSTOM_OIDC`.
    #   @return [String]
    #
    # @!attribute [rw] external_login_id
    #   The identity ID for a user in the external login provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :user_name,
      :aws_account_id,
      :namespace,
      :email,
      :role,
      :custom_permissions_name,
      :unapply_custom_permissions,
      :external_login_federation_provider_type,
      :custom_federation_provider_url,
      :external_login_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The Amazon QuickSight user.
    #   @return [Types::User]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID of the account that contains the
    #   VPC connection that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you're updating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs for the VPC connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs for the VPC connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   An IAM role associated with the VPC connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateVPCConnectionRequest AWS API Documentation
    #
    class UpdateVPCConnectionRequest < Struct.new(
      :aws_account_id,
      :vpc_connection_id,
      :name,
      :subnet_ids,
      :security_group_ids,
      :dns_resolvers,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you are updating. This ID is a
    #   unique identifier for each Amazon Web Services Region in anAmazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The update status of the VPC connection's last update.
    #   @return [String]
    #
    # @!attribute [rw] availability_status
    #   The availability status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] request_id
    #   The Amazon Web Services request ID for this operation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The HTTP status of the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UpdateVPCConnectionResponse AWS API Documentation
    #
    class UpdateVPCConnectionResponse < Struct.new(
      :arn,
      :vpc_connection_id,
      :update_status,
      :availability_status,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the format for a source file or files.
    #
    # @!attribute [rw] format
    #   File format.
    #   @return [String]
    #
    # @!attribute [rw] start_from_row
    #   A row number to start reading data from.
    #   @return [Integer]
    #
    # @!attribute [rw] contains_header
    #   Whether the file has a header row, or the files each have a header
    #   row.
    #   @return [Boolean]
    #
    # @!attribute [rw] text_qualifier
    #   Text qualifier.
    #   @return [String]
    #
    # @!attribute [rw] delimiter
    #   The delimiter between values in the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/UploadSettings AWS API Documentation
    #
    class UploadSettings < Struct.new(
      :format,
      :start_from_row,
      :contains_header,
      :text_qualifier,
      :delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # A registered user of Amazon QuickSight.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user's user name. This value is required if you are registering
    #   a user that will be managed in Amazon QuickSight. In the output, the
    #   value for `UserName` is `N/A` when the value for `IdentityType` is
    #   `IAM` and the corresponding IAM user is deleted.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The user's email address.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The Amazon QuickSight role for the user. The user role can be one of
    #   the following:.
    #
    #   * `READER`: A user who has read-only access to dashboards.
    #
    #   * `AUTHOR`: A user who can create data sources, datasets, analyses,
    #     and dashboards.
    #
    #   * `ADMIN`: A user who is an author, who can also manage Amazon
    #     Amazon QuickSight settings.
    #
    #   * `RESTRICTED_READER`: This role isn't currently available for use.
    #
    #   * `RESTRICTED_AUTHOR`: This role isn't currently available for use.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The type of identity authentication used by the user.
    #   @return [String]
    #
    # @!attribute [rw] active
    #   The active status of user. When you create an Amazon QuickSight user
    #   that's not an IAM user or an Active Directory user, that user is
    #   inactive until they sign in and provide a password.
    #   @return [Boolean]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] custom_permissions_name
    #   The custom permissions profile associated with this user.
    #   @return [String]
    #
    # @!attribute [rw] external_login_federation_provider_type
    #   The type of supported external login provider that provides identity
    #   to let the user federate into Amazon QuickSight with an associated
    #   IAM role. The type can be one of the following.
    #
    #   * `COGNITO`: Amazon Cognito. The provider URL is
    #     cognito-identity.amazonaws.com.
    #
    #   * `CUSTOM_OIDC`: Custom OpenID Connect (OIDC) provider.
    #   @return [String]
    #
    # @!attribute [rw] external_login_federation_provider_url
    #   The URL of the external login provider.
    #   @return [String]
    #
    # @!attribute [rw] external_login_id
    #   The identity ID for the user in the external login provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/User AWS API Documentation
    #
    class User < Struct.new(
      :arn,
      :user_name,
      :email,
      :role,
      :identity_type,
      :active,
      :principal_id,
      :custom_permissions_name,
      :external_login_federation_provider_type,
      :external_login_federation_provider_url,
      :external_login_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of a VPC connection.
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Amazon EC2 VPC ID associated with the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The Amazon EC2 security group IDs associated with the VPC
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] availability_status
    #   The availability status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   A list of network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role associated with the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the VPC connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the VPC connection was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VPCConnection AWS API Documentation
    #
    class VPCConnection < Struct.new(
      :vpc_connection_id,
      :arn,
      :name,
      :vpc_id,
      :security_group_ids,
      :dns_resolvers,
      :status,
      :availability_status,
      :network_interfaces,
      :role_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary metadata that describes a VPC connection.
    #
    # @!attribute [rw] vpc_connection_id
    #   The ID of the VPC connection that you're creating. This ID is a
    #   unique identifier for each Amazon Web Services Region in an Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Amazon EC2 VPC ID associated with the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The Amazon EC2 security group IDs associated with the VPC
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dns_resolvers
    #   A list of IP addresses of DNS resolver endpoints for the VPC
    #   connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] availability_status
    #   The availability status of the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] network_interfaces
    #   A list of network interfaces.
    #   @return [Array<Types::NetworkInterface>]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role associated with the VPC connection.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time that the VPC connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The time that the VPC connection was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VPCConnectionSummary AWS API Documentation
    #
    class VPCConnectionSummary < Struct.new(
      :vpc_connection_id,
      :arn,
      :name,
      :vpc_id,
      :security_group_ids,
      :dns_resolvers,
      :status,
      :availability_status,
      :network_interfaces,
      :role_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The range options for the data zoom scroll bar.
    #
    # @!attribute [rw] percent_range
    #   The percent range in the visible range.
    #   @return [Types::PercentVisibleRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisibleRangeOptions AWS API Documentation
    #
    class VisibleRangeOptions < Struct.new(
      :percent_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # A visual displayed on a sheet in an analysis, dashboard, or template.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] table_visual
    #   A table visual.
    #
    #   For more information, see [Using tables as visuals][1] in the
    #   *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/tabular.html
    #   @return [Types::TableVisual]
    #
    # @!attribute [rw] pivot_table_visual
    #   A pivot table.
    #
    #   For more information, see [Using pivot tables][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/pivot-table.html
    #   @return [Types::PivotTableVisual]
    #
    # @!attribute [rw] bar_chart_visual
    #   A bar chart.
    #
    #   For more information, see [Using bar charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/bar-charts.html
    #   @return [Types::BarChartVisual]
    #
    # @!attribute [rw] kpi_visual
    #   A key performance indicator (KPI).
    #
    #   For more information, see [Using KPIs][1] in the *Amazon QuickSight
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/kpi.html
    #   @return [Types::KPIVisual]
    #
    # @!attribute [rw] pie_chart_visual
    #   A pie or donut chart.
    #
    #   For more information, see [Using pie charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/pie-chart.html
    #   @return [Types::PieChartVisual]
    #
    # @!attribute [rw] gauge_chart_visual
    #   A gauge chart.
    #
    #   For more information, see [Using gauge charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/gauge-chart.html
    #   @return [Types::GaugeChartVisual]
    #
    # @!attribute [rw] line_chart_visual
    #   A line chart.
    #
    #   For more information, see [Using line charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/line-charts.html
    #   @return [Types::LineChartVisual]
    #
    # @!attribute [rw] heat_map_visual
    #   A heat map.
    #
    #   For more information, see [Using heat maps][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/heat-map.html
    #   @return [Types::HeatMapVisual]
    #
    # @!attribute [rw] tree_map_visual
    #   A tree map.
    #
    #   For more information, see [Using tree maps][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/tree-map.html
    #   @return [Types::TreeMapVisual]
    #
    # @!attribute [rw] geospatial_map_visual
    #   A geospatial map or a points on map visual.
    #
    #   For more information, see [Creating point maps][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/point-maps.html
    #   @return [Types::GeospatialMapVisual]
    #
    # @!attribute [rw] filled_map_visual
    #   A filled map.
    #
    #   For more information, see [Creating filled maps][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/filled-maps.html
    #   @return [Types::FilledMapVisual]
    #
    # @!attribute [rw] funnel_chart_visual
    #   A funnel chart.
    #
    #   For more information, see [Using funnel charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/funnel-visual-content.html
    #   @return [Types::FunnelChartVisual]
    #
    # @!attribute [rw] scatter_plot_visual
    #   A scatter plot.
    #
    #   For more information, see [Using scatter plots][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/scatter-plot.html
    #   @return [Types::ScatterPlotVisual]
    #
    # @!attribute [rw] combo_chart_visual
    #   A combo chart.
    #
    #   For more information, see [Using combo charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/combo-charts.html
    #   @return [Types::ComboChartVisual]
    #
    # @!attribute [rw] box_plot_visual
    #   A box plot.
    #
    #   For more information, see [Using box plots][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/box-plots.html
    #   @return [Types::BoxPlotVisual]
    #
    # @!attribute [rw] waterfall_visual
    #   A waterfall chart.
    #
    #   For more information, see [Using waterfall charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/waterfall-chart.html
    #   @return [Types::WaterfallVisual]
    #
    # @!attribute [rw] histogram_visual
    #   A histogram.
    #
    #   For more information, see [Using histograms][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/histogram-charts.html
    #   @return [Types::HistogramVisual]
    #
    # @!attribute [rw] word_cloud_visual
    #   A word cloud.
    #
    #   For more information, see [Using word clouds][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/word-cloud.html
    #   @return [Types::WordCloudVisual]
    #
    # @!attribute [rw] insight_visual
    #   An insight visual.
    #
    #   For more information, see [Working with insights][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/computational-insights.html
    #   @return [Types::InsightVisual]
    #
    # @!attribute [rw] sankey_diagram_visual
    #   A sankey diagram.
    #
    #   For more information, see [Using Sankey diagrams][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/sankey-diagram.html
    #   @return [Types::SankeyDiagramVisual]
    #
    # @!attribute [rw] custom_content_visual
    #   A visual that contains custom content.
    #
    #   For more information, see [Using custom visual content][1] in the
    #   *Amazon QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/custom-visual-content.html
    #   @return [Types::CustomContentVisual]
    #
    # @!attribute [rw] empty_visual
    #   An empty visual.
    #   @return [Types::EmptyVisual]
    #
    # @!attribute [rw] radar_chart_visual
    #   A radar chart visual.
    #
    #   For more information, see [Using radar charts][1] in the *Amazon
    #   QuickSight User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/user/radar-chart.html
    #   @return [Types::RadarChartVisual]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/Visual AWS API Documentation
    #
    class Visual < Struct.new(
      :table_visual,
      :pivot_table_visual,
      :bar_chart_visual,
      :kpi_visual,
      :pie_chart_visual,
      :gauge_chart_visual,
      :line_chart_visual,
      :heat_map_visual,
      :tree_map_visual,
      :geospatial_map_visual,
      :filled_map_visual,
      :funnel_chart_visual,
      :scatter_plot_visual,
      :combo_chart_visual,
      :box_plot_visual,
      :waterfall_visual,
      :histogram_visual,
      :word_cloud_visual,
      :insight_visual,
      :sankey_diagram_visual,
      :custom_content_visual,
      :empty_visual,
      :radar_chart_visual)
      SENSITIVE = []
      include Aws::Structure
    end

    # The axis sort options for a visual.
    #
    # @!attribute [rw] availability_status
    #   The availaiblity status of a visual's axis sort options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisualAxisSortOption AWS API Documentation
    #
    class VisualAxisSortOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom action defined on a visual.
    #
    # @!attribute [rw] custom_action_id
    #   The ID of the `VisualCustomAction`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `VisualCustomAction`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the `VisualCustomAction`.
    #   @return [String]
    #
    # @!attribute [rw] trigger
    #   The trigger of the `VisualCustomAction`.
    #
    #   Valid values are defined as follows:
    #
    #   * `DATA_POINT_CLICK`: Initiates a custom action by a left pointer
    #     click on a data point.
    #
    #   * `DATA_POINT_MENU`: Initiates a custom action by right pointer
    #     click from the menu.
    #   @return [String]
    #
    # @!attribute [rw] action_operations
    #   A list of `VisualCustomActionOperations`.
    #
    #   This is a union type structure. For this structure to be valid, only
    #   one of the attributes can be defined.
    #   @return [Array<Types::VisualCustomActionOperation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisualCustomAction AWS API Documentation
    #
    class VisualCustomAction < Struct.new(
      :custom_action_id,
      :name,
      :status,
      :trigger,
      :action_operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation that is defined by the custom action.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] filter_operation
    #   The filter operation that filters data included in a visual or in an
    #   entire sheet.
    #   @return [Types::CustomActionFilterOperation]
    #
    # @!attribute [rw] navigation_operation
    #   The navigation operation that navigates between different sheets in
    #   the same analysis.
    #   @return [Types::CustomActionNavigationOperation]
    #
    # @!attribute [rw] url_operation
    #   The URL operation that opens a link to another webpage.
    #   @return [Types::CustomActionURLOperation]
    #
    # @!attribute [rw] set_parameters_operation
    #   The set parameter operation that sets parameters in custom action.
    #   @return [Types::CustomActionSetParametersOperation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisualCustomActionOperation AWS API Documentation
    #
    class VisualCustomActionOperation < Struct.new(
      :filter_operation,
      :navigation_operation,
      :url_operation,
      :set_parameters_operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # The menu options for a visual.
    #
    # @!attribute [rw] availability_status
    #   The availaiblity status of a visual's menu options.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisualMenuOption AWS API Documentation
    #
    class VisualMenuOption < Struct.new(
      :availability_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The visual display options for the visual palette.
    #
    # @!attribute [rw] chart_color
    #   The chart color options for the visual palette.
    #   @return [String]
    #
    # @!attribute [rw] color_map
    #   The color map options for the visual palette.
    #   @return [Array<Types::DataPathColor>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisualPalette AWS API Documentation
    #
    class VisualPalette < Struct.new(
      :chart_color,
      :color_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The subtitle label options for a visual.
    #
    # @!attribute [rw] visibility
    #   The visibility of the subtitle label.
    #   @return [String]
    #
    # @!attribute [rw] format_text
    #   The long text format of the subtitle label, such as plain text or
    #   rich text.
    #   @return [Types::LongFormatText]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisualSubtitleLabelOptions AWS API Documentation
    #
    class VisualSubtitleLabelOptions < Struct.new(
      :visibility,
      :format_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The title label options for a visual.
    #
    # @!attribute [rw] visibility
    #   The visibility of the title label.
    #   @return [String]
    #
    # @!attribute [rw] format_text
    #   The short text format of the title label, such as plain text or rich
    #   text.
    #   @return [Types::ShortFormatText]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VisualTitleLabelOptions AWS API Documentation
    #
    class VisualTitleLabelOptions < Struct.new(
      :visibility,
      :format_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # VPC connection properties.
    #
    # @!attribute [rw] vpc_connection_arn
    #   The Amazon Resource Name (ARN) for the VPC connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/VpcConnectionProperties AWS API Documentation
    #
    class VpcConnectionProperties < Struct.new(
      :vpc_connection_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a waterfall visual.
    #
    # @!attribute [rw] categories
    #   The category field wells of a waterfall visual.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] values
    #   The value field wells of a waterfall visual.
    #   @return [Array<Types::MeasureField>]
    #
    # @!attribute [rw] breakdowns
    #   The breakdown field wells of a waterfall visual.
    #   @return [Array<Types::DimensionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WaterfallChartAggregatedFieldWells AWS API Documentation
    #
    class WaterfallChartAggregatedFieldWells < Struct.new(
      :categories,
      :values,
      :breakdowns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a waterfall visual.
    #
    # @!attribute [rw] field_wells
    #   The field well configuration of a waterfall visual.
    #   @return [Types::WaterfallChartFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a waterfall visual.
    #   @return [Types::WaterfallChartSortConfiguration]
    #
    # @!attribute [rw] waterfall_chart_options
    #   The options that determine the presentation of a waterfall visual.
    #   @return [Types::WaterfallChartOptions]
    #
    # @!attribute [rw] category_axis_label_options
    #   The options that determine the presentation of the category axis
    #   label.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] category_axis_display_options
    #   The options that determine the presentation of the category axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] primary_y_axis_label_options
    #   The options that determine the presentation of the y-axis label.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] primary_y_axis_display_options
    #   The options that determine the presentation of the y-axis.
    #   @return [Types::AxisDisplayOptions]
    #
    # @!attribute [rw] legend
    #   The legend configuration of a waterfall visual.
    #   @return [Types::LegendOptions]
    #
    # @!attribute [rw] data_labels
    #   The data label configuration of a waterfall visual.
    #   @return [Types::DataLabelOptions]
    #
    # @!attribute [rw] visual_palette
    #   The visual palette configuration of a waterfall visual.
    #   @return [Types::VisualPalette]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WaterfallChartConfiguration AWS API Documentation
    #
    class WaterfallChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :waterfall_chart_options,
      :category_axis_label_options,
      :category_axis_display_options,
      :primary_y_axis_label_options,
      :primary_y_axis_display_options,
      :legend,
      :data_labels,
      :visual_palette)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field well configuration of a waterfall visual.
    #
    # @!attribute [rw] waterfall_chart_aggregated_field_wells
    #   The field well configuration of a waterfall visual.
    #   @return [Types::WaterfallChartAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WaterfallChartFieldWells AWS API Documentation
    #
    class WaterfallChartFieldWells < Struct.new(
      :waterfall_chart_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that determine the presentation of a waterfall visual.
    #
    # @!attribute [rw] total_bar_label
    #   This option determines the total bar label of a waterfall visual.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WaterfallChartOptions AWS API Documentation
    #
    class WaterfallChartOptions < Struct.new(
      :total_bar_label)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a waterfall visual.
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of the category fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @!attribute [rw] breakdown_items_limit
    #   The limit on the number of bar groups that are displayed.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WaterfallChartSortConfiguration AWS API Documentation
    #
    class WaterfallChartSortConfiguration < Struct.new(
      :category_sort,
      :breakdown_items_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A waterfall chart.
    #
    # For more information, see [Using waterfall charts][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/waterfall-chart.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration for a waterfall visual.
    #   @return [Types::WaterfallChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WaterfallVisual AWS API Documentation
    #
    class WaterfallVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the forecast to meet the target for a particular date.
    #
    # @!attribute [rw] date
    #   The date that you need the forecast results for.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   The target value that you want to meet for the provided date.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WhatIfPointScenario AWS API Documentation
    #
    class WhatIfPointScenario < Struct.new(
      :date,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the forecast to meet the target for a particular date range.
    #
    # @!attribute [rw] start_date
    #   The start date in the date range that you need the forecast results
    #   for.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The end date in the date range that you need the forecast results
    #   for.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   The target value that you want to meet for the provided date range.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WhatIfRangeScenario AWS API Documentation
    #
    class WhatIfRangeScenario < Struct.new(
      :start_date,
      :end_date,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The aggregated field wells of a word cloud.
    #
    # @!attribute [rw] group_by
    #   The group by field well of a word cloud. Values are grouped by group
    #   by fields.
    #   @return [Array<Types::DimensionField>]
    #
    # @!attribute [rw] size
    #   The size field well of a word cloud. Values are aggregated based on
    #   group by fields.
    #   @return [Array<Types::MeasureField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WordCloudAggregatedFieldWells AWS API Documentation
    #
    class WordCloudAggregatedFieldWells < Struct.new(
      :group_by,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of a word cloud visual.
    #
    # @!attribute [rw] field_wells
    #   The field wells of the visual.
    #   @return [Types::WordCloudFieldWells]
    #
    # @!attribute [rw] sort_configuration
    #   The sort configuration of a word cloud visual.
    #   @return [Types::WordCloudSortConfiguration]
    #
    # @!attribute [rw] category_label_options
    #   The label options (label text, label visibility, and sort icon
    #   visibility) for the word cloud category.
    #   @return [Types::ChartAxisLabelOptions]
    #
    # @!attribute [rw] word_cloud_options
    #   The options for a word cloud visual.
    #   @return [Types::WordCloudOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WordCloudChartConfiguration AWS API Documentation
    #
    class WordCloudChartConfiguration < Struct.new(
      :field_wells,
      :sort_configuration,
      :category_label_options,
      :word_cloud_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The field wells of a word cloud visual.
    #
    # This is a union type structure. For this structure to be valid, only
    # one of the attributes can be defined.
    #
    # @!attribute [rw] word_cloud_aggregated_field_wells
    #   The aggregated field wells of a word cloud.
    #   @return [Types::WordCloudAggregatedFieldWells]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WordCloudFieldWells AWS API Documentation
    #
    class WordCloudFieldWells < Struct.new(
      :word_cloud_aggregated_field_wells)
      SENSITIVE = []
      include Aws::Structure
    end

    # The word cloud options for a word cloud visual.
    #
    # @!attribute [rw] word_orientation
    #   The word orientation options (horizontal, horizontal\_and\_vertical)
    #   for the words in a word cloud.
    #   @return [String]
    #
    # @!attribute [rw] word_scaling
    #   The word scaling options (emphasize, normal) for the words in a word
    #   cloud.
    #   @return [String]
    #
    # @!attribute [rw] cloud_layout
    #   The cloud layout options (fluid, normal) of a word cloud.
    #   @return [String]
    #
    # @!attribute [rw] word_casing
    #   The word casing options (lower\_case, existing\_case) for the words
    #   in a word cloud.
    #   @return [String]
    #
    # @!attribute [rw] word_padding
    #   The word padding options (none, small, medium, large) for the words
    #   in a word cloud.
    #   @return [String]
    #
    # @!attribute [rw] maximum_string_length
    #   The length limit of each word from 1-100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WordCloudOptions AWS API Documentation
    #
    class WordCloudOptions < Struct.new(
      :word_orientation,
      :word_scaling,
      :cloud_layout,
      :word_casing,
      :word_padding,
      :maximum_string_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sort configuration of a word cloud visual.
    #
    # @!attribute [rw] category_items_limit
    #   The limit on the number of groups that are displayed in a word
    #   cloud.
    #   @return [Types::ItemsLimitConfiguration]
    #
    # @!attribute [rw] category_sort
    #   The sort configuration of group by fields.
    #   @return [Array<Types::FieldSortOptions>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WordCloudSortConfiguration AWS API Documentation
    #
    class WordCloudSortConfiguration < Struct.new(
      :category_items_limit,
      :category_sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # A word cloud.
    #
    # For more information, see [Using word clouds][1] in the *Amazon
    # QuickSight User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/quicksight/latest/user/word-cloud.html
    #
    # @!attribute [rw] visual_id
    #   The unique identifier of a visual. This identifier must be unique
    #   within the context of a dashboard, template, or analysis. Two
    #   dashboards, analyses, or templates can have visuals with the same
    #   identifiers..
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title that is displayed on the visual.
    #   @return [Types::VisualTitleLabelOptions]
    #
    # @!attribute [rw] subtitle
    #   The subtitle that is displayed on the visual.
    #   @return [Types::VisualSubtitleLabelOptions]
    #
    # @!attribute [rw] chart_configuration
    #   The configuration settings of the visual.
    #   @return [Types::WordCloudChartConfiguration]
    #
    # @!attribute [rw] actions
    #   The list of custom actions that are configured for a visual.
    #   @return [Array<Types::VisualCustomAction>]
    #
    # @!attribute [rw] column_hierarchies
    #   The column hierarchy that is used during drill-downs and drill-ups.
    #   @return [Array<Types::ColumnHierarchy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/quicksight-2018-04-01/WordCloudVisual AWS API Documentation
    #
    class WordCloudVisual < Struct.new(
      :visual_id,
      :title,
      :subtitle,
      :chart_configuration,
      :actions,
      :column_hierarchies)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
