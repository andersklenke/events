class GraphqlController < ApplicationController
  def query
    context = {}
    variables = if params[:variables].is_a?(String)
      JSON.parse(params[:variables])
    else
      params[:variables]
    end

    query_string = if Rails.env.production?
      # Only persisted queries in production
      nil
    else
      params[:query]
    end

    result = EventsSchema.execute(query_string, variables: variables, context: context)

    render json: result
  end
end
