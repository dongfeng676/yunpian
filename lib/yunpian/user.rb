class Yunpian::User
  #获取用户信息
  def self.get_user(apikey)
    url = "https://sms.yunpian.com/v1/user/get.json"
    uri = URI(url)
    response = Net::HTTP.post_form(uri, 'apikey' => apikey)
    response = JSON.parse(response.body)
  end

  #设置用户信息
  def self.modify_user(apikey,emergency_contact=nil,emergency_mobile=nil,alarm_balance=nil)
    url = "https://sms.yunpian.com/v1/user/set.json"
    uri = URI(url)
    #这里没有进行nil的判断，所以必须三个参数都传入才行
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"emergency_contact"=>emergency_contact,"emergency_mobile"=>emergency_mobile,"alarm_balance"=>alarm_balance)
    response = JSON.parse(response.body)
  end
end
require 'net/http'
require 'json'