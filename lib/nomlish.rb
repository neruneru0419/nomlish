require_relative "nomlish/version"
require "mechanize"
module Nomlish
  def self.translate(text, level = 2, option = "normal")
    nomlish_url = 'https://racing-lagoon.info/nomu/translate.php'
    agent = Mechanize.new
    page = agent.get(nomlish_url)
    form = page.forms[0]
    form.field_with(:name=>"before").value = text
    form.field_with(:name=>"level").value = set_level(level)
    form.field_with(:name=>"options").value = set_auto_completion(option)
    button = form.button_with(name: 'transbtn')
    
    result_form = agent.submit(form, button)
    result_form.forms[0].field_with(:name=>"after1").value.gsub(/[\r\n]/,"")
  end

  def self.set_level(level)
    0 < level && level < 6 ? level : 2
  end

  def self.set_auto_completion(option)
    case option
    when "normal" then #普通に翻訳
      "nochk"
    when "without" then #自動補完を使わず翻訳
      "p0chk"
    when "only" then #自動補完のみで翻訳
      "p100chk"
    else
      "nochk"
    end
  end

  private_class_method :set_level
  private_class_method :set_auto_completion

end
