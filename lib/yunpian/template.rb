class Yunpian::Template
  #获取模板信息
  def self.get_template(apikey,tpl_id)
    url = "https://sms.yunpian.com/v1/tpl/get.json"
    uri = URI(url)
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"tpl_id" => tpl_id)
    response = JSON.parse(response.body)
  end

  #添加模板信息
  def self.add_template(apikey,tpl_content,notify_type=0)
    url = "https://sms.yunpian.com/v1/tpl/add.json"
    uri = URI(url)
    #这里没有进行nil的判断，所以必须三个参数都传入才行
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"tpl_content"=>tpl_content,"notify_type"=>notify_type)
    response = JSON.parse(response.body)
  end

  #修改模板信息
  def self.add_template(apikey,tpl_id,tpl_content)
    url = "https://sms.yunpian.com/v1/tpl/update.json"
    uri = URI(url)
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"tpl_id"=>tpl_id,"tpl_content"=>tpl_content)
    response = JSON.parse(response.body)
  end

  #修改模板信息
  def self.destroy_template(apikey,tpl_id)
    url = "https://sms.yunpian.com/v1/tpl/del.json"
    uri = URI(url)
    response = Net::HTTP.post_form(uri, 'apikey' => apikey,"tpl_id"=>tpl_id)
    response = JSON.parse(response.body)
  end
end
require 'net/http'
require 'json'