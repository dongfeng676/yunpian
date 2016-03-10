module Yunpian
  def self.send(apikey,mobile,text)
    url = "https://sms.yunpian.com/v1/sms/send.json"
    uri = URI(url)
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"mobile" => mobile,"text"=>text)
    response = JSON.parse(response.body)
  end

  def self.get(apikey,start_time,end_time)
    url = "https://sms.yunpian.com/v1/sms/get.json"
    uri = URI(url)
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"start_time" => start_time,"end_time"=>end_time)
    response = JSON.parse(response.body)
  end

  def self.count(apikey,start_time,end_time)
    url = "https://sms.yunpian.com/v1/sms/count.json"
    uri = URI(url)
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"start_time" => start_time,"end_time"=>end_time)
    response = JSON.parse(response.body)
  end
end
require 'yunpian/user'
require 'yunpian/template'