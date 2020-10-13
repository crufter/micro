# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/api.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "api.Endpoint" do
    optional :name, :string, 1
    repeated :host, :string, 2
    repeated :path, :string, 3
    repeated :method, :string, 4
    optional :stream, :bool, 5
  end
  add_message "api.EmptyResponse" do
  end
  add_message "api.Pair" do
    optional :key, :string, 1
    repeated :values, :string, 2
  end
  add_message "api.Request" do
    optional :method, :string, 1
    optional :path, :string, 2
    map :header, :string, :message, 3, "api.Pair"
    map :get, :string, :message, 4, "api.Pair"
    map :post, :string, :message, 5, "api.Pair"
    optional :body, :string, 6
    optional :url, :string, 7
  end
  add_message "api.Response" do
    optional :statusCode, :int32, 1
    map :header, :string, :message, 2, "api.Pair"
    optional :body, :string, 3
  end
  add_message "api.Event" do
    optional :name, :string, 1
    optional :id, :string, 2
    optional :timestamp, :int64, 3
    map :header, :string, :message, 4, "api.Pair"
    optional :data, :string, 5
  end
end

module Api
  Endpoint = Google::Protobuf::DescriptorPool.generated_pool.lookup("api.Endpoint").msgclass
  EmptyResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("api.EmptyResponse").msgclass
  Pair = Google::Protobuf::DescriptorPool.generated_pool.lookup("api.Pair").msgclass
  Request = Google::Protobuf::DescriptorPool.generated_pool.lookup("api.Request").msgclass
  Response = Google::Protobuf::DescriptorPool.generated_pool.lookup("api.Response").msgclass
  Event = Google::Protobuf::DescriptorPool.generated_pool.lookup("api.Event").msgclass
end